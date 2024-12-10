//
//  TableViewCell.swift
//  WaiterApp
//
//  Created by Александра Ладик on 04.12.2024.
//

import SwiftUI

struct TableViewCell: View {
    @State var viewModel: TableViewCellViewModel
    var body: some View {
        VStack(spacing: 12) {
            Text("Стол \(viewModel.tables.number)")
                    .font(.headline)
                    .fontWeight(.heavy)
            Text(viewModel.tables.isEmpty ? "Свободен" : "Гостей: \(viewModel.tables.numberOfGueasts)")
            Text(viewModel.tables.isEmpty ? "" : "Чек: \(viewModel.tables.check) Р")
            }
        .foregroundStyle(.white)
        .frame(width: 180, height: 180)
        .background(viewModel.tables.tableColor)
        .clipShape(RoundedRectangle(cornerRadius: 20))
       
    }

    
}

#Preview {
    TableViewCell(viewModel: .init(Table.mockData[0]))
}
