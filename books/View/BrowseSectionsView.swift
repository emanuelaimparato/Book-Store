//
//  BrowseSectionsView.swift
//  books
//
//  Created by Emanuela Imparato on 16/11/23.
//

import SwiftUI

struct BrowseSectionsView: View {
    
    var sections = BrowseList()
    
    var body: some View {
        
        NavigationStack{
            
            List{
                
                Section {
                    
                    HStack{
                        
                        Image("topcharts")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:40, height:30)
                        
                        Text("Top Charts")
                    }
                    
                    HStack{
                        
                        Image("")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:40, height:30)
                        
                        Text("Special Offers & Free")
                    }
                }
                
                Section {
                    
                    ForEach(sections.section){ sec in
                        
                        HStack{
                            
                            Image(sec.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:40, height:30)
                            
                            Text(sec.name)
                        }
                    }
                    
                } header: {
                    
                    Text("Genres")
                }

                
            }
            .listStyle(.grouped)
            .navigationTitle("Browse Sections")
            .listStyle(.plain)
        }
    }
}

#Preview {
    
    BrowseSectionsView (
        sections: BrowseList()
    )
    
}
