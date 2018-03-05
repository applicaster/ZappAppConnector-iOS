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
#import "ZAAppDelegateConnectorURLProtocol.h"
#import "ZAAppDelegateConnectorFirebaseRemoteConfigurationProtocol.h"
#import "ZAAppDelegateConnectorChromecastProtocol.h"
#import "ZAAppDelegateConnectorFacebookAccountKitProtocol.h"

@protocol ZAAppDelegateConnectorAnalyticsProtocol;
@protocol ZAAppDelegateConnectorGenericProtocol; 

@interface ZAAppConnector : NSObject

@property (nonatomic, weak) id<ZAAppDelegateConnectorLocalizationProtocol> localizationDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorNavigationProtocol> navigationDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorLayoutsStylesProtocol> layoutsStylesDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorTimeProtocol> timeDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorActionProtocol> actionDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorAnimationProtocol> animationDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorURLProtocol> urlDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorFirebaseRemoteConfigurationProtocol> firebaseRemoteConfigurationDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorChromecastProtocol> chromecastDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorFacebookAccountKitProtocol> facebookAccountKitDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorAnalyticsProtocol> analyticsDelegate;
@property (nonatomic, weak) id<ZAAppDelegateConnectorGenericProtocol> genericDelegate;

+ (instancetype)sharedInstance;

@end
