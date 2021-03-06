// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "PicoClassSchema.h"
#import "PicoPropertySchema.h"
#import "PicoConstants.h"
#import "PicoBindable.h"


@class CollectionItem;
@class CollectionSummary;
@class CollectionParent;

/**
 (public class)
 
 @ingroup AWSECommerceServicePortType
*/
@interface Collection : NSObject <PicoBindable> {

@private
    CollectionSummary *_collectionSummary;
    CollectionParent *_collectionParent;
    NSMutableArray *_collectionItem;

}


/**
 (public property)
 
 type : class CollectionSummary
*/
@property (nonatomic, strong) CollectionSummary *collectionSummary;

/**
 (public property)
 
 type : class CollectionParent
*/
@property (nonatomic, strong) CollectionParent *collectionParent;

/**
 (public property)
 
 entry type : class CollectionItem
*/

@property (nonatomic, strong) NSMutableArray *collectionItem;


@end
