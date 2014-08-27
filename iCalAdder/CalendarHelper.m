//
//  CalendarHelper.m
//  iCalAdder
//
//  Created by Vincent Rowold on 8/26/14.
//  Copyright (c) 2014 Vincent Rowold. All rights reserved.
//

#import "CalendarHelper.h"

@implementation CalendarHelper

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

@end
