//
//  ContentView.swift
//  drapery
//
//  Created by John on 8/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingNewWindowQuote = false
    
    
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
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        isShowingNewWindowQuote.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .font(.title2)
                    }
                }
            }
            .sheet(isPresented: $isShowingNewWindowQuote) {
                NavigationStack {
                    CreateWindowQuoteView()
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
