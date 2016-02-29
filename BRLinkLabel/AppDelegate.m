//
//  AppDelegate.m
//  BRLinkLabel
//
//  Created by Yang on 16/2/29.
//  Copyright © 2016年 sgyang. All rights reserved.
//

#import "AppDelegate.h"
#import "BRLinkLabel.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    //!代码创建
    NSRect frame = NSMakeRect(115, 100, 250, 70);
    NSAttributedString * attString = [[NSAttributedString alloc] initWithString:@"超链接2" attributes:@{NSLinkAttributeName: @"http://cocoachina.com", NSForegroundColorAttributeName:[NSColor keyboardFocusIndicatorColor]}];
    BRLinkLabel * linkLabel = [[BRLinkLabel alloc] initWithFrame:frame attibutedString:attString];
    linkLabel.showBackground = YES;
    [self.window.contentView addSubview:linkLabel];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
