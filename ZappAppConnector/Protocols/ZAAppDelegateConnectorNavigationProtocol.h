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
- (id <ZPAdapterNavBarProtocol>)navigationBarManager;
- (UIViewController *) topmostModal;
@end
