//
//  ExampleAppConfigManager.swift
//  DynamicAppConfig Example
//
//  App config: manager class to facilitate app config selection and model definition
//

import UIKit
import DynamicAppConfig

class ExampleAppConfigManager : AppConfigBaseManager {

    // --
    // MARK: Singleton instance
    // --
    
    static let shared = ExampleAppConfigManager()

    
    // --
    // MARK: Methods
    // --
    
    override func obtainBaseModelInstance() -> AppConfigBaseModel {
        return ExampleAppConfigModel()
    }
    
    static func currentConfig() -> ExampleAppConfigModel {
        return shared.currentConfigInstance() as! ExampleAppConfigModel
    }

}
