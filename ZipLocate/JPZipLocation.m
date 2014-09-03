//
//  JPZipLocation.m
//  ZipLocateSample
//
//  Created by James Paolantonio on 8/28/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import "JPZipLocation.h"

@interface JPZipLocation ()
@property (copy, nonatomic, readwrite) NSString *lat;
@property (copy, nonatomic, readwrite) NSString *lng;
@property (copy, nonatomic, readwrite) NSString *zip;
@end

@implementation JPZipLocation

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self == nil)
        return self;
    
    self.lat = dict[@"lat"];
    self.lng = dict[@"lng"];
    self.zip = dict[@"zip"];
    
    return self;
}

@end
