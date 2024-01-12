//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by João Ponte on 09/01/2024.
//

import Foundation

var transactionPreviewData = Transaction(id: 1,
                                         date: "01/07/2024",
                                         institution: "Monzo",
                                         account: "Visa Monzo",
                                         merchant: "Apple",
                                         amount: 11.49,
                                         type: "debit",
                                         categoryId: 801,
                                         category: "Software",
                                         isPending: false,
                                         isTransfer: false,
                                         isExpense: true,
                                         isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
