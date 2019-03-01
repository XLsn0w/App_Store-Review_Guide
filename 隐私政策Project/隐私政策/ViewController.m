//
//  ViewController.m
//  隐私政策
//
//  Created by TimeForest on 2018/10/5.
//  Copyright © 2018年 TimeForest. All rights reserved.
//

#import "ViewController.h"
#import <SafariServices/SafariServices.h>

@interface ViewController () <SFSafariViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)push:(id)sender {
    //   输入项目的隐私政策的 URL
    SFSafariViewController *sfVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:@"https://map.baidu.com/zt/client/privacy/index.html"]];
    sfVC.delegate = self;
    [self presentViewController:sfVC animated:YES completion:nil];
}

#  pragma mark - SFSafariViewControllerDelegate -
- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    NSLog(@"点击done");
}

@end
