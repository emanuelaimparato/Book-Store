//
//  booksApp.swift
//  books
//
//  Created by Emanuela Imparato on 14/11/23.
//

import SwiftUI

@main
struct BooksApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                
                ReadingNowView()
                    .tabItem {
                        Label ("Reading Now", systemImage: "book.fill")
                    }
                
                LibraryView()
                    .tabItem {
                        Label ("Library", systemImage: "books.vertical.fill")
                    }
                
                BookStoreView()
                    .tabItem {
                        Label ("Book Store", systemImage: "bag.fill")
                    }
                
                AudiobooksView()
                    .tabItem {
                        Label ("Audiobooks", systemImage: "headphones")
                    }
                
                SearchView()
                    .tabItem {
                        Label ("Search", systemImage: "magnifyingglass")
                    }
                
                
                
            }
        }
    }
}
