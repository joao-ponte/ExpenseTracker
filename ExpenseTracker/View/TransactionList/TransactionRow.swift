//
//  TramsactionRow.swift
//  ExpenseTracker
//
//  Created by João Ponte on 09/01/2024.
//

import SwiftUI
import SwiftUIFontIcon

struct TransactionRow: View {
    
    var transaction: Transaction
    
    var body: some View {
        HStackLayout(spacing: 20) {
            // Mark: Transaction Category Icon
            RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .fill(AppColor.icon.opacity(0.3))
                .frame(width: 44, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .overlay {
                    FontIcon.text(.awesome5Solid(code: transaction.icon), fontsize: 24, color: AppColor.icon)
                }
            
            VStackLayout(alignment: .leading, spacing: 6) {
                // Mark: Transaction Merchant
                Text(transaction.merchant)
                    .bold()
                    .lineLimit(1)
                
                // Mark: Transaction Category
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                // Mark: Transaction Date
                Text(transaction.formattedDate)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            // Mark: Transaction Date
            Text(transaction.signedAmount, format: .currency(code: "GBP"))
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ? AppColor.text : .primary)
        }
        .padding([.top, .bottom], 8)
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TransactionRow(transaction: transactionPreviewData)
            TransactionRow(transaction: transactionPreviewData)
                .preferredColorScheme(.dark)
        }
    }
}
