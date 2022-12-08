//
//  ViewController.m
//  Calculator
//
//  Created by Alexander Jackson on 12/5/22.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@implementation ViewController

typedef NS_ENUM(NSInteger, Operation) {
    OperationAddition,
    OperationSubtraction,
    OperationMultiplication,
    OperationDivision,
};

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *answer = [self
                        preformOperation:OperationAddition
                        withValue:5 andValue:9];
    
    
    
}

- (void)configureLayoutConstraints{
    _operationResult = [
        [UILabel alloc]
        initWithFrame:CGRectMake(0, 0, 200, 44)
    ];
    _operationResult.text = [NSString stringWithFormat:@"%@",_displayResult];
    _operationResult.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:_operationResult];
    NSLayoutConstraint *ConstraintLabelCenterX = [ NSLayoutConstraint
                                                   constraintWithItem:_operationResult
                                                   attribute:NSLayoutAttributeCenterX
                                                   relatedBy:NSLayoutRelationEqual
                                                   toItem:self.view
                                                   attribute:NSLayoutAttributeCenterX
                                                   multiplier:1.0 constant:0];
    NSLayoutConstraint *ConstraintLabelCenterY = [ NSLayoutConstraint
                                                   constraintWithItem:_operationResult
                                                   attribute:NSLayoutAttributeCenterY
                                                   relatedBy:NSLayoutRelationEqual
                                                   toItem:self.view
                                                   attribute:NSLayoutAttributeCenterY
                                                   multiplier:1.0
                                                   constant:0];
    NSArray *constraintsArray = @[ ConstraintLabelCenterY,
                                   ConstraintLabelCenterX ];
    [self.view addConstraints:constraintsArray];
}

- (NSString *)preformOperation:(Operation)function withValue:(NSInteger)x andValue:(NSInteger)y {
    NSInteger OperationEvaluation;
    NSString *OperationString;
    
    switch(function) {
        case OperationAddition:
            OperationEvaluation = x + y;
            OperationString = [NSString
                               stringWithFormat: @"%ld + %ld = %ld",
                               (long)x,
                               (long)y,
                               (long)OperationEvaluation];
            return OperationString;
            break;
            
        case OperationSubtraction:
            OperationEvaluation = x - y;
            OperationString = [NSString
                               stringWithFormat: @"%ld - %ld = %ld",
                               (long)x,
                               (long)y,
                               (long)OperationEvaluation];
            return OperationString;
            break;
            
        case OperationMultiplication:
            OperationEvaluation = x * y;
            OperationString = [NSString
                               stringWithFormat: @"%ld * %ld = %ld",
                               (long)x,
                               (long)y,
                               (long)OperationEvaluation];
            return OperationString;
            break;
            
        case OperationDivision:
            OperationEvaluation = x / y;
            OperationString = [NSString
                               stringWithFormat: @"%ld / %ld = %ld",
                               (long)x,
                               (long)y,
                               (long)OperationEvaluation];
            return OperationString;
            break;
    }
    
    return @"";
}

@end
