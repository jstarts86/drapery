//
//  CreateQuoteView.swift
//  drapery
//
//  Created by John on 8/9/23.
//

import SwiftUI

struct CreateWindowQuoteView: View {
    @Environment(\.dismiss) private var dismiss
    enum FocusedField {
        case dec, double, int
    }
    @ObservedObject var vm: EditWindowQuoteViewModel
    @FocusState private var focusedField: FocusedField?
    var body: some View {
        List {
            Section("General") {
                TextField("Customer Name", text: $vm.windowQuote.customerName)
                    .keyboardType(.namePhonePad)
                TextField("Room Type", text: $vm.windowQuote.roomType)
                    .keyboardType(.default)
                TextField("Treatement", text: $vm.windowQuote.treatments)
                    .keyboardType(.default)
                TextField("Email", text: $vm.windowQuote.email)
                    .keyboardType(.emailAddress)
                TextField("Phone Number", text: $vm.windowQuote.phoneNumber)
                    .focused($focusedField, equals: .dec)
                    .numbersOnly($vm.windowQuote.phoneNumber)
                DatePicker("Start Date", selection: $vm.windowQuote.startDate, displayedComponents: [.date])
                    .datePickerStyle(.compact)
                
                Toggle("Completed", isOn: $vm.windowQuote.isCompleted)
            }
            Section ("Measurments") {
                TextField("Main Fabric Yard", text: $vm.windowQuote.mainFabricYards)
                    .focused($focusedField,equals: .double)
                    .numbersOnly($vm.windowQuote.mainFabricYards, includeDecimal: true)
                TextField("Accent Fabric One", text: $vm.windowQuote.accentFabric1)
                    .focused($focusedField, equals: .double)
                    .numbersOnly($vm.windowQuote.accentFabric1, includeDecimal: true)
                TextField("Accent Fabric Two", text: $vm.windowQuote.accentFabric2)
                    .focused($focusedField, equals: .double )
                    .numbersOnly($vm.windowQuote.accentFabric2, includeDecimal: true)
                TextField("Fringe", text: $vm.windowQuote.fringe)
                    .focused($focusedField, equals: .double)
                    .numbersOnly($vm.windowQuote.fringe, includeDecimal: true)
            }
            Section ("Costs") {
                TextField("Miscellaneous", text: $vm.windowQuote.miscellaneousPrice)
                    .focused($focusedField, equals: .dec)
                    .numbersOnly($vm.windowQuote.miscellaneousPrice, includeDecimal: true)
                TextField("Shop Supply", text: $vm.windowQuote.shopSupplyPrice)
                    .focused($focusedField, equals: .dec)
                    .numbersOnly($vm.windowQuote.shopSupplyPrice, includeDecimal: true)
                TextField("Interlining", text:  $vm.windowQuote.interliningPrice)
                    .focused($focusedField, equals: .dec)
                    .numbersOnly($vm.windowQuote.interliningPrice, includeDecimal: true)
                TextField("Lining", text: $vm.windowQuote.liningPrice)
                    .focused($focusedField, equals: .dec)
                    .numbersOnly($vm.windowQuote.liningPrice, includeDecimal: true)
                TextField("Labor & Etc", text: $vm.windowQuote.laborEtcPrice)
                    .focused($focusedField, equals: .dec)
                    .numbersOnly($vm.windowQuote.laborEtcPrice, includeDecimal: true)
                TextField("Hardware", text: $vm.windowQuote.hardwarePrice)
                    .focused($focusedField, equals: .dec)
                    .numbersOnly($vm.windowQuote.hardwarePrice, includeDecimal: true)
                TextField("Installation", text: $vm.windowQuote.installationPrice)
                    .focused($focusedField, equals: .dec)
                    .numbersOnly($vm.windowQuote.installationPrice, includeDecimal: true)
            }
            Section("Comments") {
                TextField("",
                     text: $vm.windowQuote.comments,
                     axis: .vertical)
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
            ToolbarItem(placement: .keyboard) {
                Spacer()
            }
            ToolbarItem(placement: .keyboard) {
                Button {
                    focusedField = nil
                } label: {
                    Image(systemName: "keyboard.chevron.compact.down")
                }
            }
        }
        .onAppear {
            UITextField.appearance().clearButtonMode = .whileEditing
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
