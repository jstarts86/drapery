//
//  EditWindowQuoteViewModel.swift
//  drapery
//
//  Created by John on 8/16/23.
//

import Foundation
import CoreData

final class EditWindowQuoteViewModel: ObservableObject {
    
    @Published var windowQuote: WindowQuote
    
    private let context: NSManagedObjectContext
    
    init(provider: QuotesProvider, contact: WindowQuote? = nil) {
        self.context = provider.newContext
        self.windowQuote = WindowQuote(context: self.context)
        
    }
    
    func save() throws {
        
        if context.hasChanges {
            try context.save()
        }
        
    }
    
}

