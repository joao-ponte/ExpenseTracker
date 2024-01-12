//
//  TransactionModelMonzo.swift
//  ExpenseTracker
//
//  Created by João Ponte on 09/01/2024.
//

import Foundation

struct TransactionMonzo: Codable {
    let transactions: [TransactionDetail]
}

struct TransactionDetail: Codable {
    let id: String
    let created: String
    let description: String
    let amount: Double
    let fees: Fees?
    let currency: String
    let merchant: Merchant?
    let merchantFeedbackUri: String
    let notes: String
    let metadata: Metadata
    let labels: String?
    let attachments: String?
    let international: String?
    let category: String
    let categories: [String: Double]
    let isLoad: Bool
    let settled: String
    let localAmount: Double
    let localCurrency: String
    let updated: String
    let accountId: String
    let userId: String?
    let counterparty: Counterparty
    let scheme: String
    let dedupeId: String
    let originator: Bool
    let includeInSpending: Bool
    let canBeExcludedFromBreakdown: Bool
    let canBeMadeSubscription: Bool
    let canSplitTheBill: Bool
    let canAddToTab: Bool
    let canMatchTransactionsInCategorization: Bool
    let amountIsPending: Bool
    let atmFeesDetailed: String?
    let parentAccountId: String

    private enum CodingKeys: String, CodingKey {
        case id, created, description, amount, fees, currency, merchant, notes, metadata, labels, attachments, international, category, categories
        case isLoad = "is_load"
        case settled, localAmount, localCurrency, updated, accountId, userId, counterparty, scheme, dedupeId, originator, includeInSpending, canBeExcludedFromBreakdown, canBeMadeSubscription, canSplitTheBill, canAddToTab, canMatchTransactionsInCategorization, amountIsPending, atmFeesDetailed, parentAccountId
        case merchantFeedbackUri = "merchant_feedback_uri"
    }
}

struct Fees: Codable {
    
}

struct Merchant: Codable {
    let id, groupId, name, logo: String
    let emoji, category: String
    let online, atm: Bool
    let address: Address
    let disableFeedback: Bool
    let suggestedTags: String
    let metadata: MerchantMetadata

    private enum CodingKeys: String, CodingKey {
        case id, groupId, name, logo, emoji, category, online, atm, address, disableFeedback, suggestedTags, metadata
    }
}

struct Address: Codable {
    let shortFormatted, city: String
    let latitude, longitude: Double
    let zoomLevel: Int
    let approximate: Bool
    let formatted, address, region, country: String
    let postcode: String

    private enum CodingKeys: String, CodingKey {
        case shortFormatted = "short_formatted", city, latitude, longitude, zoomLevel, approximate, formatted, address, region, country, postcode
    }
}

struct MerchantMetadata: Codable {
    let suggestedTags, website: String

    private enum CodingKeys: String, CodingKey {
        case suggestedTags, website
    }
}

struct Metadata: Codable {
    let p2pInitiator, p2pTransferId, payeeId, paymentRequestId: String

    private enum CodingKeys: String, CodingKey {
        case p2pInitiator = "p2p_initiator"
        case p2pTransferId = "p2p_transfer_id"
        case payeeId = "payee_id"
        case paymentRequestId = "payment_request_id"
    }
}

struct Counterparty: Codable {
    let accountId, name, preferredName, userId: String

    private enum CodingKeys: String, CodingKey {
        case accountId = "account_id", name, preferredName = "preferred_name", userId = "user_id"
    }
}
