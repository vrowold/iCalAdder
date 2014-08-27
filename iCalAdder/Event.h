//
//  Event.h
//  iCalAdder
//
//  Created by Vincent Rowold on 8/24/14.
//  Copyright (c) 2014 Vincent Rowold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property NSDate *startDate;

@property NSDate *endDate;

@property NSString *title;

@end
