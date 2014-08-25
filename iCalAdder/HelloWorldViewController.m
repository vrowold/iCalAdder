//
//  HelloWorldViewController.m
//  iCalAdder
//
//  Created by Vincent Rowold on 8/24/14.
//  Copyright (c) 2014 Vincent Rowold. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addEventAction:(id)sender {
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
    NSString *title = @"New Event";
    
    dispatch_async(queue, ^{
        
        EKEventStore *eventStore = [[EKEventStore alloc] init];
        
        [eventStore requestAccessToEntityType:EKEntityTypeEvent completion:^(BOOL granted, NSError *error) {
            
            if (granted){
                EKEvent *event  = [EKEvent eventWithEventStore:eventStore];
                event.title     = @"Fake Event";
                
                event.startDate = [[NSDate alloc] init];
                event.endDate   = [[NSDate alloc] initWithTimeInterval:3600 sinceDate:event.startDate];
                
                [event setCalendar:[eventStore defaultCalendarForNewEvents]];
                NSError *err;
                [eventStore saveEvent:event span:EKSpanThisEvent error:&err];
                
            }else
            {
                //----- codes here when user NOT allow your app to access the calendar.
            }
        }];
        
    });


    
    
    
    

}
@end
