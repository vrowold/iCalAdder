//
//  QRHelper.m
//  iCalAdder
//
//  Created by Vincent Rowold on 9/3/14.
//  Copyright (c) 2014 Vincent Rowold. All rights reserved.
//

#import "QRHelper.h"

@implementation QRHelper

+ (void)parseQRData:(NSString *)iCalData{
    
    NSArray *events = [iCalData componentsSeparatedByString:@":::"];
    
    NSLog(@"%@",iCalData);
    NSLog(@"%@",[events objectAtIndex:(0)]);
    NSLog(@"%@",[events objectAtIndex:(1)]);
    

    
};

@end
