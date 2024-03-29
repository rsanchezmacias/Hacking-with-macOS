//
//  MainWindowController.swift
//  TrackMix
//
//  Created by Ricardo Sanchez-Macias on 3/28/24.
//

import AppKit

class MainWindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        self.window?.title = MainWindow.Constants.title
        
        DispatchQueue.main.async { [weak self]  in
            self?.resizeWindow()
        }
    }
    
    func resizeWindow() {
        guard let window = self.window else { return }
        
        window.setContentSize(NSSize(
            width: MainWindow.Constants.minSize.width,
            height: MainWindow.Constants.minSize.height
        ))
        
        self.window?.layoutIfNeeded()
    }
    
}
