//
//  ACMViewController.m
//  ACMClock
//
//  Created by Liam Westby on 3/6/14.
//  Copyright (c) 2014 ACM. All rights reserved.
//

#import "ACMViewController.h"

@interface ACMViewController ()

@end

@implementation ACMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateTime:nil];
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime:) userInfo:nil repeats:YES];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateTime:(NSTimer *)timer {
    NSDateFormatter *timeFormatter = [[NSDateFormatter alloc] init];
    [timeFormatter setTimeStyle:NSDateFormatterMediumStyle];
    [timeFormatter setAMSymbol:@"am"];
    [timeFormatter setPMSymbol:@"pm"];
    [timeFormatter setDateStyle:NSDateFormatterNoStyle];
    
    [[self timeLabel] setText:[timeFormatter stringFromDate:[NSDate date]]];
}

@end
