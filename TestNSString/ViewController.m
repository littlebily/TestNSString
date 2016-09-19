//
//  ViewController.m
//  TestNSString
//
//  Created by Bolu on 16/9/19.
//  Copyright © 2016年 Bolu. All rights reserved.
//

#import "ViewController.h"
#import "StringEx.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //这里会crash，StringEx类没有initWithFormat这个方法
//    StringEx* str = [[StringEx alloc] initWithFormat:@"%d",123];
//    [str myFunc];
    
    NSString *str = [[NSString alloc] initWithFormat:@"qwe"];
    NSLog(@"str--%@",[str class]);//NSTaggedPointerString
    
    str = @"ddd";
    NSLog(@"str--%@",[str class]);//__NSCFConstantString

    str = [[NSString alloc] initWithString:@"ee"];//__NSCFConstantString
    NSLog(@"str--%@",[str class]);

    str = [[NSString alloc] initWithCString:"2" encoding:NSUTF8StringEncoding];
    NSLog(@"str--%@",[str class]);//NSTaggedPointerString

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
