//
//  QRHelper.h
//  iCalAdder
//
//  Created by Vincent Rowold on 9/3/14.
//  Copyright (c) 2014 Vincent Rowold. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Event.h"

@interface QRHelper : NSObject

+ (void)parseQRData:(NSString *)iCalData;

@end
