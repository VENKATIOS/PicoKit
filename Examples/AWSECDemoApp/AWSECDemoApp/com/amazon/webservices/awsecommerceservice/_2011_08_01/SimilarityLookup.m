// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "OrderedDictionary.h"
#import "SimilarityLookup.h"
#import "SimilarityLookupRequest.h"

@implementation SimilarityLookup

@synthesize marketplaceDomain = _marketplaceDomain;
@synthesize awsAccessKeyId = _awsAccessKeyId;
@synthesize associateTag = _associateTag;
@synthesize validate = _validate;
@synthesize xmlEscaping = _xmlEscaping;
@synthesize shared = _shared;
@synthesize request = _request;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    PicoClassSchema *cs = [[PicoClassSchema alloc] initWithXmlName:@"SimilarityLookup" nsUri:@"http://webservices.amazon.com/AWSECommerceService/2011-08-01"];
    return cs;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [OrderedDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"MarketplaceDomain" propertyName:@"marketplaceDomain" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"marketplaceDomain"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"AWSAccessKeyId" propertyName:@"awsAccessKeyId" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"awsAccessKeyId"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"AssociateTag" propertyName:@"associateTag" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"associateTag"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Validate" propertyName:@"validate" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"validate"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"XMLEscaping" propertyName:@"xmlEscaping" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"xmlEscaping"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Shared" propertyName:@"shared" type:PICO_TYPE_OBJECT clazz:[SimilarityLookupRequest class]];
    [map setObject:ps forKey:@"shared"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT_ARRAY xmlName:@"Request" propertyName:@"request" type:PICO_TYPE_OBJECT clazz:[SimilarityLookupRequest class]];
    [map setObject:ps forKey:@"request"];
    
    return map;
}




@end
