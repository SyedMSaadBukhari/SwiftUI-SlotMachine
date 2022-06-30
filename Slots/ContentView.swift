//
//  ContentView.swift
//  Slots
//
//  Created by SyedSaad on 26/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var Score = 1000
    @State var slot1 = 1
    @State var slot2 = 2
    @State var slot3 = 3
    var body: some View {
        
            
            VStack
            {
                Spacer()
            Text ("SwiftUI Slots!")
                .font(.largeTitle)
                .foregroundColor(Color.black)
            Spacer()
                HStack{
                    Spacer()
                    Text ("Score:")
                    Text (String(Score))
                    Spacer()
                }
                Spacer()
                
                HStack{
                    Spacer()
                    Image("fruit\(slot1)").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    Image("fruit\(slot2)").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    Image("fruit\(slot3)").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    
                }
                Spacer()
                
                Button(action: {
                    // generating random item
                    slot1 = Int.random(in: 1...3)
                    slot2 = Int.random(in: 1...3)
                    slot3 = Int.random(in: 1...3)
                    
                    // setting conditions
                    
                    if ((slot1 == slot2) && (slot2 == slot3))
                    {
                        Score += 200
                        
                    }
                    else {
                        
                        Score -= 15
                    }
                    
                    
                }
                       , label: {Text("Roll!")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                    
                })
                Spacer()
                
                        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
