//
//  GUPRoutine.m
//  GorillaUp
//
//  Created by Esteban Gomez on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import "GUPRoutine.h"

@implementation GUPRoutine

- (id)initWithTitle:(NSString*)n withExercises: (NSMutableArray *) exer{
    
    self = [super init];
    if(self){
        self.name = n;
        self.exercises  = exer;
    }
    return self;
}
- (id)init{
    return [self initWithTitle:@"" withExercises: nil];
}

- (id)initWithOnlyTitle:(NSString*)n{
    self = [super init];
    if(self){
        self.name = n;
        self.exercises = [NSMutableArray init];
    }
    return self;

}


@end
