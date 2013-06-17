//
//  Stack.m
//  KataTest
//
//  Created by El Nino on 6/17/13.
//  Copyright (c) 2013 El Nino. All rights reserved.
//

#import "Stack.h"

@interface Stack()

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation Stack

@synthesize size;
@synthesize dataArray;

- (id)init
{
    self = [super init];
    if (self) {
        dataArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)push:(id)object {
    [dataArray insertObject:object atIndex:0];
    size++;
}

- (id)top {
    id returnObject = nil;
    if (size) {
        returnObject = [dataArray objectAtIndex:0];
    }
    return returnObject;    
}

- (id)pop {
    return nil;
}

@end
