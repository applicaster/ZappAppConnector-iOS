//
//  ZAAppDelegateConnectorGenericProtocol.swift
//  ZappAppConnector
//
//  Created by Alex Zchut on 06/03/2018.
//  Copyright © 2018 Applicaster Ltd. All rights reserved.
//

import Foundation

@objc public protocol ZAAppDelegateConnectorGenericProtocol {

    // Retrieve account extensions dictionary
    @objc func accountExtensionsDictionary() -> Dictionary<String, AnyObject>
    
    /// Retreive view controller from navigation item
    ///
    /// - Parameter navigationItem: ZLNavigationItemInstance
    /// - Returns: UIViewController instance nil if can not be created
    @objc func viewController(fromNavigationItem navigationItem:Any) -> UIViewController?
}
