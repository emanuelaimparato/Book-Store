//
//  ContentView.swift
//  books
//
//  Created by Emanuela Imparato on 14/11/23.
//

import SwiftUI

struct BookStoreView: View {
    
    var bookCard = allBooks()
    
    var body: some View {
        
        NavigationStack {
            
            List {
                
                HStack {
                    
                    Image(systemName: "text.justify.left")
                    
                    NavigationLink("Browse Sections", destination: BrowseSectionsView())
                }
                
                
                
                VStack(alignment: .leading){
                    
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: [.white, .gradient]), startPoint: .top, endPoint: .bottom)
                            .frame(maxWidth: .infinity)
                            .aspectRatio(contentMode: .fill)
                            .ignoresSafeArea()
                        
                        ScrollView(.horizontal,showsIndicators:false){
                            
                            HStack {
                                
                                ForEach (bookCard.book) { i in
                                    
                                    VStack {
                                        
                                        Group {
                                            
                                            Text(i.category)
                                                .font(.subheadline)
                                                .bold()
                                            
                                            Text(i.title)
                                                .font(.title)
                                                .bold()
                                            
                                            Text(i.author)
                                                .font(.title3)
                                                .bold()
                                        }
                                        
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        ZStack {
                                            
                                            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8) )
                                                .foregroundStyle(i.color)
                                                .frame(width: 320, height: 200)
                                            
                                            Image(i.image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width:80)
                                            
                                        }
                                    }
                                }
                                
                            }
                            
                        }
                        
                    }
                        
                    }
                    .scrollTargetBehavior(.paging)
                    .safeAreaPadding(.horizontal)
                
                VStack(alignment: .leading) {
                    
                    Text("New & Trending")
                        .font(.title2.bold())
                    
                    Text("Recently released and buzz-y books.")
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        
                        VStack{
                            HStack{
                                ForEach(0..<12){_ in
                                    Image("book4")
                                        .resizable()
                                        .aspectRatio(contentMode:.fit)
                                        .frame(width:75.0)
                                }
                                
                            }
                        }
                        VStack{
                            HStack{
                                ForEach(0..<12){_ in
                                    Image("book4")
                                        .resizable()
                                        .aspectRatio(contentMode:.fit)
                                        .frame(width:75.0)
                                }
                                
                            }
                            
                        }
                    }
                    .scrollTargetBehavior(.paging)
                    .safeAreaPadding(.horizontal)
                    
                }
                
                Text("See all")
                
            }
            
            
            .navigationTitle("Book Store")
            .listStyle(.plain)
        }
    }
    
}



#Preview {
    BookStoreView(
        bookCard: allBooks()
        )
}
