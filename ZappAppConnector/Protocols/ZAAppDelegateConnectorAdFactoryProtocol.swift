//
//  ZAAppDelegateConnectorAdvertisingProtocol.swift
//  ZappAppConnector
//
//  Created by Yael Buchman on 11/03/2018.
//

import Foundation

@objc public protocol GABannerControllerLifeCycleDelegate: NSObjectProtocol{
/**
 Implement this in order to override the default hiding behavior if there are no ads to show.
 */
    @objc optional func bannerControllerHideBannerContainer()
/**
 Implement this in order to override the default hiding behavior if there are no ads to show.
 */
    @objc optional func bannerControllerShowBannerContainerWith(height:CGFloat)

    @objc optional func bannerControllerDidAppear()
    @objc optional func bannerControllerDidDisappear()
    
    @objc optional func bannerHeightShouldBeUpdatedWith(height:CGFloat)
}


// Allows lower layer classes like plugins to send analytics using the analytics providers set for the app
@objc public protocol ZAAppDelegateConnectorAdFactoryProtocol {
    @objc func loadBanner()
    
    @objc func create(bannerContainer: UIView, rootViewController: UIViewController?, delegate: Any) -> Any?
}

