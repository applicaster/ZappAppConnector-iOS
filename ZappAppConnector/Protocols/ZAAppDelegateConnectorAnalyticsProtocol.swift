//
//  ZAAppDelegateConnectorAnalyticsProtocol.swift
//  ZappAppConnector
//
//  Created by Simon Borkin on 2/9/18.
//

import Foundation

// Allows lower layer classes like plugins to send analytics using the analytics providers set for the app
@objc public protocol ZAAppDelegateConnectorAnalyticsProtocol {
    // The event will be sent using all the analytics providers added as plugins
    // It might be the event is blacklisted in the provider plugin configuration, in that case it will be ignored
    @objc func trackEvent(name: String, parameters: Dictionary<String, Any>)
    
    // Sends an event with the parameter title indicating the selected screen was presented to the user
    // Each provider names the event itself differently (for example Page View)
    // The event will also include a Trigger parameter which indicates the title of the previous screen
    @objc func trackScreenView(screenTitle: String, parameters: Dictionary<String, Any>)
}
