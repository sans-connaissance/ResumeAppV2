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
                    Image(systemName: "figure.wave")
                    Text(verbatim: "Featured")
                }.tag(0)
            FeedListView()
                .tabItem {
                    Image(systemName: "figure.walk")
                    Text(verbatim: "Feed")
                }.tag(1)
            MeView()
                .tabItem {
                    Image(systemName: "figure.stand")
                    Text(verbatim: "Me")
                }.tag(2)
            SearchListView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text(verbatim: "Search")
                }.tag(3)
            StoreView()
                .tabItem {
                    Image(systemName: "bag")
                    Text(verbatim: "Store")
                }.tag(4)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
