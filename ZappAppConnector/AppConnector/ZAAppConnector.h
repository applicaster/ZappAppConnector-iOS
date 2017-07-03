//
//  ZAAppConnector.h
//  Zapp-App
//
//  Created by user on 21/06/2017.
//  Copyright © 2017 Applicaster LTD. All rights reserved.
//
@import Foundation;

#import "ZAAppDelegateConnectorLocalizationProtocol.h"
#import "ZAAppDelegateConnectorNavigationProtocol.h"
#import "ZAAppDelegateConnectorLayoutsStylesProtocol.h"
#import "ZAAppDelegateConnectorTimeProtocol.h"
#import "ZAAppDelegateConnectorActionProtocol.h"
#import "ZAAppDelegateConnectorAnimationProtocol.h"


@interface ZAAppConnector : NSObject

@property (nonatomic, weak) id<ZAAppDelegateConnectorLocalizationProtocol> localizationDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorNavigationProtocol> navigationDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorLayoutsStylesProtocol> layoutsStylesDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorTimeProtocol> timeDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorActionProtocol> actionDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorAnimationProtocol> animationDelegate;

+ (id)sharedInstance;

@end
