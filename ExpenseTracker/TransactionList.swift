//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by João Ponte on 12/01/2024.
//

import SwiftUI

struct TransactionList: View {
    
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    var body: some View {
        VStack {
            List {
                // Mark: Transaction Groups
                ForEach(Array(transactionListVM.groupTransactionsByMOnth()), id: \.key) { month, transactions in
                    Section {
                        // Mark: Transaction List
                        ForEach(transactions) { transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        // Mark: Transaction Month
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            
        }
        .navigationTitle("Transaction")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransactionList_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                TransactionList()
            }
            NavigationView {
                TransactionList()
                    .preferredColorScheme(.dark)
            }
        }
        .environmentObject(TransactionListViewModel())
    }
}
