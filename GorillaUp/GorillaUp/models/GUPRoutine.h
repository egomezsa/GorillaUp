//
//  GUPRoutine.h
//  GorillaUp
//
//  Created by Esteban Gomez on 2/8/14.
//  Copyright (c) 2014 BM1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GUPRoutine : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic) NSMutableArray * exercises;


- (id)initWithTitle:(NSString*)n withExercises: (NSMutableArray *) exer;
- (id)init;


@end
