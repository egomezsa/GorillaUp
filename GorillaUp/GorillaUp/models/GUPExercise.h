
//
//  GUPExercise
//  GorillaUp
//
//  Created by Joseph Rock on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GUPExercise : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic) int numSets;
@property (nonatomic) int numReps;
@property (nonatomic) int restTime;
@property (nonatomic) int weight;


- (id)initWithTitle:(NSString*)n sets:(int)s reps:(int)rps weight:(int)wt rest:(int)res;
- (id)init;
- (NSString*)instructions;

@end

