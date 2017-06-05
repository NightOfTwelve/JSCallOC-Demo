//
//  ViewController.m
//  JSOC
//
//  Created by 郜宇 on 2017/6/5.
//  Copyright © 2017年 Loopeer. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "IOS.h"
@interface ViewController () <UIWebViewDelegate, JSExport>

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    webView.delegate = self;
    webView.backgroundColor = [UIColor redColor];
    
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"js" ofType:@"html"];
    NSString *htmlString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    [webView loadHTMLString:htmlString baseURL:nil];
    
    [self.view addSubview:webView];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    JSContext *contest = [webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    //    contest[@"test"] = ^(){
    //        NSLog(@"__________test");
    //
    //    };
    IOS *ios=[IOS new];
    contest[@"IOS"]=ios;
}


@end
