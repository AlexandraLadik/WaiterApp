//
//  ContentView.swift
//  WaiterApp
//
//  Created by Александра Ладик on 27.11.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var number = ""
    @State private var pin = ""
    @State private var nextScreen = false
    @State var viewModel = HomeViewModel()
    
    var body: some View {
        VStack (alignment: .center, spacing: 11) {
            Image(.logo)
            Text("WaiterApp")
                .foregroundStyle(.white)
                .font(.system(size: 32, design: .rounded))
                .font(.headline)
                .fontWeight(.light)
            Divider()
                .frame(height: 2)
                .background(Color.white)
                .padding(.horizontal, 16)
            Text("Интерактивный блокнот официанта")
                .foregroundStyle(.white)
                .font(.system(size: 16, design: .rounded))
                .lineLimit(nil)
                .frame(width: 266)
                .multilineTextAlignment(.center)
            VStack(spacing: 19) {
                TextField("Введите номер сотрудника", text: $number)
                    .modifier(RoundedTextField())
                    .keyboardType(.numberPad)
                if viewModel.checkNumber(number: number) {
                    SecureField("Введите пин-код", text: $pin)
                        .modifier(RoundedTextField())
                        .keyboardType(.numberPad)
                }
    
                Button(!viewModel.checkNumber(number: number) ? "Далее" : "Войти") {
                    if viewModel.checkNumber(number: number) && pin == "1234" {
                        nextScreen = true
                    }
                }
                    .frame(width: 306, height: 44)
                    .background(.customBrown)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(41)
        }
        .frame(width: 270)
        .animation(.easeInOut, value: viewModel.checkNumber(number: number))
        
        .offset(y: -141)
        .background {
            Image(.background)
                .ignoresSafeArea()
        }
        .sheet(isPresented: $nextScreen) { TablesView() }
    }
}


struct RoundedTextField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .multilineTextAlignment(.center)
            .frame(width: 306, height: 44)
            .background(.white)
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    RouteView()
}
