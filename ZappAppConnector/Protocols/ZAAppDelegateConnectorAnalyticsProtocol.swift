//
//  ZAAppDelegateConnectorAnalyticsProtocol.swift
//  ZappAppConnector
//
//  Created by Simon Borkin on 2/9/18.
//

import Foundation

@objc public protocol ZAAppDelegateConnectorAnalyticsProtocol {
    @objc func trackEvent(name: String, parameters: Dictionary<String, Any>)
    @objc func trackScreenView(name: String, parameters: Dictionary<String, Any>)
}
