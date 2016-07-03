//
//  NSDecimalNumber+RoundNumber.h
//  iOS-RoundNumber
//
//  Created by colin on 16/7/3.
//  Copyright © 2016年 CHwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDecimalNumber (RoundNumber)

+ (NSDecimalNumber *)decimalNumberWithFloat:(float)value roundingScale:(short)scale;

+ (NSDecimalNumber *)decimalNumberWithFloat:(float)value roundingScale:(short)scale roundingMode:(NSRoundingMode)mode;

+ (NSDecimalNumber *)decimalNumberWithDouble:(double)value roundingScale:(short)scale;

+ (NSDecimalNumber *)decimalNumberWithDouble:(double)value roundingScale:(short)scale roundingMode:(NSRoundingMode)mode;

#pragma mark - Round
- (NSDecimalNumber *)roundToScale:(short)scale;

- (NSDecimalNumber *)roundToScale:(short)scale mode:(NSRoundingMode)roundingMode;

@end
