//
//  GUPRoutineAddController.m
//  GorillaUp
//
//  Created by Aaron Kawer on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import "GUPRoutineAddController.h"

@interface GUPRoutineAddController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation GUPRoutineAddController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [super prepareForSegue: segue sender:sender];
    if (sender != self.doneButton) return;
    NSString * formText = self.textField.text;
    if (formText.length > 0){
        GUPRoutine *newRoutine = [[GUPRoutine alloc] initWithOnlyTitle: formText];
        
    }
}

@end

