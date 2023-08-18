//
//  WindowQuote.swift
//  drapery
//
//  Created by John on 8/8/23.
//

import Foundation
import CoreData

final class WindowQuote: NSManagedObject {
    @NSManaged var startDate: Date
    @NSManaged var id: UUID
    @NSManaged var isCompleted: Bool
    @NSManaged var accentFabric1: String
    @NSManaged var accentFabric2: String
    @NSManaged var mainFabricYards: String
    @NSManaged var fringe: String
    @NSManaged var comments: String
    @NSManaged var miscellaneousPrice: String
    @NSManaged var hardwarePrice: String
    @NSManaged var installationPrice: String
    @NSManaged var interliningPrice: String
    @NSManaged var laborEtcPrice: String
    @NSManaged var liningPrice: String
    @NSManaged var totalPrice: String
    @NSManaged var roomType: String
    @NSManaged var shopSupplyPrice: String
    @NSManaged var treatments: String
    @NSManaged var customerName: String
    @NSManaged var phoneNumber: String
    @NSManaged var email: String
    
    
    override func awakeFromInsert() {
        super.awakeFromInsert()
        setPrimitiveValue(Date.now, forKey: "quoteDate")
        setPrimitiveValue(false, forKey: "isCompleted")
    }
}
