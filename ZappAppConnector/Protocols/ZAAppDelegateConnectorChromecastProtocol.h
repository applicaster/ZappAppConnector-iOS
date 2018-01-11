//
//  ZAAppDelegateConnectorChromecastProtocol.h
//  ZappAppConnector
//
//  Created by Avi Levin on 21/12/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//
@protocol ZAAppDelegateConnectorChromecastProtocol
- (BOOL)isSynced;
- (void)play:(NSArray *)playableItems currentPosition:(long)position;
- (void)showExtededPlayer;
- (UIViewController *)getExtededPlayerViewController;
- (void)setCastDelegate:(id)castDelegate;
@end

