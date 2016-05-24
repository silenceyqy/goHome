//
//  ViewController.m
//  goHome
//
//  Created by lkty on 16/5/24.
//  Copyright © 2016年 杨青云. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *dataBasePath;
}
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    _bgImageView.frame = [UIScreen mainScreen].bounds;
    
    _phoneTextField.clearButtonMode = UITextFieldViewModeAlways;
    _passwordTextField.clearButtonMode = UITextFieldViewModeAlways;
    
 //   dataBasePath = @"/Users/lkty/Desktop/毕业设计12级网工本1杨青云/fmdbSQL/DataBase.db";
    
}

-(void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    //    [super viewWillAppear:animated];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registerButton:(UIButton *)sender
{
    
}

- (BOOL)isValidateMobile:(NSString *)mobile
{
    //手机号以13、15、18开头，八个\d数字字符
    NSString *phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [phoneTest evaluateWithObject:mobile];
}
- (IBAction)loginButton:(UIButton *)sender
{
    
    //FMDatabase *db = [FMDatabase databaseWithPath:dataBasePath];
    
    if ([_phoneTextField.text length] == 0)
    {
        UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"提示" message:@"请输入手机号或密码" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"你点击了确认按钮");
        }];
        //提示框动作添加到提示框上
        [alert1 addAction:sureAction];
        //将提示框展示出来
        [self presentViewController:alert1 animated:YES completion:^{
            NSLog(@"结束对话框");
        }];
    }else if ([self isValidateMobile:_phoneTextField.text] == NO )
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"请输入正确的手机号" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"你点击了确认按钮");
        }];
        //提示框动作添加到提示框上
        [alert addAction:sureAction];
        //将提示框展示出来
        [self presentViewController:alert animated:YES completion:^{
            NSLog(@"结束对话框");
        }];
    }
//   else if([db open])
//    {
//        NSString *sql = @"select * from user";
//        FMResultSet *result = [db executeQuery:sql];
//        
//        while ([result next])
//        {
//            if (![_phoneTextField.text isEqualToString:[result stringForColumn:@"name"]])
//            {
//                UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"此手机号没有注册" preferredStyle:UIAlertControllerStyleAlert];
//                UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//                    NSLog(@"你点击了确认按钮");
//                }];
//                //提示框动作添加到提示框上
//                [alert addAction:sureAction];
//                //将提示框展示出来
//                [self presentViewController:alert animated:YES completion:^{
//                    NSLog(@"结束对话框");
//                }];
//                
//            }
//            else  if ([_phoneTextField.text isEqualToString:[result stringForColumn:@"name"]]&&[_passwordTextField.text isEqualToString:[result stringForColumn:@"password"]])
//            {
//                UITabBarViewC *shouye = [self.storyboard instantiateViewControllerWithIdentifier:@"UITabBarViewC"];
//                //在 push到该页面之前隐藏它的 backbutton 才会生效
//                shouye.navigationItem.hidesBackButton = YES;
//                [self.navigationController pushViewController:shouye animated:YES];
//                
//            }
//            
//            
//        }
//    }
    
    
    
    
}

@end
