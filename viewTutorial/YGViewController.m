//
//  YGViewController.m
//  viewTutorial
//
//  Created by Yaxi Gao on 9/10/14.
//  Copyright (c) 2014 Yaxi Gao. All rights reserved.
//

#import "YGGrid.h"
#import "YGViewController.h"

@interface YGViewController () {
    UIView* _gridView;
    UIButton* _button;
}

@end

@implementation YGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // create grid frame
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    // create grid view
    _gridView = [[YGGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    // create button
    CGFloat buttonSize = size / 5.0;
    CGRect buttonFrame = CGRectMake(0, 0, buttonSize, buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    [_gridView addSubview:_button];
    
    // create target for button
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
    NSLog(@"You Pressed the button!");
}

@end
