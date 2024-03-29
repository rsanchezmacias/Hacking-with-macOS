//
//  ViewController.swift
//  TrackMix
//
//  Created by Ricardo Sanchez-Macias on 3/28/24.
//

import Cocoa
import Combine

class MainViewController: NSViewController {
    
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var slider: NSSlider!
    @IBOutlet weak var muteButton: NSButton!
    
    private var model: MainViewModel!
    private var subscriptions: Set<AnyCancellable> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        model = MainViewModel()
        
        setupTextField()
        connectToViewModel()
    }
    
    private func connectToViewModel() {
        model.$value.receive(on: DispatchQueue.main).sink { [weak self] value in
            self?.textField.stringValue = "\(value)"
            self?.slider.floatValue = value
        }.store(in: &subscriptions)
    }
    
    private func setupTextField() {
        textField.delegate = self
        
        let formatter = NumberFormatter()
        formatter.minimum = 0
        formatter.maximum = 100
        formatter.allowsFloats = true
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 0
        
        textField.formatter = formatter
    }
    
    @IBAction func sliderValueDidChange(_ sender: Any) {
        model.updateValue(with: slider.floatValue)
    }
    
    @IBAction func didTapMuteButton(_ sender: Any) {
        model.updateValue(with: 0)
    }
    
    @IBAction func didTapGenerate(_ sender: Any) {
        let windowControllerStoryboard = NSStoryboard(name: NumberWindowController.storybaord, bundle: nil)
        let windowController = windowControllerStoryboard.instantiateInitialController() as? NumberWindowController
        
        if let numberViewController = windowController?.contentViewController as? NumberViewController {
            numberViewController.number = model.value
            windowController?.setTitle("\(model.value)")
            windowController?.showWindow(self)
        }
    }
    
}

extension MainViewController: NSTextFieldDelegate {
    
    func controlTextDidChange(_ obj: Notification) {
        if textField.stringValue.count == 0 {
            model.updateValue(with: 0)
        } else {
            model.updateValue(with: textField.floatValue)
        }
        
        self.textField.stringValue = "\(model.value)"
    }
    
}
