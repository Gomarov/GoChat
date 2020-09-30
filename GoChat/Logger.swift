//
//  Logger.swift
//  GoChat
//
//  Created by  Pavel on 30.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import Foundation

class Logger {
    static func log(method: String = #function) {
        self.log(text: "Was called: \(method)")
    }
    static func log(from firstState: String,
                    to secondState: String,
                    method: String = #function) {
        self.log(text: "Application moved from \(firstState) to \(secondState): \(method)")
    }
    private static func log(text: String) {
        if ProcessInfo.processInfo.environment["DebugMode"] != nil {
        print(text)
        }
    }
}
