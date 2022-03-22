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
        Button() {
            
            showDetails.toggle()
            keg.sendSignal(messageString: "12oz_pour")
            
        }
    }
}

struct DispenseView_Previews: PreviewProvider {
    static var previews: some View {
        DispenseView()
    }
}
