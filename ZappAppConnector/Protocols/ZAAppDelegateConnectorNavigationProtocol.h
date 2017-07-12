//
//  ZAAppDelegatelConnectorNavigationProtocol.h
//  ZappAppManager
//
//  Created by Alex Zchut on 02/07/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//

@protocol ZAAppDelegateConnectorNavigationProtocol

- (void)navigateToHomeScreen;
- (void)customizeNavigationWithScreenEntity:(NSObject *)sirenEntity;

@end
