//
//  GUPBank.m
//  GorillaUp
//
//  Created by Esteban Gomez on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import "GUPBank.h"
#import "GUPExercise.h"
#import "GUPRoutine.h"

@implementation GUPBank

- (id)init{
    self = [super init];
    if(self){
        
        NSString * plistFile = [[NSBundle mainBundle] pathForResource:@"fakeData"
                                                               ofType:@"plist"];
        NSMutableDictionary * plistDict =[[NSMutableDictionary alloc] initWithContentsOfFile:plistFile];
        if (!plistDict) {
                plistDict = [NSMutableDictionary new];
                [plistDict writeToFile:plistFile atomically:YES];
        }
        
        
        NSMutableDictionary *subDict;
        
        GUPRoutine * newRoutine;
        GUPExercise * newExercise;
        
        for(NSString* key in plistDict)
        {
            subDict = [plistDict objectForKey:key];
            if ([key isEqualToString:@"Exercises"]){
                
                self.exercises = [NSMutableDictionary dictionary];
                
                for (NSString* exercise in subDict){
                    newExercise = [[GUPExercise alloc] init];
                    NSArray *numbers = [[subDict objectForKey: exercise] componentsSeparatedByString:@","];
                    
                    /* Populating the data object */
                    
                    newExercise.name = exercise;
                    newExercise.numSets = [[numbers objectAtIndex:0] integerValue];
                    newExercise.numReps = [[numbers objectAtIndex:1] integerValue];
                    newExercise.restTime = [[numbers objectAtIndex:2] integerValue];
                    newExercise.weight = [[numbers objectAtIndex:3] integerValue];
                    
                    [self.exercises setObject:newExercise forKey:exercise];
                    
                }
            }else if ([key isEqualToString:@"Routines"]){
                self.routines = [NSMutableDictionary dictionary];
                
                for (NSString * routine_name in subDict)
                {
                    newRoutine = [[GUPRoutine alloc] init];
                    NSArray *routine_detail = [[subDict objectForKey: routine_name] componentsSeparatedByString:@","];
                    
                    
                    
                    newRoutine.name = routine_name;
                    newRoutine.exercises = [[NSMutableArray alloc] init];
                    
                    for (int r_index = 0 ; r_index < [routine_detail count]; r_index++){
                        GUPExercise *local = [self.exercises objectForKey:[routine_detail objectAtIndex:r_index]];
                        [newRoutine.exercises addObject:local];
                        
                    }

                    [self.routines setObject:newRoutine forKey:routine_name];
                }
            }
        }
        NSLog(@"asdf");

    }
    return self;
    
}

- (NSMutableArray * ) getRoutineNames{
    
    return [[NSMutableArray alloc] initWithArray:[self.routines allKeys]];
    
}


@end
