//
//  JPZipLocationClient.m
//  ZipLocateSample
//
//  Created by James Paolantonio on 8/28/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import "JPZipLocationClient.h"
#import "JPZipLocation.h"

@interface JPZipLocationClient ()
@property (copy, nonatomic) NSURL *url;
@end

@implementation JPZipLocationClient

+ (instancetype)client {
    static JPZipLocationClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[self alloc] init];
    });
    
    return _sharedClient;
}

- (instancetype)init
{
    self = [super init];
    if (self == nil)
        return self;

    self.url = [NSURL URLWithString:@"http://ziplocate.us/api/v1/"];
    
    return self;
}

- (void)setURL:(NSString *)url {
    self.url = [NSURL URLWithString:url];
}

- (void)getLocationFromZip:(NSString *)zip
                  callback:(JPZipLocationBlock)callback {
    NSURL *url = [NSURL URLWithString:zip relativeToURL:self.url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
                               NSDictionary *zipDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:NULL];
                               JPZipLocation *location = [[JPZipLocation alloc] initWithDictionary:zipDict];
                               callback(location);
                           }];
}

@end
