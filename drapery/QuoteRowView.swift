//
//  QuoteRowView.swift
//  drapery
//
//  Created by John on 8/8/23.
//

import SwiftUI

struct QuoteRowView: View {
    var body: some View {
        VStack(alignment:.leading, spacing: 6) {
            Text("Customer Name")
                .font(.system(size:26,design: .rounded).bold())
            Text("Treatment")
                .font(.callout.bold())
            Text("Phone Number")
                .font(.callout.bold())
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(alignment: .topTrailing) {
            Button {
                
            } label: {
                Image(systemName: "checkmark.circle")
                    .font(.title3)
                    .symbolVariant(.fill)
                    .foregroundColor(.gray.opacity(0.3))
            }
            .buttonStyle(.plain)
        }
    }
}

struct QuoteRowView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteRowView()
    }
}
