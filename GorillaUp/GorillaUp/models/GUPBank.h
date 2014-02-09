//
//  GUPBank.h
//  GorillaUp
//
//  Created by Esteban Gomez on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GUPRoutine.h"
#import "GUPExercise.h"

@interface GUPBank : NSObject

@property NSMutableDictionary * routines;
@property NSMutableDictionary * exercises;

- (id) init;
- (NSMutableArray * ) getRoutineNames;
- (GUPRoutine*) getOrNewRoutine: (NSString*)routineName;
- (GUPExercise*) getOrNewExercise: (NSString*)exerciseName;

@end
