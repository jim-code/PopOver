//
//  StatusMenuController.m
//  PopOver
//
//  Created by Jim Jin [STAFF] on 9/26/17.
//  Copyright © 2017 Jim Jin [STAFF]. All rights reserved.
//

#import "StatusMenuController.h"

@interface StatusMenuController()
@property (strong, nonatomic) NSStatusItem *statusItem;
@property (weak) IBOutlet NSMenu *menu;


@end

@implementation StatusMenuController

+(void)showWindow
{
    static StatusMenuController *controller = nil;
    controller = [[StatusMenuController alloc] init];
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
        
        
    }
    return self;
}

-(void)awakeFromNib
{
    self.statusItem.title = @"@";
    self.statusItem.menu = self.menu;
}

- (IBAction)quit:(NSMenuItem *)sender {
    
    [NSApp terminate:nil];
}


@end
