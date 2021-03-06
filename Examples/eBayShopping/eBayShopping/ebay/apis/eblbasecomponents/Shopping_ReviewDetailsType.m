// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "OrderedDictionary.h"
#import "Shopping_ReviewDetailsType.h"
#import "Shopping_ReviewType.h"

@implementation Shopping_ReviewDetailsType

@synthesize averageRating = _averageRating;
@synthesize review = _review;
@synthesize any = _any;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    return nil;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [OrderedDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"AverageRating" propertyName:@"averageRating" type:PICO_TYPE_FLOAT clazz:nil];
    [map setObject:ps forKey:@"averageRating"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT_ARRAY xmlName:@"Review" propertyName:@"review" type:PICO_TYPE_OBJECT clazz:[Shopping_ReviewType class]];
    [map setObject:ps forKey:@"review"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ANY_ELEMENT xmlName:@"any" propertyName:@"any" type:PICO_TYPE_ANYELEMENT clazz:nil];
    [map setObject:ps forKey:@"any"];
    
    return map;
}



-(void)dealloc {
    self.averageRating = nil;
    self.review = nil;
    self.any = nil;
}

@end
