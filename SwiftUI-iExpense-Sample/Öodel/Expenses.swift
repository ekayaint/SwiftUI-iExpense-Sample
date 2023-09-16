//
//  Expenses.swift
//  SwiftUI-iExpense-Sample
//
//  Created by ekayaint on 16.09.2023.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
