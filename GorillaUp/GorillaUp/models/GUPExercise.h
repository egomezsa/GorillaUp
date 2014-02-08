
//
//  GUPExercise
//  GorillaUp
//
//  Created by Joseph Rock on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GUPExercise : NSObject

@property (copy,nonatomic) NSString *name;
@property (copy,nonatomic) int numSets;
@property (copy,nonatomic) int numReps;
@property (copy,nonatomic) int restTime;
@property (copy,nonatomic) float weight;

- (id)initWith: name:(NSString*)n sets:(int)s reps:(int)rps weight:(int)wt rest:(int)res;
- (id)init;
- (NSString*)instructions;

@end

