//
//  ViewController.m
//  Stream
//
//  Created by Ivan Babich on 25.05.15.
//  Copyright (c) 2015 Ivan Babich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    @autoreleasepool {
        [self performSelectorInBackground:@selector(method) withObject:nil];
    }
    NSThread * thread = [[NSThread alloc]initWithTarget:self selector:@selector(secondMethod) object:nil];
    [thread start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) method {
    for (int i = 0; i < 5000; i++) {
        NSLog(@"%i",i);
    }
}

-(void) secondMethod {
    for (int i = 0; i < 5000; i++) {
        NSLog(@"%i",i);
    }
}
@end
