//
//  MainViewModel.swift
//  TrackMix
//
//  Created by Ricardo Sanchez-Macias on 3/28/24.
//

import Combine

class MainViewModel {
    
    @Published var value: Float = 50
    
//    func updateValue(with value: String) {
//        guard let value = Int(value) else {
//            return
//        }
//        self.updateValue(with: value)
//    }
    
    func updateValue(with value: Float) {
        self.value = value
    }
    
}
