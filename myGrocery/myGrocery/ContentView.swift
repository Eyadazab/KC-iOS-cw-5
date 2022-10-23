//
//  ContentView.swift
//  myGrocery
//
//  Created by Moahmed Azab on 22/10/2022.
//

import SwiftUI

struct ContentView: View {
    
   @State var items = ["cheetos export flamin' hot","reeses PB creamy","nutella","pepsi 1.5L","ahmad tea (green tea)"]
    @State var newItem = ""
    
    var body: some View {
        VStack{
            List(items, id:\.self ){item in
                HStack{
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150 , height: 150)
                    
                    Text(item)
                        .font(.largeTitle)
                    
                    
                    
                }
            }
            
            HStack{
                
                Button {
                    items.append(newItem)
                } label: {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 50,height: 50)
                        .background(Color.green)
                        .cornerRadius(15)
                }
                
                
                TextField("enter your new item here",text:$newItem )
                Button {
                    items.remove(at: 0)
                } label: {
                    Image(systemName: "minus")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 50,height: 50)
                        .background(Color.red)
                        .cornerRadius(15)
                }
                Button {
                    items.append( items.randomElement() ?? "pineaple")
                } label: {
                    Image(systemName: "questionmark")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 50,height: 50)
                        .background(Color.orange)
                        .cornerRadius(15)
                    
                }
            }
            
        }
    }
}
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    

