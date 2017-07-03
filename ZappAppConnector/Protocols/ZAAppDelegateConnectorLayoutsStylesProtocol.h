//
//  ZAAppDelegatelConnectorLayoutsStylesProtocol.h
//  ZappAppConnector
//
//  Created by Alex Zchut on 02/07/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//

@protocol ZAAppDelegateConnectorLayoutsStylesProtocol

- (NSBundle *)stylesBundle;
- (NSBundle *)zappLayoutsStylesBundle;
- (NSDictionary *)zappLayoutsStylesMappingDict;
- (BOOL)isZappLayoutsEnabled;
- (Class)zappLayoutViewController;

@end
