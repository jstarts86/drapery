//
//  QuoteProvider.swift
//  drapery
//
//  Created by John on 8/8/23.
//

import Foundation
import CoreData


final class QuotesProvider {
    static let share = QuotesProvider()
    
    private let persitentContainer: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        persitentContainer.viewContext
    }
    private init() {
        persitentContainer = NSPersistentContainer(name: "QuotesDataModel")
        persitentContainer.viewContext.automaticallyMergesChangesFromParent = true
        persitentContainer.loadPersistentStores {_, error in
            if let error {
                fatalError("Unable to load store with error: \(error)")
            }
        }
    }
}


