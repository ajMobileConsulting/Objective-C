//
//  ViewController.m
//  Calculator
//
//  Created by Alexander Jackson on 12/5/22.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_plusMinus addTarget:self action:@selector(plusMinusTapped) forControlEvents:UIControlEventTouchUpInside];
    [_allClearButton addTarget:self action:@selector(setAllClearButton) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorAddButton addTarget:self action:@selector(addButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_subtractionButton addTarget:self action:@selector(subtractionButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_multiplicationButton addTarget:self action:@selector(multiplicationButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_divisionButton addTarget:self action:@selector(divisionButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
    [_zeroButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_oneButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_twoButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_threeButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_fourButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_fiveButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_sixButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_sevenButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_eightButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_nineButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];
    [_decimalButton addTarget:self action:@selector(numberTapped:)  forControlEvents:UIControlEventTouchUpInside];

    _answer = [[NSMutableString alloc]init];
}

- (NSString *)add:(NSString *)firstNumber withValue:(NSString *)secondNumber {
    NSInteger evaluation = firstNumber.integerValue + secondNumber.integerValue;
    _answer = [NSMutableString stringWithFormat:@"%ld", (long)evaluation];
    return _answer;
}

-(void)numberTapped:(UIButton *)sender {
    NSLog(@"%@", sender.titleLabel.text);
    [_answer appendString:sender.titleLabel.text];
    _displayAnswer.text = _answer;
}

-(void)addButtonTapped {
    NSLog(@"add button tapped");
    [_answer appendString:@" + "];
    _displayAnswer.text = _answer;
    NSLog(@"%@", _answer);
}

-(void)subtractionButtonTapped {
    [_answer appendString:@" - "];
    _displayAnswer.text = _answer;
}

-(void)multiplicationButtonTapped {
    [_answer appendString:@" * "];
    _displayAnswer.text = _answer;
}

-(void)divisionButtonTapped {
    [_answer appendString:@" ÷ "];
    _displayAnswer.text = _answer;
}

-(void)plusMinusTapped {
    if (![_answer containsString:@"−+÷*"]) {
        if (_answer.integerValue > 0) {
            NSLog(@"Positive");
            [_answer insertString:@"-" atIndex:0];    _displayAnswer.text = _answer;

        } else {
            NSLog(@"Negative");
            [_answer replaceOccurrencesOfString:@"-" withString:@"" options:0 range:NSMakeRange(0, _answer.length)];
            _displayAnswer.text = _answer;

        }
    }
}

-(void)setAllClearButton {
    [_answer setString:@""];
    _displayAnswer.text = _answer;
    NSLog(@"ALL CLEAR");
}

@end
