//
//  ViewController.h
//  goHome
//
//  Created by lkty on 16/5/24.
//  Copyright © 2016年 杨青云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>



@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;
@property (weak, nonatomic) IBOutlet UIView *contentView;

@property (weak, nonatomic) IBOutlet UIImageView *welcomImageView;

@property (weak, nonatomic) IBOutlet UIView *phoneView;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;

@property (weak, nonatomic) IBOutlet UIView *passwordView;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)registerButton:(UIButton *)sender;
- (IBAction)loginButton:(UIButton *)sender;

@end

