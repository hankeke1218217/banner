//
//  ViewController.m
//  图片轮播
//
//  Created by hankeke on 16/12/20.
//  Copyright © 2016年 hkk. All rights reserved.
//

#import "ViewController.h"
#import "BannerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    BannerView *banner = [[BannerView alloc] initWithFrame:CGRectMake(50, 100, 250, 300)];
    banner.isScrollDorectionPortrait = NO;
    NSMutableArray *mutableImages = [[NSMutableArray alloc] initWithCapacity:7];
    for (int i = 0; i < 7; i ++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d",i]];
        [mutableImages addObject:image];
    }
    self.view.backgroundColor = [UIColor grayColor];
    banner.images = mutableImages;
    [self.view addSubview:banner];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
