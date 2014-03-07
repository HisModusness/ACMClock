//
//  ACMViewController.h
//  ACMClock
//
//  Created by Liam Westby on 3/6/14.
//  Copyright (c) 2014 ACM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACMViewController : UIViewController {
    NSTimer *timer;
}
-(void)updateTime:(NSTimer *)timer;

@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@end
