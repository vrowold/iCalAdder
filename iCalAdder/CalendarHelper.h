//
//  CalendarHelper.h
//  iCalAdder
//
//  Created by Vincent Rowold on 8/26/14.
//  Copyright (c) 2014 Vincent Rowold. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EventKit/EventKit.h>
#import "Event.h"

@interface CalendarHelper : NSObject

+ (void)addEvent:(Event *)newEvent;

@end
