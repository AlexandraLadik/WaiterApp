//
//  Table.swift
//  WaiterApp
//
//  Created by Александра Ладик on 29.11.2024.
//

import Foundation
import SwiftUI

struct Table: Identifiable {
    let id = UUID()
    let number: Int
    var numberOfGueasts: Int
    var dishes: [Dish]
    var check: Int {
        dishes.reduce(0) { $0 + $1.price }
        }
    var isEmpty: Bool {
        numberOfGueasts == 0 ? true : false
    }
    
    var tableColor: Color {
        let bgColors: [Color] = [.blueTable, .greenTable]
        let index = number - 1
        let isGreen = (index / 2 + index % 2) % 2 == 0
        return isGreen ? bgColors[0] : bgColors[1]
    }
    
    static var mockData: [Table] = [
        Table(number: 1, numberOfGueasts: 0, dishes: []),
        Table(number: 2, numberOfGueasts: 6, dishes: [Dish.mockData[1], Dish.mockData[2], Dish.mockData[3]]),
        Table(number: 3, numberOfGueasts: 2, dishes: [Dish.mockData[1], Dish.mockData[4], Dish.mockData[3]]),
        Table(number: 4, numberOfGueasts: 0, dishes: []),
        Table(number: 5, numberOfGueasts: 2, dishes: [Dish.mockData[1], Dish.mockData[2], Dish.mockData[3]]),
        Table(number: 6, numberOfGueasts: 3, dishes: [Dish.mockData[1], Dish.mockData[2], Dish.mockData[3]])
    ]
    }

    
