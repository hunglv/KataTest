//
//  StackTest.m
//  KataTest
//

#import "Kiwi.h"
#import "Stack.h"

SPEC_BEGIN(StackSpec)
describe(@"Stack test", ^{
    
    context(@"Step 1", ^{
        it(@"init stack should have zero element by default", ^{
            Stack *sut = [[Stack alloc] init];
            [[theValue(sut.size) should] equal:theValue(0)];
        });
    });
    
    context(@"Step 2", ^{
        it(@"push 1 element", ^{
            Stack *sut = [[Stack alloc] init];
            NSString *pushString = [NSString nullMock];
            [sut push:pushString];
            [[theValue(sut.size) should] equal:theValue(1)];
        });
    });
    
    context(@"Step 3", ^{
        it(@"push some elements", ^{
            Stack *sut = [[Stack alloc] init];
            NSString *pushString = [NSString nullMock];
            for(int i = 0; i < 3; i ++) {
                [sut push:pushString];
            }
            [[theValue(sut.size) should] equal:theValue(3)];
        });
    });
    
    context(@"Step 4", ^{
       it(@"top when stack is empty", ^{
           Stack *sut = [[Stack alloc] init];
           NSString *topString = [sut top];
           [topString shouldBeNil];
       });
    });
    
    context(@"Step 5", ^{
        it(@"top when stack isn't empty", ^{
            Stack *sut = [[Stack alloc] init];
            NSString *pushString = [NSString nullMock];
            [sut push:pushString];
            NSString *topString = [sut top];
            [[topString should] equal:pushString];
        });
    });
    
    context(@"Step 6", ^{
        it(@"Exeption when pop empty stack", ^{
            [[theBlock(^{
                Stack *sut = [[Stack alloc] init];
                [sut pop];
            }) should] raiseWithName:@"StackEmptyException"];
        });
    });
        
});
SPEC_END
