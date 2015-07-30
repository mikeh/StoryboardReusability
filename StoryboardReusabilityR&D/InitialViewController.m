//
//  InitialViewController.m
//  StoryboardReusabilityR&D
//
//  Created by Silviu Odobescu on 29/07/15.
//  Copyright (c) 2015 Silviu Odobescu. All rights reserved.
//

#import "InitialViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

- (IBAction)firstButtonTapped:(id)sender
{
    ViewController *vc = [[FirstViewController alloc] initWithNibName:@"ViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)secondButtonTapped:(id)sender
{
    SecondViewController *vc = [[SecondViewController alloc] initWithNibName:@"ViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
