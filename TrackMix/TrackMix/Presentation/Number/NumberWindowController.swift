//
//  NumberWindowController.swift
//  TrackMix
//
//  Created by Ricardo Sanchez-Macias on 3/28/24.
//

import AppKit

class NumberWindowController: NSWindowController {
    
    static let storybaord: String = "NumberWindowController"
    
    override func windowDidLoad() {
        super.windowDidLoad()
        resize()
    }
    
    func setTitle(_ title: String) {
        self.window?.title = title
    }
    
    func resize() {
        guard let window = self.window else {
            return
        }
        
        window.setContentSize(NumberWindow.Constants.windowSize)
        window.layoutIfNeeded()
    }
    
}
