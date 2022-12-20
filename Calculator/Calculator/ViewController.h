//
//  ViewController.h
//  Calculator
//
//  Created by Alexander Jackson on 12/5/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *calculatorAddButton;
@property (strong, nonatomic) IBOutlet UIButton *plusMinus;
@property (strong, nonatomic) IBOutlet UIButton *allClearButton;
@property (strong, nonatomic) IBOutlet UIButton *percentButton;
@property (strong, nonatomic) IBOutlet UIButton *divisionButton;
@property (strong, nonatomic) IBOutlet UIButton *multiplicationButton;
@property (strong, nonatomic) IBOutlet UIButton *subtractionButton;
@property (strong, nonatomic) IBOutlet UIButton *evalutionButton;


@property (strong, nonatomic) IBOutlet UILabel *displayAnswer;

@property (strong, nonatomic) IBOutlet UIButton *zeroButton;
@property (strong, nonatomic) IBOutlet UIButton *oneButton;
@property (strong, nonatomic) IBOutlet UIButton *twoButton;
@property (strong, nonatomic) IBOutlet UIButton *threeButton;
@property (strong, nonatomic) IBOutlet UIButton *fourButton;
@property (strong, nonatomic) IBOutlet UIButton *fiveButton;
@property (strong, nonatomic) IBOutlet UIButton *sixButton;
@property (strong, nonatomic) IBOutlet UIButton *sevenButton;
@property (strong, nonatomic) IBOutlet UIButton *eightButton;
@property (strong, nonatomic) IBOutlet UIButton *nineButton;
@property (strong, nonatomic) IBOutlet UIButton *decimalButton;


@property (strong, nonatomic) NSMutableString *answer;

-(NSString *)add:(NSString*)firstNumber withValue:(NSString*)secondNumber;
@end


