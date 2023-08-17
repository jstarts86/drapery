//
//  CreateQuoteView.swift
//  drapery
//
//  Created by John on 8/9/23.
//

import SwiftUI

struct CreateWindowQuoteView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var vm: EditWindowQuoteViewModel


    var body: some View {
        List {
            Section("General") {
                TextField("Customer Name", text: $vm.windowQuote.customerName)
                    .keyboardType(.namePhonePad)
                TextField("Room Type", text: $vm.windowQuote.roomType)
                    .keyboardType(.default)
                TextField("Treatement", text: $vm.windowQuote.treatements)
                    .keyboardType(.default)
                TextField("Email", text: $vm.windowQuote.email)
                    .keyboardType(.emailAddress)
                TextField("Phone Number", text: $vm.windowQuote.phoneNumber)
                    .keyboardType(.phonePad)
                DatePicker("Date", selection: $vm.windowQuote.startDate, displayedComponents: [.date])
                    .datePickerStyle(.compact)
                
                Toggle("Completed", isOn: $vm.windowQuote.isCompleted)
            }
            Section ("Measurments") {
                TextField("Main Fabric Yard", text: $vm.windowQuote.mainFabricYards)
                    .keyboardType(.decimalPad)
                TextField("Accent Fabric One", text: $vm.windowQuote.accentFabric1)
                    .keyboardType(.decimalPad)
                TextField("Accent Fabric Two", text: $vm.windowQuote.accentFabric2)
                    .keyboardType(.decimalPad)
                TextField("Fringe", text: $vm.windowQuote.fringe)
                    .keyboardType(.decimalPad)
            }
            Section ("Costs") {
                TextField("Miscellaneous", text: $vm.windowQuote.miscellaneousPrice)
                    .keyboardType(.decimalPad)
                TextField("Shop Supply", text: $vm.windowQuote.shopSupplyPrice)
                    .keyboardType(.decimalPad)
                TextField("Interlining", text:  $vm.windowQuote.interliningPrice)
                    .keyboardType(.decimalPad)
                TextField("Lining", text: $vm.windowQuote.liningPrice)
                    .keyboardType(.decimalPad)
                TextField("Labor & Etc", text: $vm.windowQuote.laborEtcPrice)
                    .keyboardType(.decimalPad)
                TextField("Hardware", text: $vm.windowQuote.hardwarePrice)
                    .keyboardType(.decimalPad)
                TextField("Installation", text: $vm.windowQuote.installationPrice)
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
                    do {
                        try vm.save()
                        dismiss()
                    } catch {
                        print(error)
                    }
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
        NavigationStack {
            CreateWindowQuoteView(vm: .init(provider: .shared))
        }
    }
}
