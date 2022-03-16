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
            Button("Make Pour") {
                
                keg.sendSignal(messageString: "12oz_pour")
                
            }
            Button("Start pour") {
                
                keg.sendSignal(messageString: "pour_start")
            }
            Button("Stop Pour") {
                
                keg.sendSignal(messageString: "pour_stop")
                
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
