//
//  TableDetailViewModel.swift
//  WaiterApp
//
//  Created by Александра Ладик on 06.12.2024.
//

import SwiftUI

@Observable
class TableDetailViewModel {
    var tables: Table
    
    init(_ tables: Table) {
        self.tables = tables
    }
}
