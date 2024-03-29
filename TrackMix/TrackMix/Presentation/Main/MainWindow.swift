//
//  MainWindow.swift
//  TrackMix
//
//  Created by Ricardo Sanchez-Macias on 3/28/24.
//

import AppKit

class MainWindow: NSWindow {
    
    struct Constants {
        static let title: String = "TrackMix"
        static let minSize: NSSize = NSSize(width: 280, height: 160)
    }
    
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: style, backing: backingStoreType, defer: flag)
        
        self.title = Self.Constants.title
        self.minSize = Self.Constants.minSize
    }
    
}
