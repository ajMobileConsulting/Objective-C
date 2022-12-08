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
    [self configureLayoutConstraints];
    [self createButton:@"9"];
}

-(void)createButton:(NSString*)string {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom]; // create button
    [button addTarget:self action:@selector(buttonMethod) forControlEvents:UIControlEventTouchUpInside]; // add action to the button
    [button setTitle:string forState:UIControlStateNormal]; // assign title to button
    [self.view addSubview:button]; // add button to subview
    button.translatesAutoresizingMaskIntoConstraints = NO; // disable autoresizing
    button.backgroundColor = [UIColor blueColor]; // assign background color
    
    NSLayoutConstraint *ButtonTopConstraint = [button.topAnchor constraintGreaterThanOrEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:100]; // create the topAnchor constraint
    
    NSLayoutConstraint *ButtonBottomConstraint = [button.bottomAnchor constraintEqualToAnchor:_operationResult.topAnchor constant:-50]; // create the bottomAnchor constraint
    
    NSLayoutConstraint *ButtonTLeadingConstraint = [button.leadingAnchor  constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:20]; // create the leadingAnchor constraint
    
    NSLayoutConstraint *ButtonWidthConstraint = [ NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:(self.view.frame.size.width/5)]; // create the widthAnchor constraint
    NSLog(@"self.view.frame.width - %f", self.view.frame.size.width);
    NSLayoutConstraint *ButtonHeightConstraint = [ NSLayoutConstraint
                                                   constraintWithItem:button
                                                   attribute:NSLayoutAttributeHeight
                                                   relatedBy:NSLayoutRelationEqual
                                                   toItem:nil
                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                   multiplier:1.0
                                                   constant:(self.view.frame.size.height/8)]; // create the heightAnchor constraint
    
    
    NSArray *constraintsArray = @[ ButtonTopConstraint, ButtonBottomConstraint, ButtonTLeadingConstraint, ButtonWidthConstraint, ButtonHeightConstraint ];
    
    [self.view addConstraints:constraintsArray];
}

-(void) buttonMethod {
    NSLog(@"Button Tapped");
}

- (void)configureLayoutConstraints{
    _operationResult = [
        [UILabel alloc]
        initWithFrame:CGRectMake(0, 0, 200, 44)
    ];
    NSString *answer = [self
                        preformOperation:OperationAddition
                        withValue:5 andValue:9];
    
    _operationResult.text = [NSString stringWithFormat:@"%@",answer];
    _operationResult.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:_operationResult];
    NSLayoutConstraint *ConstraintLabelCenterX = [ NSLayoutConstraint
                                                   constraintWithItem:_operationResult
                                                   attribute:NSLayoutAttributeCenterX
                                                   relatedBy:NSLayoutRelationEqual
                                                   toItem:self.view
                                                   attribute:NSLayoutAttributeCenterX
                                                   multiplier:1.0 constant:0 ];
    
    NSLayoutConstraint *ConstraintLabelCenterY = [ NSLayoutConstraint
                                                   constraintWithItem:_operationResult
                                                   attribute:NSLayoutAttributeCenterY
                                                   relatedBy:NSLayoutRelationEqual
                                                   toItem:self.view
                                                   attribute:NSLayoutAttributeCenterY
                                                   multiplier:1.0
                                                   constant:0 ];
    
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
