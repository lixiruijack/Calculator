//
//  ViewController.m
//  MagicCalculator
//
//  Created by Jack Li on 12/24/15.
//  Copyright © 2015 Jack Li. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (CalculatorModel *)model
{
    if (!model) model = [[CalculatorModel alloc] init];
    return model;
}

-(IBAction)digitPressed:(NSButton*)sender
{
    if(inTheMiddleOfTyping == NO)
        output.stringValue = [output.stringValue stringByAppendingString:sender.title];
    else
    {
        [output setStringValue:sender.title];
        inTheMiddleOfTyping = YES;
    }
}

- (IBAction)decimalPressed: (NSButton *)sender
{
    if (decimalAlreadyEntered == NO)
    {
        if (inTheMiddleOfTyping == NO)
        {
            inTheMiddleOfTyping = YES;
            [output setStringValue:@"0."];
        }
        else
        {
            [output setStringValue:[[output stringValue] stringByAppendingString:@"."]];
        }
        decimalAlreadyEntered = YES;
    }
    
}

- (IBAction)clearCalculator
{
    [output setStringValue:@"0"];
}


- (IBAction)operationPressed: (NSButton *)sender
{
    if (inTheMiddleOfTyping) {
        [[self model] setOperand:[[output stringValue] doubleValue]];
        inTheMiddleOfTyping = NO;
        decimalAlreadyEntered = NO;
    }
    NSString *operation = [sender stringValue];
    double result = [[self model] performOperation:operation];
    [output setStringValue:[NSString stringWithFormat:@"%g", result]];
}

@end
