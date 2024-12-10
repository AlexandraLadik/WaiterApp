//
//  HomeViewModel.swift
//  WaiterApp
//
//  Created by Александра Ладик on 10.12.2024.
//

import SwiftUI

@Observable
class HomeViewModel {
    var number: String = ""
    
    func checkNumber(number: String) -> Bool {
        let rightNumber = "1234"
        return number == rightNumber ? true : false
    }
}
