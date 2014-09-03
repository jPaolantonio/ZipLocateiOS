//
//  ViewController.m
//  ZipLocateSample
//
//  Created by James Paolantonio on 8/28/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import "ViewController.h"
#import "JPZipLocationClient.h"
#import "JPZipLocation.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *zipTextField;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.zipTextField.delegate = self;
    [self.zipTextField becomeFirstResponder];
}

- (IBAction)getLocationClicked:(UIButton *)sender {
    [self getLocation];
}

- (void)getLocation {
    __weak typeof (self) weakSelf = self;
    [[JPZipLocationClient client] getLocationFromZip:self.zipTextField.text
                                            callback:^(JPZipLocation *location) {
                                                [weakSelf showZipLocation:location];
                                            }];
}

- (void)showZipLocation:(JPZipLocation *)location {
    self.detailTextView.text = [NSString stringWithFormat:@"Latitude: %@\nLongitude: %@\nZip: %@\n",
                                location.lat,
                                location.lng,
                                location.zip];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - <UITextFieldDelegate>

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self getLocation];
    return NO;
}

@end
