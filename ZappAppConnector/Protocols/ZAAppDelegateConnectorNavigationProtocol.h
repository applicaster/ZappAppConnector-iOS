//
//  ZAAppDelegatelConnectorNavigationProtocol.h
//  ZappAppManager
//
//  Created by Alex Zchut on 02/07/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//
//@import ZappPlugins;

@protocol ZAAppDelegateConnectorNavigationProtocol

- (void)navigateToHomeScreen;
- (void)customizeNavigationWithModel:(id)model;
//- (id <ZPAdapterNavBarProtocol>)navigationBarManager;

@end
