//
//  MenuItemView.m
//  PopOver
//
//  Created by Jim Jin [STAFF] on 9/27/17.
//  Copyright © 2017 Jim Jin [STAFF]. All rights reserved.
//

#import "MenuItemView.h"


@interface MenuItemView ()

@property (weak) IBOutlet NSButton *butten;


@end

@implementation MenuItemView


-(void)awakeFromNib
{
    self.butten.title = @"About";
    self.butten.image = [NSImage imageNamed:@"ISB"];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (IBAction)buttenQuit:(NSButton *)sender {
    [NSApp terminate:nil];
}

@end
