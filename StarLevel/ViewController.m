//
//  ViewController.m
//  StarLevel
//
//  Created by 彭作青 on 2016/11/11.
//  Copyright © 2016年 myself. All rights reserved.
//

#import "ViewController.h"
#import "PZQStarLevelView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PZQStarLevelView *statView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _statView.score = 4;;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
