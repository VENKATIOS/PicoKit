// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "OrderedDictionary.h"
#import "WeatherReturn.h"

@implementation WeatherReturn

@synthesize success = _success;
@synthesize responseText = _responseText;
@synthesize state = _state;
@synthesize city = _city;
@synthesize weatherStationCity = _weatherStationCity;
@synthesize weatherID = _weatherID;
@synthesize description = _description;
@synthesize temperature = _temperature;
@synthesize relativeHumidity = _relativeHumidity;
@synthesize wind = _wind;
@synthesize pressure = _pressure;
@synthesize visibility = _visibility;
@synthesize windChill = _windChill;
@synthesize remarks = _remarks;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    PicoClassSchema *cs = [[PicoClassSchema alloc] initWithXmlName:@"WeatherReturn" nsUri:@"http://ws.cdyne.com/WeatherWS/"];
    return cs;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [OrderedDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Success" propertyName:@"success" type:PICO_TYPE_BOOL clazz:nil];
    [map setObject:ps forKey:@"success"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"ResponseText" propertyName:@"responseText" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"responseText"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"State" propertyName:@"state" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"state"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"City" propertyName:@"city" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"city"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"WeatherStationCity" propertyName:@"weatherStationCity" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"weatherStationCity"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"WeatherID" propertyName:@"weatherID" type:PICO_TYPE_SHORT clazz:nil];
    [map setObject:ps forKey:@"weatherID"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Description" propertyName:@"description" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"description"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Temperature" propertyName:@"temperature" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"temperature"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"RelativeHumidity" propertyName:@"relativeHumidity" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"relativeHumidity"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Wind" propertyName:@"wind" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"wind"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Pressure" propertyName:@"pressure" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"pressure"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Visibility" propertyName:@"visibility" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"visibility"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"WindChill" propertyName:@"windChill" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"windChill"];
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Remarks" propertyName:@"remarks" type:PICO_TYPE_STRING clazz:nil];
    [map setObject:ps forKey:@"remarks"];
    
    return map;
}

@end
