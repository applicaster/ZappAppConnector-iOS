//
//  ZAAppDelegateConnectorRemoteConfigurationProtocol.h
//  Pods
//
//  Created by Alex Zchut on 11/07/2017.
//
//

#import <Foundation/NSObject.h>

@protocol ZAAppDelegateConnectorFirebaseRemoteConfigurationProtocol

- (NSString *) stringForKey:(NSString *)key;
- (NSNumber *) numberForKey:(NSString *)key;
- (BOOL) boolForKey:(NSString *)key;
- (NSSet<NSString *> *) keysWithPrefix:(NSString *)prefix;
@end
