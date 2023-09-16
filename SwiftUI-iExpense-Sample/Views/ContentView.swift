//
//  ContentView.swift
//  SwiftUI-iExpense-Sample
//
//  Created by ekayaint on 16.09.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            } //: List
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
                    expenses.items.append(expense)
                } label: {
                    Image(systemName: "plus")
                }
                
            } //: Toolbar
        } //: NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
