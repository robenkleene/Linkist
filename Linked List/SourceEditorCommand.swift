//
//  SourceEditorCommand.swift
//  Linked List
//
//  Created by Roben Kleene on 2/6/18.
//  Copyright © 2018 Roben Kleene. All rights reserved.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {

    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        // Implement your command here, invoking the completion handler when done. Pass it nil on success, and an NSError on failure.
        
        // Retrieve the contents of the current source editor.
        let lines = invocation.buffer.lines
        // Reverse the order of the lines in a copy.
        let updatedText = Array(lines.reversed())
        lines.removeAllObjects()
        lines.addObjects(from: updatedText)
        // Signal to Xcode that the command has completed.
        completionHandler(nil)
    }
    
}
