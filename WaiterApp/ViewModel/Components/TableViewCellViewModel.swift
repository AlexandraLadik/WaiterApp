//
//  TableViewCellViewModel.swift
//  WaiterApp
//
//  Created by Александра Ладик on 04.12.2024.
//

import SwiftUI

@Observable
class TableViewCellViewModel {
    var tables: Table
    
    init(_ tables: Table) {
        self.tables = tables
    }
}
