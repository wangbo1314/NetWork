//
//  ViewController.m
//  NetWork
//
//  Created by 中软mini007 on 15/10/26.
//  Copyright (c) 2015年 中软mini007. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self sendRequst:@"http://www.baidu.com"];
}


-(void)sendRequst:(NSString*)urlPath{
    NSURL* url = [[NSURL alloc] initWithString:urlPath];
    NSURLRequest* req = [[NSURLRequest alloc] initWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:20];
    UIWebView* webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    [self.view addSubview:webView];
    [webView loadRequest:req];
}
































-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

@end
