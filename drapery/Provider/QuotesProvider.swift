//
//  QuoteProvider.swift
//  drapery
//
//  Created by John on 8/8/23.
//

import Foundation
import CoreData
import SwiftUI

final class QuotesProvider {
    static let shared = QuotesProvider()
    
    private let persitentContainer: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        persitentContainer.viewContext
    }
    
    var newContext: NSManagedObjectContext {
        persitentContainer.newBackgroundContext()
    }
    private init() {
        persitentContainer = NSPersistentContainer(name: "WindowQuoteDataModel")
        persitentContainer.viewContext.automaticallyMergesChangesFromParent = true
        persitentContainer.loadPersistentStores {_, error in
            if let error {
                fatalError("Unable to load store with error: \(error)")
            }
        }
    }
}


