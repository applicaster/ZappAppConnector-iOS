//
//  ZAAppDelegateConnectorChromecastProtocol.h
//  ZappAppConnector
//
//  Created by Avi Levin on 21/12/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//
@protocol ZAAppDelegateConnectorChromecastProtocol

- (BOOL)isSynced;
- (void)play:(NSArray *)playableItems;
- (void)showExtededPlayer;
- (UIViewController *)getExtededPlayerViewController;

@end

