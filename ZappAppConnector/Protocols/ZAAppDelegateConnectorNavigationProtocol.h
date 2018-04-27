//
//  ZAAppDelegatelConnectorNavigationProtocol.h
//  ZappAppManager
//
//  Created by Alex Zchut on 02/07/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//
@import ZappPlugins;

@protocol ZPAdapterNavBarProtocol;

@protocol ZAAppDelegateConnectorNavigationProtocol

- (void)navigateToHomeScreen;
- (void)customizeNavigationWithModel:(id)model
                          dataSource:(id)dataSource;
- (ZPNavigationBarBaseAdapter *)navigationBarManager;
- (UIViewController *) topmostModal;
/**
 Retrieve navigationbar height with status bar

 @return Returns: height on the navigation bar container including status bar
 */
- (CGFloat)navigationBarHeightPlusStatusBar;

@end
