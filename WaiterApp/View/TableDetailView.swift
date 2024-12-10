//
//  TableDetailView.swift
//  WaiterApp
//
//  Created by Александра Ладик on 06.12.2024.
//

import SwiftUI

struct TableDetailView: View {
    @State var viewModel: TableDetailViewModel
    var body: some View {
        VStack {
            ScrollView {
                Text("Стол \(viewModel.tables.number)")
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .padding()
                if viewModel.tables.dishes.isEmpty && viewModel.tables.numberOfGueasts != 0 {
                        Text("Заказ не сделан")
                            .foregroundStyle(.gray)
                } else if viewModel.tables.dishes.isEmpty && viewModel.tables.numberOfGueasts == 0 {
                    Text("Стол свободен")
                        .foregroundStyle(.gray)
                } else {
                    ForEach(viewModel.tables.dishes) { dish in
                        DishCell(viewModel: .init(dish: dish, tables: viewModel.tables))
                            .padding(10)
                    }
                }
            }
        }
        .background {
            Image(.background)
                .ignoresSafeArea()
        }
        .foregroundStyle(.white)
    }
       
}

#Preview {
    TableDetailView(viewModel: .init(Table.mockData[1]))
}
