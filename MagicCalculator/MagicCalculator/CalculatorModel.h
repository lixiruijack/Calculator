//
//  CalulatorModel.h
//  MagicCalculator
//
//  Created by Jack Li on 1/26/16.
//  Copyright © 2016 Jack Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorModel : NSObject
{
    
}
-(void)setOperand:(double)operand;
-(double)performOperation:(NSString*)operation;
@end
