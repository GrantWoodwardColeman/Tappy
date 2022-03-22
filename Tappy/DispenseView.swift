//
//  DispenseView.swift
//  DispenseView
//
//  Created by Grant Coleman on 3/12/22.
//

import SwiftUI

struct DispenseView: View {
    @State private var showDetails = false
    let keg = ConnectToKeg()

    var body: some View {
        
        Image("Droplet")
        Button("Pour") {
            
            showDetails.toggle()
            keg.sendSignal()
            
        }
    }
}

struct DispenseView_Previews: PreviewProvider {
    static var previews: some View {
        DispenseView()
    }
}
