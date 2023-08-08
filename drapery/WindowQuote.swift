//
//  WindowQuote.swift
//  drapery
//
//  Created by John on 8/8/23.
//

import Foundation
import CoreData

final class Contact: NSManagedObject {
    @NSManaged var quoteDate: Date
    @NSManaged var id: UUID
    @NSManaged var isCompleted: Bool
    @NSManaged var accentFabric1: Double
    @NSManaged var accentFabric2: Double
    @NSManaged var comments: String
    @NSManaged var hardwarePrice: Decimal
    @NSManaged var installationPrice: Decimal
    @NSManaged var interliningPrice: Decimal
    @NSManaged var laborEtcPrice: Decimal
    @NSManaged var liningPrice: Decimal
    @NSManaged var mainFabricYards: Double
    @NSManaged var totalPrice: Decimal
    @NSManaged var roomType: String
    @NSManaged var shopSupplyPrice: Decimal
    @NSManaged var treatements: String
    @NSManaged var customerName: String
    @NSManaged var phoneNumber: String
    @NSManaged var email: String
    
    
    override func awakeFromInsert() {
        super.awakeFromInsert()
        setPrimitiveValue(Date.now, forKey: "quoteDate")
        setPrimitiveValue(false, forKey: "isCompleted")
    }
}
