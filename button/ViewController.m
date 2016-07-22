//
//  ViewController.m
//  button
//
//  Created by lizq on 16/7/4.
//  Copyright © 2016年 zqLee. All rights reserved.
//

#import "ViewController.h"
#import "LQButton.h"
#import "LQTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    LQButton *button = [LQButton buttonWithType:UIButtonTypeCustom];
    button.imageViewOffsetY = 20;
    button.spaceToImageView = 10;
    button.imageViewSize = CGSizeMake(30, 30);
    button.frame = CGRectMake(100, 100, 100, 100);
    [button setTitle:@"QQ" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    button.titleLabel.font = [UIFont systemFontOfSize:10];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"icon_64_qq"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];


    LQTextField *textField = [[LQTextField alloc] initWithFrame:CGRectMake(100, 260, 100, 40)];
    textField.backgroundColor = [UIColor lightGrayColor];
    textField.placeholder = @"手机号码";
    textField.text = @"测试测试";
    textField.placeholderColor = [UIColor redColor];
    textField.placeholderFont = [UIFont systemFontOfSize:17];
    textField.spaceToLeft = 10;
    textField.textAlignment = NSTextAlignmentLeft;
    textField.textColor = [UIColor blackColor];
    textField.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:textField];



    // Do any additional setup after loading the view.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)buttonClick:(UIButton*)button {

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
