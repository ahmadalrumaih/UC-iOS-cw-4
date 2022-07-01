//
//  ContentView.swift
//  myGrocery
//
//  Created by Ahmed Rumaih on 01/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var groceries = ["Takis", "Pepsi", "Orange", "Banana", "Tomato"]
   @State var new = ""
    var body: some View {
        
        VStack{
            HStack{
            Text("My grocery Items")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            Image(systemName: "bag")
            }
                
            List(groceries, id:\.self){ item in        HStack{
            Image(item)
                .resizable()
                .frame(width: 50, height: 50 )
            Text(item)
                }
            }
            HStack{
                Button{
                    groceries.append(new)
                    
                } label: {
                    Image(systemName: "plus")
                        .frame(width: 50, height: 50)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .foregroundColor(Color.white)
                }
                
                TextField("New Itm", text: $new)
                Button{
                    groceries.remove(at: 0)
                    
                } label: {
                    Image(systemName: "minus")
                        .frame(width: 50, height: 50)
                        .background(Color.red)
                        .cornerRadius(20)
                        .foregroundColor(Color.white)
                }
                
            }.padding()
                
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
