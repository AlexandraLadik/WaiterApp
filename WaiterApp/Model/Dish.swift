//
//  Dish.swift
//  WaiterApp
//
//  Created by Александра Ладик on 29.11.2024.
//

import Foundation

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let price: Int
    let description: String
    var portions: Int = 1
    
    
    static var mockData: [Dish] = [
                Dish(name: "Салат Цезарь", price: 350, description: "Классический салат с курицей, сыром пармезан и сухариками"),
                Dish(name: "Борщ", price: 250, description: "Традиционный русский суп с говядиной, свеклой и сметаной"),
                Dish(name: "Шашлык", price: 500, description: "Сочное мясо, приготовленное на гриле, подается с соусом"),
                Dish(name: "Паста Карбонара", price: 400, description: "Итальянская паста с беконом, сыром пармезан и соусом"),
                Dish(name: "Мороженое", price: 150, description: "Ванильное мороженое с шоколадным сиропом")
    ]
}
