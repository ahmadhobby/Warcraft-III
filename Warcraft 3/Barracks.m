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

    if ([self canTrainFootman]) {
        self.gold -= 135;
        self.food -= 2;
        return [Footman new];
    }
    return nil;
}

- (BOOL)canTrainFootman {
    if (self.food < 2 || self.gold < 135) {
        return NO;
    }
    return YES;
}

- (Peasant *)trainPeasant {
    if ([self canTrainPeasant]) {
        self.gold -= 90;
        self.food -= 5;
        return [Peasant new];
    }
    return nil;
    
    // Every method expects to return a type. In that sense it expects to get an instance.
}

- (BOOL)canTrainPeasant {
    if (self.food < 5 || self.gold < 110) {
        return NO;
    }
    return YES;
}



@end
