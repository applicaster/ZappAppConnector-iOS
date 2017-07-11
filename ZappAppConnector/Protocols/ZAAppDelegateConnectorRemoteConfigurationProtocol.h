//
//  ZAAppDelegateConnectorRemoteConfigurationProtocol.h
//  Pods
//
//  Created by Alex Zchut on 11/07/2017.
//
//

#import <Foundation/NSObject.h>

@protocol ZAAppDelegateConnectorRemoteConfigurationProtocol

- (NSString*) firebaseRemoteConfigurationStringForKey:(NSString*)key;
- (NSNumber*) firebaseRemoteConfigurationNumberForKey:(NSString*)key;
- (BOOL) firebaseRemoteConfigurationBoolForKey:(NSString*)key;
- (NSSet<NSString*>*) firebaseRemoteConfigurationKeysWithPrefix:(NSString*)key;
@end
