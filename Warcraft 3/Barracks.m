//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

- (instancetype)init
{
    _gold = 1000;
    _food = 80;
    return self;
}

- (Footman *)trainFootman {
    Footman *footman = [[Footman alloc] init];
    self.gold = self.gold - 135;
    self.food = self.food - 2;
    if (self.food <= 1) {
        return nil;
    }
    return footman;
}

- (BOOL)canTrainFootman {
    if (self.food < 2 || self.gold < 135) {
        return NO;
    }
    return YES;
}



@end
