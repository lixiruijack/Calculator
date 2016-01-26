//
//  ViewController.h
//  MagicCalculator
//
//  Created by Jack Li on 12/24/15.
//  Copyright © 2015 Jack Li. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CalculatorModel.h"

@interface ViewController : NSViewController
{
    IBOutlet NSTextField* output;
    CalculatorModel* model;
    BOOL inTheMiddleOfTyping;
    BOOL decimalAlreadyEntered;
}
@end

