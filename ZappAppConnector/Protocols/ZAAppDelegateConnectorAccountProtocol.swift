//
//  ZAAppDelegateConnectorAccountProtocol.swift
//  ZappAppConnector
//
//  Created by Alex Zchut on 06/03/2018.
//  Copyright © 2018 Applicaster Ltd. All rights reserved.
//

import Foundation

@objc public protocol ZAAppDelegateConnectorAccountProtocol {

    // Retrieve account extensions dictionary
    @objc func extensionsDictionary() -> Dictionary<String, AnyObject>
}
