//
//  ClickView.swift
//  TrackMix
//
//  Created by Ricardo Sanchez-Macias on 3/28/24.
//

import AppKit

protocol KeyEventViewViewDelegate {
    func handleKey(with event: NSEvent)
}

class KeyEventView: NSView {
    
    var delegate: KeyEventViewViewDelegate?
    
    override var acceptsFirstResponder: Bool {
        return true
    }
    
    override func keyDown(with event: NSEvent) {
        delegate?.handleKey(with: event)
    }
    
}
