//
//  DishCell.swift
//  WaiterApp
//
//  Created by Александра Ладик on 06.12.2024.
//

import SwiftUI

struct DishCell: View {
    @State var viewModel: DishCellViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(viewModel.dish.name)
                .font(.system(.headline, weight: .heavy))
            HStack(spacing: 100) {
                Text("\(viewModel.dish.price) Р")
                Text("\(viewModel.dish.portions) шт")
                Text("\(viewModel.dish.price * viewModel.dish.portions) Р")
            }
        }
        .frame(width: 369, height: 93)
        .background(viewModel.tables.tableColor)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .foregroundStyle(.white)
    }
}

#Preview {
    DishCell(viewModel: .init(dish: Table.mockData[1].dishes[0], tables: Table.mockData[1]))
}
