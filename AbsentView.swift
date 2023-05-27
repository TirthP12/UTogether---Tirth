//
//  AbsentView.swift
//  klnij
//
//  Created by Tirth D. Patel on 4/26/23.
//

import SwiftUI
struct Absent: View {
    var body: some View {
        ZStack {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea()
                
                VStack {
                    Text("Select a Block")
                        .font(.custom("Georgia", size: 32))
                        .fontWeight(.bold)
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                    
                    NavigationLink(destination: One()) {
                        Text("Block 1")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    
                    NavigationLink(destination: TwoView()) {
                        Text("Block 2")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    
                    NavigationLink(destination: ThreeView()) {
                        Text("Block 3")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: FourView()) {
                        Text("Block 4")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    
                    NavigationLink(destination: FiveView()) {
                        Text("Block 5")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: SixView()) {
                        Text("Block 6")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: SevenView()) {
                        Text("Block 7")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: EightView()) {
                        Text("Block 8")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .background(Color.lightBlue)
                    .edgesIgnoringSafeArea(.all)
                }
                .background(Color.lightBlue)
                .edgesIgnoringSafeArea(.all)
            }
            .background(Color.lightBlue)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("", displayMode: .inline)
                      
        }
        
    }
}
