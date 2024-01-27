//
//  Logger.swift
//  01. hello_ios_swift
//
//  Created by yu on 2024/1/26.
//

import os

public struct LoggerWrapper {
    private static let logger = Logger()
   
    static func trace(_ msg: String) {
        self.logger.trace("[Trace]: \(msg)")
    }
    
    static func debug(_ msg: String) {
        self.logger.debug("[Debug]: \(msg)")
    }
    
    static func info(_ msg: String) {
        self.logger.info("[Info]: \(msg)")
    }
    
    static func warning(_ msg: String) {
        logger.warning("[Warning]: \(msg)")
    }
    
    
    static func error(_ msg: String) {
        logger.error("[Error]: \(msg)")
    }
}
