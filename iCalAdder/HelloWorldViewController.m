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
    
    Event *e  = [[Event alloc] init];
    [e setTitle:@"Eventname"];
    [e setStartDate:[[NSDate alloc] init]];
    [e setEndDate:[[NSDate alloc] initWithTimeInterval:3600 sinceDate:[e startDate]]];
    
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
    
    dispatch_async(queue, ^{
        
        [CalendarHelper addEvent:e];
        
    });


    
    
    
    

}
@end
