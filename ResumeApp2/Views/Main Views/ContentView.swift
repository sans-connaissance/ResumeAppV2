//
//  ContentView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/25/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        Text("hello world!")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
