//
//  QRHelper.m
//  iCalAdder
//
//  Created by Vincent Rowold on 9/3/14.
//  Copyright (c) 2014 Vincent Rowold. All rights reserved.
//

#import "QRHelper.h"

@implementation QRHelper

+ (void)parse:(NSString *)iCalData{
    
    NSArray *events = [iCalData componentsSeparatedByString:@":::"];
    
    for (int i = 0; i<[events count]; i++) {
        
        NSArray *eventDescription = [[events objectAtIndex:i] componentsSeparatedByString:@"::"];
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        [formatter setDateFormat:@"MMddyyyyHHmm"];
        
        Event *event  = [[Event alloc] init];
        [event setTitle:[eventDescription objectAtIndex:0]];
        [event setStartDate:[formatter dateFromString:[eventDescription objectAtIndex:1]]];
        [event setEndDate:[[NSDate alloc] initWithTimeInterval:3600*[[eventDescription objectAtIndex:2] intValue] sinceDate:[event startDate]]];
        
        
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
        
        
        dispatch_async(queue, ^{
            
            [CalendarHelper addEvent:event];
            
        });
    }

    

    
};

@end
