//
//  NSObject+Assosiated.h
//  NSObject-Associated
//
//  Created by Konstantin Koval on 29/03/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AssociatedTest)

@property (nonatomic, strong) NSString *name;
@property (atomic, assign) NSInteger number;
@property (atomic, assign) double otherNumber;
@property (nonatomic, assign) id delegate;

@end
