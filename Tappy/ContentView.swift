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
            TabView{
                //Referenced views seem to only work when located inside of a VStack
                VStack{
                    DispenseView()
                }
                    .tabItem{
                        Image("DropletFourTenths")
                        Spacer()
                        Text("Pour")
                }
                Text("History")
                    Text("History will be shown here")
                
                    .tabItem{
                        Image("GraphFourTenths")
                        Text("History")
                    }
                Text("Profile")
                    Text("This is the profile section")
                
                    .tabItem{
                        Image("PersonFourTenths")
                        Text("Profile")
                    }
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
