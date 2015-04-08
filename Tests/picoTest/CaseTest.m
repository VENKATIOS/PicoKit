//
//  CaseTest.m
//  picoTest
//
//  Created by bulldog on 13-2-27.
//  Copyright (c) 2013 LeanSoft Technology. All rights reserved.
//

#import "PicoTestBase.h"
#import "OrderedDictionary.h"

@interface TextEntry : NSObject <PicoBindable> {
@private
    NSNumber *_id;
    NSString *_text;
}

@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, strong) NSString *text;

@end

@implementation TextEntry

@synthesize id = _id;
@synthesize text = _text;

+(PicoClassSchema *)getClassMetaData {
	PicoClassSchema *cs =
	[[PicoClassSchema alloc] initWithXmlName: @"TextEntry" nsUri: nil];
	return cs;
}

+(NSMutableDictionary *)getPropertyMetaData {
	NSMutableDictionary *map = [OrderedDictionary dictionary];
	PicoPropertySchema *ps = nil;
	
	ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Text" propertyName:@"text" type:PICO_TYPE_STRING clazz:nil];
	[map setObject:ps forKey:@"text"];
	ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ATTRIBUTE xmlName:@"id" propertyName:@"id" type:PICO_TYPE_INT clazz:nil];
	[map setObject:ps forKey:@"id"];
	
	return map;
}

@end

@interface URLEntry : NSObject <PicoBindable>
{
@private
	NSString *_location;
	
}

@property (nonatomic, strong) NSString *location;

@end

@implementation URLEntry

@synthesize location = _location;

+(PicoClassSchema *)getClassMetaData {
	PicoClassSchema *cs = [[PicoClassSchema alloc] initWithXmlName: @"URLEntry" nsUri: nil];
	return cs;
}

+(NSMutableDictionary *)getPropertyMetaData {
	NSMutableDictionary *map = [OrderedDictionary dictionary];
	PicoPropertySchema *ps = nil;
	
	ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_VALUE xmlName:@"location" propertyName:@"location" type:PICO_TYPE_STRING clazz:nil];
	[map setObject:ps forKey:@"location"];
	
	return map;
}


@end

@interface CaseExample : NSObject <PicoBindable> {
    
@private
	NSMutableArray *_list;
	NSMutableArray *_domainList;
	NSMutableArray *_textList;
	NSNumber *_version;
	NSString *_name;
	NSString *_URL;
}

@property (nonatomic, strong) NSMutableArray *list;
@property (nonatomic, strong) NSMutableArray *domainList;
@property (nonatomic, strong) NSMutableArray *textList;
@property (nonatomic, strong) NSNumber *version;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *URL;

@end

@implementation CaseExample

@synthesize list = _list, domainList = _domainList, textList = _textList, version = _version, name = _name, URL = _URL;

+(PicoClassSchema *)getClassMetaData {
	PicoClassSchema *cs = [[PicoClassSchema alloc] initWithXmlName: @"Example" nsUri: nil];
	return cs;
}

+(NSMutableDictionary *)getPropertyMetaData {
	NSMutableDictionary *map = [OrderedDictionary dictionary];
	PicoPropertySchema *ps = nil;
	
	ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT_ARRAY xmlName:@"ListEntry" propertyName:@"list" type:PICO_TYPE_OBJECT clazz:[TextEntry class]];
	[map setObject:ps forKey:@"list"];
	ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT_ARRAY xmlName:@"URLEntry" propertyName:@"domainList" type:PICO_TYPE_OBJECT clazz:[URLEntry class]];
	[map setObject:ps forKey:@"domainList"];
	ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT_ARRAY xmlName:@"TextEntry" propertyName:@"textList" type:PICO_TYPE_OBJECT clazz:[TextEntry class]];
	[map setObject:ps forKey:@"textList"];
	ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ATTRIBUTE xmlName:@"Version" propertyName:@"version" type:PICO_TYPE_FLOAT clazz:nil];
	[map setObject:ps forKey:@"version"];
	ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ATTRIBUTE xmlName:@"Name" propertyName:@"name" type:PICO_TYPE_STRING clazz:nil];
	[map setObject:ps forKey:@"name"];
	ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ATTRIBUTE xmlName:@"URL" propertyName:@"URL" type:PICO_TYPE_STRING clazz:nil];
	[map setObject:ps forKey:@"URL"];
	
	return map;
}


@end

@interface CaseTest : PicoTestBase
@end

@implementation CaseTest

-(void)testCase {
	
	NSString *filePath = [[NSBundle mainBundle] pathForResource:@"caseTest" ofType:@"xml"];
	NSData *xmlData = [[NSMutableData alloc] initWithContentsOfFile:filePath];
	
	
    CaseExample *ce = [xmlReader fromData:xmlData withClass: [CaseExample class]];
	
	GHAssertEquals([ce.version floatValue], 1.0f, nil);
	GHAssertEqualStrings(ce.name, @"example", nil);
	GHAssertEqualStrings(ce.URL, @"http://domain.com/", nil);
	
	GHAssertTrue(ce.list.count == 3, nil);
	TextEntry *te = [ce.list objectAtIndex:0];
	GHAssertEquals([te.id intValue], 1, nil);
	GHAssertEqualStrings(te.text, @"one", nil);
	
	te = [ce.list objectAtIndex:1];
	GHAssertEquals([te.id intValue], 2, nil);
	GHAssertEqualStrings(te.text, @"two", nil);
	
	GHAssertTrue(ce.domainList.count == 3, nil);
	URLEntry *ue = [ce.domainList objectAtIndex:2];
	GHAssertEqualStrings(ue.location, @"http://c.com/", nil);
	
	GHAssertTrue(ce.textList.count == 3, nil);
	te = [ce.textList objectAtIndex:1];
	GHAssertEquals([te.id intValue], 5, nil);
	GHAssertEqualStrings(te.text, @"example 5", nil);
	
	
    
	xmlData = [xmlWriter toData:ce];
	NSString *xmlString = [[NSString alloc] initWithData:xmlData encoding:NSUTF8StringEncoding];
	
	GHTestLog(@"write result : %@", xmlString);
	
	
	ce = [xmlReader fromData:xmlData withClass: [CaseExample class]];
	GHAssertEquals([ce.version floatValue], 1.0f, nil);
	GHAssertEqualStrings(ce.name, @"example", nil);
	GHAssertEqualStrings(ce.URL, @"http://domain.com/", nil);
	
	GHAssertTrue(ce.list.count == 3, nil);
	te = [ce.list objectAtIndex:0];
	GHAssertEquals([te.id intValue], 1, nil);
	GHAssertEqualStrings(te.text, @"one", nil);
	
	te = [ce.list objectAtIndex:1];
	GHAssertEquals([te.id intValue], 2, nil);
	GHAssertEqualStrings(te.text, @"two", nil);
	
	GHAssertTrue(ce.domainList.count == 3, nil);
	ue = [ce.domainList objectAtIndex:2];
	GHAssertEqualStrings(ue.location, @"http://c.com/", nil);
	
	GHAssertTrue(ce.textList.count == 3, nil);
	te = [ce.textList objectAtIndex:1];
	GHAssertEquals([te.id intValue], 5, nil);
	GHAssertEqualStrings(te.text, @"example 5", nil);
	
}

@end
