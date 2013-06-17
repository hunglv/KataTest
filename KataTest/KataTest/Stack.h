//
//  Stack.h
//  KataTest
//
//  Created by El Nino on 6/17/13.
//  Copyright (c) 2013 El Nino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

@property (assign) NSUInteger size;

- (void)push:(id)object;

- (id)top;

- (id)pop;

@end
