//
//  ContentView.swift
//  Tappy
//
//  Created by Grant Coleman on 2/10/22.
//

import SwiftUI
import CoreData


struct ContentView: View {
    @State private var showDetails = false
    let keg = ConnectToKeg()

    var body: some View {
        VStack(alignment: .leading) {
            Button("Send Message") {
                showDetails.toggle()
                keg.sendSignal()
                
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
