//
//  BrowseSectionsView.swift
//  books
//
//  Created by Emanuela Imparato on 16/11/23.
//

import SwiftUI

struct BrowseSectionsView: View {
    
    init() {
            UINavigationBar.appearance()
                .largeTitleTextAttributes =
            [.font: UIFont(descriptor:
                            UIFontDescriptor.preferredFontDescriptor(withTextStyle: .extraLargeTitle)
                .withDesign(.serif)!, size: 35)]
        }
    
    var sections = BrowseList()
    
    var body: some View {
        
        NavigationStack{
            
            List{
                
                Section {
                    
                    NavigationLink (destination: DestinationView()){
                        
                        HStack{
                            
                            Image("topcharts")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:40, height:30)
                            
                            Text("Top Charts")
                                .fontDesign(.serif)
                        }
                        
                    }
                    
                    NavigationLink (destination: DestinationView()){
                        
                        HStack{
                            
                            Image("target")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:40, height:30)
                            
                            Text("Special Offers & Free")
                                .fontDesign(.serif)
                        }
                    }
                }
                
                Section {
                    
                    ForEach(sections.section){ sec in
                        
                        NavigationLink (destination: DestinationView()){
                            
                            HStack{
                                
                                Image(sec.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:40, height:30)
                                
                                Text(sec.name)
                                    .fontDesign(.serif)
                            }
                        }
                    }
                    
                } header: {
                    
                    Text("Genres")
                        .fontDesign(.serif)
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
        //sections: BrowseList()
    )
    
}
