//
//  ZAAppConnector.h
//  Zapp-App
//
//  Created by user on 21/06/2017.
//  Copyright © 2017 Applicaster LTD. All rights reserved.
//


@import UIKit;
@import Foundation;

#import "ZAAppDelegatelConnectorLocalizationProtocol.h"
#import "ZAAppDelegatelConnectorNavigationProtocol.h"
#import "ZAAppDelegatelConnectorLayoutsStylesProtocol.h"


@interface ZAAppConnector : NSObject

@property (nonatomic, weak) id<ZAAppDelegatelConnectorLocalizationProtocol> localizationDelegate;
@property (nonatomic, weak) id<ZAAppDelegatelConnectorNavigationProtocol> navigationDelegate;
@property (nonatomic, weak) id<ZAAppDelegatelConnectorLayoutsStylesProtocol> layoutsStylesDelegate;

+ (id)sharedInstance;

@end
