//
//  ContentView.swift
//  UpsellApp
//
//  Created by Ndayisenga Jean Claude on 17/05/2021.
//
import StoreKit
import SwiftUI

struct ContentView: View {
    @State var appStoreOverlayPresented: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    appStoreOverlayPresented.toggle()
                    
                }, label: {
                    Label(
                        title: { Text("Download")
                            .foregroundColor(Color.white)
                            
                        },
                        icon: {
                            Image("Instagram")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 55, height: 55)
                                .cornerRadius(8)
                        }
                    )
                    .frame(width: 200)
                    .padding()
                    .background(Color.purple)
                    .clipShape(Capsule())
                })
                .appStoreOverlay(isPresented: $appStoreOverlayPresented) {
                    SKOverlay.AppConfiguration(appIdentifier: "123123123", position: .bottomRaised)
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
