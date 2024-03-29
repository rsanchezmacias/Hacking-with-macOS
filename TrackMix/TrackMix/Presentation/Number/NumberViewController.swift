//
//  NumberViewController.swift
//  TrackMix
//
//  Created by Ricardo Sanchez-Macias on 3/28/24.
//

import AppKit

class NumberViewController: NSViewController {
    
    static let storyboard: String = "NumberViewController"
    
    @IBOutlet weak var numberLabel: NSTextField!
    
    var number: Float = 0
    
    private let escapeKeyCode: Int = 53
    
    override func viewDidLoad() {
        super.viewDidLoad()
        (self.view as? KeyEventView)?.delegate = self
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        numberLabel.stringValue = "\(number)"
    }
    
    override func mouseDown(with event: NSEvent) {
        super.mouseDown(with: event)
        self.view.window?.performDrag(with: event)
    }
    
}

extension NumberViewController: KeyEventViewViewDelegate {
    
    func handleKey(with event: NSEvent) {
        if event.keyCode == self.escapeKeyCode {
            self.view.window?.performClose(self)
            self.view.window?.close()
        }
    }
    
}
