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
    
    // 设置进入下一界面的按钮
    self.view.backgroundColor = [UIColor greenColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // 这里的self 的navigationController和delegate里的是同一个bar
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbar_background.png"] forBarMetrics:UIBarMetricsDefault];
    //    NSLog(@"navigationController:%@", self.navigationController);
    // 设置不透明
    self.navigationController.navigationBar.translucent = NO;

    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    // 设置单独的左边的按钮
    //    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:myButton];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(bookMark)];
  
    // 设置左边的按钮组
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc]initWithCustomView:myButton];
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:  buttonItem,item, nil];
    
    // 设置右边的按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"123" style:UIBarButtonItemStyleBordered target:self action:@selector(bookMark)];
    
    //    navigationItem组成了bar
    // 设置NavigationBar
    // 为什么这个navigationItem就刚好是中间那个呢，不是左边也不是右边？
    self.title = @"首页";
    NSLog(@"navigationTitile 是:%@", self.navigationItem.title);
    self.navigationItem.title = @"会冲突";

    UILabel *lable = [[UILabel alloc]init];
    lable.text = @"我是Lable";
    lable.frame = CGRectMake(0, 0, 80, 44);
    self.navigationItem.titleView = lable;
    
    
}

- (void) bookMark
{
    NSLog(@"bookMark");
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
