//
//  FirstViewController.m
//  UINavigationController
//
//  Created by Louis on 14-7-9.
//  Copyright (c) 2014年 Louis. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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
    self.title = @"首页";
    
    self.view.backgroundColor = [UIColor greenColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void) click
{
    // 每个controller都有一个navigationcontroller,也就是说如果他爸是navigationcontroller，那么他就有这个变量来保存他爸
    NSLog(@"%@", self.navigationController);
    
    // 转到下一个页面
    SecondViewController *second = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:second animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
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
