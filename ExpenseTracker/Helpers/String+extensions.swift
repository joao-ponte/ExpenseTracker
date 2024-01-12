//
//  Date+extensions.swift
//  ExpenseTracker
//
//  Created by João Ponte on 12/01/2024.
//

import Foundation

extension String {
    func formatDate(fromFormat: String, toFormat: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = fromFormat
        if let dateObject = dateFormatter.date(from: self) {
            dateFormatter.dateFormat = toFormat
            return dateFormatter.string(from: dateObject)
        } else {
            return "Invalid Date"
        }
    }
}
