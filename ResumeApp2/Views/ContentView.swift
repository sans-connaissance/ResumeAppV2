//
//  ContentView.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/25/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            FeaturedListView()
                .tabItem {
                    Image(systemName: "star")
                    Text(verbatim: "Featured")
                }.tag(0)
            SearchListView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text(verbatim: "Featured")
                }.tag(0)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
