//
//  DishCellViewModel.swift
//  WaiterApp
//
//  Created by Александра Ладик on 06.12.2024.
//

import SwiftUI

@Observable
class DishCellViewModel {
    var dish: Dish
    var tables: Table
    
   
    init(dish: Dish, tables: Table) {
        self.dish = dish
        self.tables = tables
    }
}
