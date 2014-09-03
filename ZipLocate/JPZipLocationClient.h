//
//  JPZipLocationClient.h
//  ZipLocateSample
//
//  Created by James Paolantonio on 8/28/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JPZipLocation;

typedef void(^ JPZipLocationBlock)(JPZipLocation *location);

@interface JPZipLocationClient : NSObject

+ (instancetype)client;

- (void)setURL:(NSString *)url;
- (void)getLocationFromZip:(NSString *)zip
                  callback:(JPZipLocationBlock)callback;

@end
