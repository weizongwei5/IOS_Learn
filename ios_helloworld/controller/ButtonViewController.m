//
//  ViewController.m
//  ios_helloworld
//
//  Created by wei on 2017/3/27.
//  Copyright © 2017年 wei. All rights reserved.
//

#import "ButtonViewController.h"

@interface ButtonViewController ()

@property(strong,nonatomic) UIButton *button;

@end

@implementation ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self  addMyBtn];
    
    [self addDetailsButton];
    [self addInfoButton];
    
}

-(void)addMyBtn
{
    self.button = [[UIButton alloc] initWithFrame:
                   (CGRectMake([[UIScreen mainScreen] bounds].size.width/3,
                               [[UIScreen mainScreen] bounds].size.height/2,
                               [[UIScreen mainScreen] bounds].size.width/4,
                               30
                               )
                    )
                   ];
    
    
    [self.button setTitle:[self getStr:@"BACK"] forState:UIControlStateNormal];
    [self.button setTitle:[self getStr:@"PRESS"] forState:UIControlStateHighlighted];
    
    
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [_button setBackgroundImage:[UIImage imageNamed:@"yellow_button.png"]  forState:UIControlStateNormal];
    [_button setBackgroundImage:[UIImage imageNamed:@"gray_button.png"]  forState:UIControlStateHighlighted];
    
    [self.view addSubview:self.button];
    [_button addTarget:self  action:@selector(clickBack:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)addDetailsButton
{
    UIButton *detailDisclosureButton = [UIButton buttonWithType:
                                        UIButtonTypeDetailDisclosure];
    [detailDisclosureButton setFrame:CGRectMake(60, 150, 200, 40)];
    [detailDisclosureButton setTitle:@"Details" forState:
     UIControlStateNormal];
    [self.view addSubview:detailDisclosureButton];

}

-(void)addInfoButton
{
    
    UIButton *infoDarkButton = [UIButton buttonWithType:
                                UIButtonTypeInfoDark];
    [infoDarkButton setFrame:CGRectMake(60, 210, 200, 40)];
    [infoDarkButton setTitle:@"info" forState:UIControlStateNormal];
    [self.view addSubview:infoDarkButton];
    
    
    [infoDarkButton addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
    
}


-(void)clickMe:(id)sender{
    [self toast:@"按钮被按下！"];
}

-(void)clickBack:(id)sender{
    [self finish];
}




-(NSString *)getTitle{
    return @"UIButton";
}


@end
