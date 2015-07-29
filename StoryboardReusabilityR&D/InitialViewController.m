//
//  InitialViewController.m
//  StoryboardReusabilityR&D
//
//  Created by Silviu Odobescu on 29/07/15.
//  Copyright (c) 2015 Silviu Odobescu. All rights reserved.
//

#import "InitialViewController.h"
#import "ViewController.h"
#import "SecondViewController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)firstButtonTapped:(id)sender
{
    ViewController *vc = [[ViewController alloc] initWithNibName:@"ViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)secondButtonTapped:(id)sender
{
    SecondViewController *vc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
