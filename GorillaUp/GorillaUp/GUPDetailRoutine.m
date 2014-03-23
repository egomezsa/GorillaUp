//
//  GUPDetailRoutine.m
//  GorillaUp
//
//  Created by Esteban Gomez on 2/9/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import "GUPDetailRoutine.h"
#import "GUPExerciseDetail.h"

@interface GUPDetailRoutine ()
@property NSMutableArray * exercises_names;
@end

@implementation GUPDetailRoutine

- (id) init{
    
    self = [super init];
    if(self){

    }
    return self;
    
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.exercises_names = [[NSMutableArray alloc] init];
    int numb_exercises = [self.routineDisplayed.exercises count];
    
    for (int i = 0 ; i < numb_exercises ; i++){
        GUPExercise *ge = [self.routineDisplayed.exercises objectAtIndex:i];
        [self.exercises_names addObject: ge.name];
    }
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"ExerCell"];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.bank.routines count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSLog(@"Cell for row function called");
    static NSString *cellIdentifier = @"ExerCell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
//    
//    if (!cell)
//    {
//        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier: cellIdentifier];
//        NSLog(@"New cell initialized");
//    }
//    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    
    GUPExercise * ex = [self.routineDisplayed.exercises objectAtIndex:indexPath.row];
    
    cell.textLabel.text = ex.name;
    [cell.detailTextLabel setText: [ex instructions]];
    

    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"ASDFASD");
    if ([segue.identifier isEqualToString:@"chooseExe"]) {
        UITableViewCell * cell = (UITableViewCell *)sender;
        
        GUPExerciseDetail * viewController = segue.destinationViewController;
        viewController.bank = self.bank;
        NSString *ex_name = [cell textLabel].text;
        viewController.exDisplayed =[self.bank.exercises objectForKey:ex_name];
        
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *exer_string = [self.tableView cellForRowAtIndexPath:indexPath].textLabel.text;
    NSLog(@"Doing Exercise %@",exer_string);
    GUPExerciseDetail *viewController = [[GUPExerciseDetail alloc] initWithNibName:@"ExerciseDetailView" bundle:nil];
    viewController.bank = self.bank;
    
    viewController.exDisplayed =[self.bank.exercises objectForKey:exer_string];
    [self.navigationController pushViewController:viewController animated:YES];
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a story board-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 
 */

@end
