//
//  HelloWorldViewController.h
//  iCalAdder
//
//  Created by Vincent Rowold on 8/24/14.
//  Copyright (c) 2014 Vincent Rowold. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EventKit.h>
#import "Event.h"
#import "CalendarHelper.h"
#import <AVFoundation/AVFoundation.h>

@interface HelloWorldViewController : UIViewController <AVCaptureMetadataOutputObjectsDelegate>


- (IBAction)addEventAction:(id)sender;
- (IBAction)startStopReading:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *viewPreview;
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *bbitemStart;


@end
