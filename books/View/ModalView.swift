//
//  ModalView.swift
//  books
//
//  Created by Emanuela Imparato on 18/11/23.
//

import SwiftUI

struct ContentView: View {
   @State private var showSheet = false

   var body: some View {
       Button("Present") {
           showSheet.toggle()
       }.font(.largeTitle)
       .sheet(isPresented: $showSheet) {
           SheetView()
       }
    }
}

struct SheetView: View {
   @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
           Button {
              dismiss()
           } label: {
               Image(systemName: "xmark.circle")
                 .font(.largeTitle)
                 .foregroundColor(.gray)
           }
         }
         .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
         .padding()
        
        VStack(alignment: .center){
        
            Image("book4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            
            Text("ygeu")
            
            
            
        }
    }
}

#Preview{
    ContentView()
}
