//
//  ZAAppDelegateConnectorFacebookAccountKitProtocol.h
//  ZappAppConnector
//
//  Created by sborkin on 26/12/2017.
//  Copyright © 2017 Applicaster Ltd. All rights reserved.
//

#import <Foundation/NSObject.h>

typedef NS_ENUM(NSUInteger, ZAAccountKitLoginType) {
    ZAAccountKitLoginTypeEmail,
    ZAAccountKitLoginTypePhone
};

typedef NS_ENUM(NSUInteger, ZAAccountKitStatus) {
    ZAAccountKitStatusFailed,
    ZAAccountKitStatusCompleted
};


@interface ZAAccountKitUser : NSObject

@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *phone;

@end

typedef void(^AccountKitLoginCompletionBlock)(ZAAccountKitStatus, ZAAccountKitUser *);

@protocol ZAAppDelegateConnectorFacebookAccountKitProtocol

- (BOOL)isAuthenticated;
- (void)performLoginWithType:(ZAAccountKitLoginType)type completion:(AccountKitLoginCompletionBlock)completion;

@end
