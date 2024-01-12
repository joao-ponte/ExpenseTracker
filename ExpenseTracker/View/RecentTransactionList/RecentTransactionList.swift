//
//  RecentTransactionList.swift
//  ExpenseTracker
//
//  Created by João Ponte on 12/01/2024.
//

import SwiftUI

struct RecentTransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            HStack {
                // Mark: Header Title
                Text("Recent Transactions")
                    .bold()
                
                Spacer()
                
                // Mark: Head Link
                NavigationLink {
                    TransactionList()
                } label: {
                    HStack(spacing: 4) {
                        Text("See All")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(AppColor.text)
                }
            }
            .padding(.top)
            
            //Mark: Recent Transaction List
            ForEach(Array(transactionListVM.transactions.prefix(5).enumerated()), 
                    id: \.element) { index, transaction in
                TransactionRow(transaction: transaction)
                
                Divider()
                    .opacity(index == 4 ? 0 : 1)
            }
        }
        .padding()
        .background(AppColor.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
                   
    }
}

struct RecentTransactionList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecentTransactionList()
            
            RecentTransactionList()
                .preferredColorScheme(.dark)
                
        }
        .environmentObject(TransactionListViewModel())
    }
}
