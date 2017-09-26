//
//  ZAAppDelegatelConnectorLayoutsStylesProtocol.h
//  ZappAppConnector
//
//  Created by Alex Zchut on 02/07/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//

@import UIKit;

@protocol ZAAppDelegateConnectorLayoutsStylesProtocol

- (NSBundle *)stylesBundle;
- (NSBundle *)zappLayoutsStylesBundle;
- (NSDictionary *)zappLayoutsStylesMappingDict;
- (BOOL)isZappLayoutsEnabled;
- (Class)zappLayoutViewController;

/**
 Retrieve status bar from features customization plist

 @return Expected default status bar style for application
 */
- (UIStatusBarStyle)defaultStatusBarStyle;


@optional
/**
 Retrieve style parameters by style name
 
 @return dictionary of color, font
 */
- (NSDictionary*) styleParamsByStyleName:(NSString*)styleName;

@end
