//
//  ExpenseItem.swift
//  SwiftUI-iExpense-Sample
//
//  Created by ekayaint on 16.09.2023.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id =  UUID()
    let name: String
    let type: String
    let amount: Double
}
