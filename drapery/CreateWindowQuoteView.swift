//
//  CreateQuoteView.swift
//  drapery
//
//  Created by John on 8/9/23.
//

import SwiftUI

struct CreateWindowQuoteView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        List {
            Section("General") {
                
                TextField("Customer Name", text: .constant(""))
                    .keyboardType(.namePhonePad)
                TextField("Room Type", text: .constant(""))
                    .keyboardType(.default)
                TextField("Treatement", text: .constant(""))
                    .keyboardType(.default)
                TextField("Email", text: .constant(""))
                    .keyboardType(.emailAddress)
                TextField("Phone Number", text:.constant(""))
                    .keyboardType(.phonePad)
                DatePicker("Date",
                           selection: .constant(.now),
                           displayedComponents: [.date])
                .datePickerStyle(.compact)
                
                Toggle("Completed", isOn: .constant(false))
            }
            Section ("Measurments") {
                
                TextField("Main Fabric Yard", text: .constant(""))
                    .keyboardType(.decimalPad)
                
                TextField("Accent Fabric One", text: .constant(""))
                    .keyboardType(.decimalPad)
                
                TextField("Accent Fabric Two", text: .constant(""))
                    .keyboardType(.decimalPad)
                
                TextField("Fringe", text: .constant(""))
                    .keyboardType(.decimalPad)
                
                TextField("Miscelaneous", text: .constant(""))
                    .keyboardType(.decimalPad)
                
            }
            Section ("Costs") {
                
                TextField("Shop Supply", text: .constant(""))
                    .keyboardType(.decimalPad)
                
                TextField("Interlining", text: .constant(""))
                    .keyboardType(.decimalPad)
                TextField("Lining", text: .constant(""))
                    .keyboardType(.decimalPad)
                TextField("Labor & Etc", text: .constant(""))
                    .keyboardType(.decimalPad)
                TextField("Hardware", text: .constant(""))
                    .keyboardType(.decimalPad)
                TextField("Installation", text: .constant(""))
                    .keyboardType(.decimalPad)
                
            }
            Section("Comments") {
                Text("12 For evils beyond number have surrounded me; My guilty deeds have overtaken me, so that I am not able to see; They are more numerous than the hairs of my head, And my heart has failed me. 13 Be pleased, Lord, to rescue me; Hurry, Lord, to help me. 14 May those be ashamed and humiliated together Who seek my life to destroy it; May those be turned back and dishonored Who delight in my hurt. (‭‭‭Psalms‬ ‭40‬‬:‭12‬-‭14‬ ‭NASB2020‬‬)")
            }
        }
        .navigationTitle("Name Here")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    dismiss()
                }
            }
        
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
        }
    }
}
struct CreateWindowQuoteView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            CreateWindowQuoteView()
        }

    }
}
