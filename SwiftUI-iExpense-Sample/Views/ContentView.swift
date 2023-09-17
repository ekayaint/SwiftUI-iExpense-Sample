//
//  ContentView.swift
//  SwiftUI-iExpense-Sample
//
//  Created by ekayaint on 16.09.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        } //: VStack
                        Spacer()
                        Text(item.amount, format: .currency(code: "USD"))
                    } //: HStack
                } //: ForEach
                .onDelete(perform: removeItems)
            } //: List
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
                
            } //: Toolbar
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        } //: NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
