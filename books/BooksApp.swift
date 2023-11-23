//
//  booksApp.swift
//  books
//
//  Created by Emanuela Imparato on 14/11/23.
//

import SwiftUI

@main
struct BooksApp: App {
    
    @State var tabSelection = 3
    
    var body: some Scene {
        
        WindowGroup {
            
            TabView(selection: $tabSelection){
                
                ReadingNowView()
                    .tabItem {
                        Label ("Reading Now", systemImage: "book.fill")
                    }
                    .tag(1)
                
                LibraryView()
                    .tabItem {
                        Label ("Library", systemImage: "books.vertical.fill")
                    }
                    .tag(2)
                
                BookStoreView()
                    .tabItem {
                        Label ("Book Store", systemImage: "bag.fill")
                    }
                    .tag(3)
                
                AudiobooksView()
                    .tabItem {
                        Label ("Audiobooks", systemImage: "headphones")
                    }
                    .tag(4)
                
                SearchView()
                    .tabItem {
                        Label ("Search", systemImage: "magnifyingglass")
                    }
                    .tag(5)
                
            }
        }
    }
}
