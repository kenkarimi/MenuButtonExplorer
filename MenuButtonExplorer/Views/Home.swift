//
//  Home.swift
//  MenuButtonExplorer
//
//  Created by Kennedy Karimi on 04/11/2024.
//

import SwiftUI

//NB: To test the Menu Button in the Navigation Bar, you have to either run this app on the emulator or run the preview from ContentView since the navigation bar isn't here, meaining the menu button can't be seen.

struct Home: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            //You can have this in the middle of the View as well.
            Menu {
                //These Views are stacked from bottom to top starting with the 'Log Out' button.
                Button {
                    
                } label: {
                    Text("Menu in View's body")
                }
            } label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(Color.black)
                    .rotationEffect(.degrees(90)) //Rotate 90 degrees so the ellipsis stands instead of sits.
            }
            .menuStyle(.automatic) //default menu style.
        }
        .padding()
        .navigationTitle("Home")
        .navigationBarBackButtonHidden(true)
        .toolbar { //Replaces the soon to be deprecated .navigationBarItems(trailing:)
            ToolbarItem(placement: .topBarTrailing) {
                Menu {
                    //These Views are stacked from bottom to top starting with the 'Log Out' button being at the bottom.
                    Button {
                        
                    } label: {
                        Text("Log Out")
                    }
                    //Divider() //The divider isn't a necessity.
                    Button {
                        
                    } label: {
                        Text("Order History")
                    }
                    Button {
                        
                    } label: {
                        Text("New Order")
                    }
                    Button {
                        
                    } label: {
                        Text("Cancel Order")
                    }
                    Button {
                        
                    } label: {
                        Text("Account Settings")
                    }
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color.black)
                        .rotationEffect(.degrees(90)) //Rotate 90 degrees so the ellipsis stands instead of sitting.
                }
                .menuStyle(.automatic) //default menu style.
            }
        }
    }
}

#Preview {
    Home()
}
