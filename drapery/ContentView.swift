//
//  ContentView.swift
//  drapery
//
//  Created by John on 8/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach((0...10), id:\.self) { item in
                    ZStack(alignment: .leading) {
                        NavigationLink(destination: WindowQuoteDetailView()) {
                            EmptyView()
                        }
                        .opacity(0)
                        WindowQuoteRowView()
                    }
                }
            }
            .navigationTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
