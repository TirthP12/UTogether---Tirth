//
//  AbsentView.swift
//  klnij
//
//  Created by Tirth D. Patel on 4/26/23.
//

import SwiftUI
struct TeacherStudent: View {
    var body: some View {
        ZStack {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea()
                
                VStack {
                    Text("Select a preference")
               
                        .font(.custom("Georgia", size: 32))
                       
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                    
                    NavigationLink(destination: Absent()) {
                        Text("Teacher")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    
                    NavigationLink(destination: Absent()) {
                        Text("Student")
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
            .navigationBarHidden(true)

            
        }
        
    }
}
