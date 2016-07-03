//
//  ViewController.m
//  iOS-RoundNumber
//
//  Created by colin on 16/7/3.
//  Copyright © 2016年 CHwang. All rights reserved.
//

#import "ViewController.h"

#import "NSDecimalNumber+RoundNumber.h"
#import "NSString+ShowRoundNumber.h"

@interface ViewController () 

@property (nonatomic, weak) UILabel *label;
@property (nonatomic, weak) UITextField *textField;
@property (nonatomic, weak) UIButton *button;


@end

@implementation ViewController

- (UILabel *)label
{
    if (!_label)
    {
        UILabel *label = [UILabel new];
        
        [label setBackgroundColor:[UIColor lightGrayColor]];
        [label setTextColor:[UIColor whiteColor]];
        [label setTextAlignment:NSTextAlignmentCenter];
        
        [self.view addSubview:label];
        self.label = label;
    }
    return _label;
}

- (UITextField *)textField
{
    if (!_textField)
    {
        UITextField *textField = [UITextField new];
        
        [textField setBorderStyle:UITextBorderStyleLine];
        [textField setKeyboardType:UIKeyboardTypeDecimalPad];
        [textField setTextAlignment:NSTextAlignmentCenter];
        textField.text = @"1.399";
        
        [self.view addSubview:textField];
        self.textField = textField;
    }
    return _textField;
}

- (UIButton *)button
{
    if (!_button)
    {
        if (!_button)
        {
            UIButton *button = [UIButton new];
            
            [button setBackgroundColor:[UIColor cyanColor]];
            [button setTitle:@"Round" forState:UIControlStateNormal];
            [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
            [button addTarget:self action:@selector(roundNumber) forControlEvents:UIControlEventTouchUpInside];
            
            [self.view addSubview:button];
            self.button = button;
        }
    }
    return _button;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    self.label.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 44);
    
    self.textField.frame = CGRectMake(0, CGRectGetMaxY(self.label.frame)+10, [UIScreen mainScreen].bounds.size.width, 44);
    
    self.button.frame = CGRectMake(0, CGRectGetMaxY(self.textField.frame)+10, [UIScreen mainScreen].bounds.size.width, 44);
}

- (void)roundNumber
{
    [self.textField resignFirstResponder];
    
    float value = [self.textField.text floatValue];
    
    NSString *numberString = nil;
    
    numberString = [NSString stringFromFloat:value roundingScale:2 fractionDigitsPadded:YES];
//    numberString = [NSString stringFromFloat:value roundingScale:2 roundingMode:NSRoundDown fractionDigitsPadded:YES];
//    numberString = [NSString stringFromFloat:value roundingScale:2 roundingMode:NSRoundDown fractionDigits:3];
    
//    NSDecimalNumber *number = [NSDecimalNumber decimalNumberWithFloat:value roundingScale:2];
//    numberString = [NSString stringFromNumber:number fractionDigits:3];
    
    [self.label setText:numberString];
}

@end
