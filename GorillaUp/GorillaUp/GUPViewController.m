//
//  GUPViewController.m
//  GorillaUp
//
//  Created by Esteban Gomez on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import "GUPViewController.h"
#import "GUPTableViewController.h"

@interface GUPViewController ()

@end

@implementation GUPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (self.bank == nil)
    {
        self.bank = [[GUPBank alloc] init];
    }


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"craftPush"] || [segue.identifier isEqualToString:@"doPush"] ) {
        GUPTableViewController * viewController = segue.destinationViewController;
        [viewController setBank: self.bank];
    }
}

@end
