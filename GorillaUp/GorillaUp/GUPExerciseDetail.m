//
//  GUPExerciseDetail.m
//  GorillaUp
//
//  Created by Esteban Gomez on 2/9/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import "GUPExerciseDetail.h"

@interface GUPExerciseDetail ()

@end

@implementation GUPExerciseDetail

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for (UIView *labelView in self.view.subviews) {
        
        if ([labelView isKindOfClass:[UILabel class]]) {
            NSString *mystr = labelView.restorationIdentifier;
            
            if([mystr isEqualToString:@"ex_title"]){
                ((UILabel*) labelView).text = self.exDisplayed.name;
            }
            else if ([mystr isEqualToString:@"set_goal"]){
                ((UILabel*) labelView).text = [NSString stringWithFormat:@"%d",self.exDisplayed.numSets];
            }else if ([mystr isEqualToString:@"weight_goal"]){
                ((UILabel*) labelView).text = [NSString stringWithFormat:@"%d",self.exDisplayed.weight];
            }else if ([mystr isEqualToString:@"rep_goal"]){
                ((UILabel*) labelView).text = [NSString stringWithFormat:@"%d",self.exDisplayed.numReps];
            }else if ([mystr isEqualToString:@"rest_goal"]){
                ((UILabel*) labelView).text = [NSString stringWithFormat:@"%d",self.exDisplayed.restTime];
            }
        }
    }
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
