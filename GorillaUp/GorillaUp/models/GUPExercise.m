
//
//  GUPExercise
//  GorillaUp
//
//  Created by Joseph Rock on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import "GUPExercise.h"

@implementation GUPExercise 

- (id)initWithTitle:(NSString*)n sets:(int)s reps:(int)rps weight:(int)wt rest:(int)res
{
    self = [super init];
  if(self){
    self.name = n;
    self.numSets  = s;
    self.numReps  = rps;
    self.weight = wt;
    self.restTime = res;
  }
  return self;
}

- (id)init{

    return [self initWithTitle:@"" sets:0 reps:0 weight:0 rest:0];
}

- (NSString*)instructions
{
  NSString *pSets = (self.numSets == 1) ? @"" : @"s";
  NSString *pReps = (self.numReps == 1) ? @"" : @"s";
  NSString *pRest = (self.restTime == 1) ? @"" : @"s";
  NSString *pWeight = (self.weight == 1) ? @"" : @"s";

  //return "x set(s), y rep(s), z sec(s) rest, with w lb(s)."
  return [NSString stringWithFormat:@"%d set%@, %d rep%@, %d sec%@ rest, with %d lb%@.",
    self.numSets, pSets,
    self.numReps, pReps,
    self.restTime, pRest,
    self.weight, pWeight];
}



@end
