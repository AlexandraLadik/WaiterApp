//
//  TablesView.swift
//  WaiterApp
//
//  Created by Александра Ладик on 29.11.2024.
//

import SwiftUI

struct TablesView: View {
    @State var viewModel = TableViewModel(.init())
    let layout: [GridItem] = [ .init(), .init() ]
    var totalCheck: Int { viewModel.tables.reduce(0) { $0 + ($1.check) } }
        
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("Столы")
                        .foregroundStyle(.white)
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                        .padding()
                    LazyVGrid(columns: layout, spacing: 10) {
                        ForEach(viewModel.tables) { table in
                            NavigationLink {
                                TableDetailView(viewModel: .init(table))
                            } label: {
                                TableViewCell(viewModel: .init(table))
                            }
                            
                        }
                    }
                }
                Spacer()
                HStack {
                    Text("ИТОГО:")
                        .font(.system(size: 24, weight: .heavy, design: .rounded))
                    Spacer()
                    Text("\(totalCheck) Р")
                        .font(.system(size: 24, weight: .heavy, design: .rounded))
                }
                
            }
            .foregroundStyle(.white)
            .padding(.horizontal, 15)
            .background {
                Image(.background)
                    .ignoresSafeArea()
            }
        }
    }
       
    }
    




#Preview {
    TablesView()
}
