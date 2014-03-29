//
//  KKNSObject+Assosiated.h
//  NSObject-Associated
//
//  Created by Konstantin Koval on 29/03/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

/**
 * A macro that creates getter and setter for your assosiated object
 *
 * @param propertyName Getter funtion name
 * @param setter Setter funtion name
 * @param objc_AssociationPolicy Memory policy for assosiated object
 *
 * Available option: OBJC_ASSOCIATION_ASSIGN, OBJC_ASSOCIATION_RETAIN_NONATOMIC, OBJC_ASSOCIATION_COPY_NONATOMIC, OBJC_ASSOCIATION_RETAIN, OBJC_ASSOCIATION_COPY
 *
 */
#import <objc/runtime.h>
#define ASSOCIATED(propertyName, setter, type, objc_AssociationPolicy)\
- (type)propertyName {\
return objc_getAssociatedObject(self, _cmd);\
}\
\
- (void)setter:(type)object\
{\
objc_setAssociatedObject(self, @selector(propertyName), object, objc_AssociationPolicy);\
}
