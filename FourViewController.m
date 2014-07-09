//
//  FourViewController.m
//  UINavigationController
//
//  Created by Louis on 14-7-9.
//  Copyright (c) 2014年 Louis. All rights reserved.
//

#import "FourViewController.h"
#import "SecondViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"第四页";
    self.view.backgroundColor = [UIColor grayColor];
    
    // 1. 回到首页按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"回到首页" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(gobackToHome) forControlEvents:UIControlEventTouchUpInside];
    
    // 2. 回到上一页按钮
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTitle:@"回到上一页" forState:UIControlStateNormal];
    btn2.frame = CGRectMake(100, 250, 100, 100);
    [btn2 addTarget:self action:@selector(gobacklastPage) forControlEvents:UIControlEventTouchUpInside];
    
    // 3. 回到任意一页按钮
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3 setTitle:@"回到任意一页" forState:UIControlStateNormal];
    btn3.frame = CGRectMake(100, 350, 100, 100);
    [btn3 addTarget:self action:@selector(gobackToAnyPage) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
     [self.view addSubview:btn2];
     [self.view addSubview:btn3];
}

- (void) gobackToHome
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void) gobacklastPage
{
    [self.navigationController popViewControllerAnimated:YES];
}

// 回到第二页
- (void) gobackToAnyPage
{
    SecondViewController *seconVC = (SecondViewController *)self.navigationController.viewControllers[1] ;
    NSLog(@"--回到第二页前的堆栈:%@", self.navigationController.viewControllers);
    [self.navigationController popToViewController:seconVC animated:YES];
    NSLog(@"++回到第二页后的堆栈:%@", self.navigationController.viewControllers);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
