//
//  NSObject+Assosiated.m
//  NSObject-Associated
//
//  Created by Konstantin Koval on 29/03/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

#import "NSObject+AssociatedTest.h"
#import "KKNSObject+Associated.h"

@implementation NSObject (AssociatedTest)

ASSOCIATED(name, setName, NSString *, OBJC_ASSOCIATION_RETAIN_NONATOMIC)
ASSOCIATED(delegate, setDelegate, id, OBJC_ASSOCIATION_ASSIGN)

- (NSInteger)number {
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}

- (void)setNumber:(NSInteger)object
{
    objc_setAssociatedObject(self, @selector(number), [NSNumber numberWithInteger:object], OBJC_ASSOCIATION_ASSIGN);
}

- (double)otherNumber {
    return [objc_getAssociatedObject(self, _cmd) doubleValue];
}

- (void)setOtherNumber:(double)object
{
    objc_setAssociatedObject(self, @selector(otherNumber), [NSNumber numberWithDouble:object], OBJC_ASSOCIATION_ASSIGN);
}

@end