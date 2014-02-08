//
//  GUPViewController.m
//  GorillaUp
//
//  Created by Esteban Gomez on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import "GUPViewController.h"

@interface GUPViewController ()

@end

@implementation GUPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"craftPush"] ) {
        UITableViewController *viewController = segue.destinationViewController;
        //viewController.bank = self.ank;
    }
}

@end
