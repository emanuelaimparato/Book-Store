//
//  ContentView.swift
//  books
//
//  Created by Emanuela Imparato on 14/11/23.
//

import SwiftUI

struct BookStoreView: View {
    
    init() {
        UINavigationBar.appearance()
            .largeTitleTextAttributes =
        [.font: UIFont(descriptor:
                        UIFontDescriptor.preferredFontDescriptor(withTextStyle: .extraLargeTitle)
            .withDesign(.serif)!, size: 35)]
    }
    
    let rows = [GridItem(.fixed(120)), GridItem(.fixed(120))]
    
    var bookCard = allBooks()
    var minis = Scroll()
    
    var body: some View {
        
        
        NavigationStack {
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    Divider()
                    
                    NavigationLink (destination: BrowseSectionsView()){
                        
                        HStack {
                            
                            Image(systemName: "text.justify.left")
                            
                            Text ("Browse Sections")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                            
                            
                        }
                    }
                    .padding(.horizontal)
                    
                    Divider()
                    
                    
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
                                                    .fontDesign(.serif)
                                                
                                                Text(i.title)
                                                    .font(.title)
                                                    .bold()
                                                    .fontDesign(.serif)
                                                
                                                Text(i.author)
                                                    .font(.title3)
                                                    .bold()
                                                    .fontDesign(.serif)
                                            }
                                            
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            
                                            
                                            ZStack {
                                                
                                                RoundedRectangle(cornerSize: CGSize(width: 8, height: 8) )
                                                    .foregroundStyle(i.color)
                                                    .frame(width: 350, height: 200)
                                                
                                                Image(i.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width:80)
                                                    .accessibilityHidden(true)
                                                
                                            }
                                            
                                        }
                                        .accessibilityElement(children: .combine)
                                        .accessibilityHint("Scroll left for the next book")
                                    
                                  }
                                    
                                }
                                
                            } .scrollClipDisabled()
                              .padding(.horizontal)
                            
                        }
                        
                    }
                    .scrollTargetBehavior(.paging)
                    
                    VStack(alignment: .leading) {
                        
                        Text("New & Trending")
                            .font(.title2.bold())
                            .fontDesign(.serif)
                        
                        Text("Recently released and buzz-y books.")
                            .fontDesign(.serif)
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            
                            LazyHGrid (rows: rows) {
                                
                                ForEach(minis.mini){m in
                                    
                                    Image(m.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode:.fit)
                                        .frame(width:75.0)
                                    
                                }
                            
                            }
                        
                        }
                        .scrollClipDisabled()
                        .scrollTargetBehavior(.paging)
//cacapupucaca
                    }
                    .accessibilityElement(children: .combine)
                    .accessibilityHint("Scroll left for other books")
                    .padding(.horizontal)
                    
                    Divider()
                    
                    NavigationLink (destination: DestinationView()){
                        
                        Text("See all")
                            .fontDesign(.serif)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                        
                    }
                    .padding(.horizontal)
                
                }
            
            }
            .navigationTitle("Book Store")

        }
    
    }

}





#Preview {
    BookStoreView()
}
