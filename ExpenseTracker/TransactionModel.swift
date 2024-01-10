//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by João Ponte on 09/01/2024.
//

import Foundation

struct Transaction: Codable, Identifiable {
    
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    var signedAmount: Double {
        return type == TransactionType.credit.rawValue ? amount : -amount
    }
    
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}



