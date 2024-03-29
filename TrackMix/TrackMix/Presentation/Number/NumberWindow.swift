//
//  NumberWindow.swift
//  TrackMix
//
//  Created by Ricardo Sanchez-Macias on 3/28/24.
//

import AppKit

class NumberWindow: NSWindow {
    
    struct Constants {
        static let windowSize: NSSize = NSSize(width: 400, height: 400)
    }
    
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        let styleMask: NSWindow.StyleMask = [.closable]
        
        super.init(contentRect: contentRect, styleMask: styleMask, backing: backingStoreType, defer: flag)
        
        self.minSize = Self.Constants.windowSize
        self.maxSize = Self.Constants.windowSize
    }
    
    override var canBecomeKey: Bool {
        return true
    }
    
    override var canBecomeMain: Bool {
        return true
    }
    
}
