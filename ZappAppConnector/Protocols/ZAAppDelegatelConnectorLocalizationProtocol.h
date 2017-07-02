//
//  ZAAppDelegatelConnectorLocalizationProtocol.h
//  ZappAppConnector
//
//  Created by Alex Zchut on 02/07/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//

@protocol ZAAppDelegatelConnectorLocalizationProtocol

- (NSString *)localizationStringByKey:(NSString *)localizationKey defaultString:(NSString *)defaultString;

@end
