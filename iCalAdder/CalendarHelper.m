//
//  CalendarHelper.m
//  iCalAdder
//
//  Created by Vincent Rowold on 8/26/14.
//  Copyright (c) 2014 Vincent Rowold. All rights reserved.
//

#import "CalendarHelper.h"

@implementation CalendarHelper

+ (void)addEvent:(Event *)newEvent{
    
    EKEventStore *eventStore = [[EKEventStore alloc] init];

    [eventStore requestAccessToEntityType:EKEntityTypeEvent completion:^(BOOL granted, NSError *error) {
        
        if (granted){
            
            EKEvent *event  = [EKEvent eventWithEventStore:eventStore];
            event.title     = [newEvent title];
            event.startDate = [newEvent startDate];
            event.endDate   = [newEvent endDate];
            
            [event setCalendar:[eventStore defaultCalendarForNewEvents]];
            NSError *err;
            [eventStore saveEvent:event span:EKSpanThisEvent error:&err];
            
            
        }else
        {
            
        }
    }];
    
};

@end
