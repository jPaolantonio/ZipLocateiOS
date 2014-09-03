//
//  JPZipLocation.h
//  ZipLocateSample
//
//  Created by James Paolantonio on 8/28/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JPZipLocation : NSObject

@property (copy, nonatomic, readonly) NSString *lat;
@property (copy, nonatomic, readonly) NSString *lng;
@property (copy, nonatomic, readonly) NSString *zip;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end
