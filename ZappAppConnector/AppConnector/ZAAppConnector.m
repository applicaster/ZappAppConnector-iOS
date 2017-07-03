//
//  ZAAppConnector.m
//  Zapp-App
//
//  Created by user on 21/06/2017.
//  Copyright © 2017 Applicaster LTD. All rights reserved.
//

#import "ZAAppConnector.h"

@interface ZAAppConnector ()


@end

static ZAAppConnector *_sharedInstance;

@implementation ZAAppConnector

#pragma mark - Singletone

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[ZAAppConnector alloc] init];
    });
    
    return _sharedInstance;
}

@end
