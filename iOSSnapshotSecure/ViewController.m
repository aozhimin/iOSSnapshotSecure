//
//  ViewController.m
//  iOSSnapshotSecure
//
//  Created by dev-aozhimin on 17/2/4.
//  Copyright © 2017年 aozhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nPasswordTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nPasswordTextField.leftViewMode = UITextFieldViewModeAlways;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchValueChanged:(UISwitch *)sender {
    NSString *passStr = self.nPasswordTextField.text;//切换的时候记录之前的密码
    self.nPasswordTextField.text = @"";
    self.nPasswordTextField.text = passStr;//切换完成赋值
    self.nPasswordTextField.secureTextEntry = sender.isOn;
}
@end
