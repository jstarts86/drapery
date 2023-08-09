//
//  QuoteDetailView.swift
//  drapery
//
//  Created by John on 8/9/23.
//

import SwiftUI

struct QuoteDetailView: View {
    var body: some View {
        List {
            Section("General") {
                LabeledContent {
                    Text("Customer Name Here")
                } label: {
                    Text("Customer Name")
                }
                LabeledContent {
                    Text("Room Type here")
                } label: {
                    Text("Room")
                }
                LabeledContent {
                    Text("Treatment Here")
                } label: {
                    Text("Treatment")
                }
                LabeledContent {
                    Text("Email here")
                } label: {
                    Text("Email")
                }
                
                LabeledContent {
                    Text("Phone Number Here")
                } label: {
                    Text("Phone Number")
                }
                LabeledContent {
                    Text(.now, style: .date)
                } label: {
                    Text("Date")
                }

            }
            Section("Measurements") {
                LabeledContent {
                    Text("")
                } label: {
                    Text("Main Fabric Yard")
                }
                LabeledContent {
                    Text("")
                } label: {
                    Text("Accent Fabric One")
                }
                LabeledContent {
                    Text("")
                } label: {
                    Text("Accent Fabric Two")
                }
                LabeledContent {
                    Text("")
                } label: {
                    Text("Fringe")
                }
                LabeledContent {
                    Text("")
                } label: {
                    Text("Miscellaneous")
                }
            }
            Section("Costs") {
                LabeledContent {
                    Text("Decimal only")
                } label: {
                    Text("Shop Supply")
                }
                LabeledContent {
                    Text("Decimal only")
                } label: {
                    Text("Interlining")
                }
                LabeledContent {
                    Text("Decimal only")
                } label: {
                    Text("Lining")
                }
                LabeledContent {
                    Text("Decimal only")
                } label: {
                    Text("Labor & Etc")
                }
                LabeledContent {
                    Text("Decimal only")
                } label: {
                    Text("Hardware")
                }
                LabeledContent {
                    Text("Decimal only")
                } label: {
                    Text("Installation")
                }
            }
            Section("Comments") {
                Text("12 For evils beyond number have surrounded me; My guilty deeds have overtaken me, so that I am not able to see; They are more numerous than the hairs of my head, And my heart has failed me. 13 Be pleased, Lord, to rescue me; Hurry, Lord, to help me. 14 May those be ashamed and humiliated together Who seek my life to destroy it; May those be turned back and dishonored Who delight in my hurt. (‭‭‭Psalms‬ ‭40‬‬:‭12‬-‭14‬ ‭NASB2020‬‬)")
            }
        }
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteDetailView()
    }
}
