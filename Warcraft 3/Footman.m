//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"


@implementation Footman

-(instancetype)init{
    self = [super initWithHP:60 AP:10];
    if (self) {
    }
    return self;
    
    }

-(void) damage:(int)reduced {
    self.healthPoints -= reduced;
}

-(void) attack:(Unit *)unit withDamage:(int)damage {
    unit.healthPoints -= damage;
}

@end
