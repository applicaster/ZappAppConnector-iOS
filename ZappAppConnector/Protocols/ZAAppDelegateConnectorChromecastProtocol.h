//
//  ZAAppDelegateConnectorChromecastProtocol.h
//  ZappAppConnector
//
//  Created by Avi Levin on 21/12/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//

/**
 * This protocol is used to connect between applicasterSDK and Zapp-iOS
 * All the Chromecast logic is located in the app level.
 */
NS_ASSUME_NONNULL_BEGIN

@protocol ZAAppDelegateConnectorChromecastProtocol

- (BOOL)isSynced;
- (void)play:(nonnull NSArray *)playableItems currentPosition:(long)position;
- (void)showExtededPlayer;
- (nonnull UIViewController *)getExtededPlayerViewController;
- (void)setCastDelegate:(nonnull id)castDelegate;
- (UIInterfaceOrientationMask)extendedPlayerOrientation;

@end

NS_ASSUME_NONNULL_END
