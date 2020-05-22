//
//  LSITipController.m
//  Tips
//
//  Created by David Wright on 5/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITipController.h"
#import "LSITip.h"

@interface LSITipController () {
    NSMutableArray *_internalTips;
}

@end

@implementation LSITipController

- (instancetype)init
{
    if (self = [super init])
    {
        _internalTips = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addTestData
{
    LSITip *aTip = [[LSITip alloc] initWithName:@"Sushi" total:200. splitCount:4 tipPercentage:20.];
    [_internalTips addObject:aTip];
    
    [_internalTips addObject:[[LSITip alloc] initWithName:@"Pizza" total:30. splitCount:8 tipPercentage:25.]];
}

- (NSArray<LSITip *> *)tips
{
    return _internalTips.copy;
}

- (NSUInteger)tipCount
{
    return _internalTips.count;
    // return [_internalTips count];
}

- (LSITip *)tipAtIndex:(NSUInteger)index
{
    return [_internalTips objectAtIndex:index];
}

- (void)addTip:(LSITip *)aTip
{
    return [_internalTips addObject:aTip];
}

@end
