import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var incorrectUsername = 0
    @State private var incorrectPassword = 0
    @State private var showingLoginScreen = false
    @State private var emailSubject = ""
    @State private var emailBody = ""
    @State private var emailRecipient = ""
    
    var body: some View {
        VStack {
            VStack {
                NavigationView{
                    ZStack {
                        Color.lightBlue
                            .ignoresSafeArea()
                        Circle()
                            .scale(1.3)
                            .foregroundColor(.white)
                        VStack {
                            Image("Phs")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                .offset(x: -22, y:0)
                            
                            Text("UTogether")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                  
                            
                                .padding()
                            TextField("Enter Username", text: $username)
                                .border(.red, width: CGFloat(incorrectUsername))
                                .frame(width: 300, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(100)
                                .textFieldStyle(.roundedBorder)
                            
                                .foregroundColor(Color.lightBlue)
                            
                            Spacer()
                                .frame(width: 10, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            SecureField("Enter Password", text: $password)
                                .keyboardType(.decimalPad)
                                .border(.red, width: CGFloat(incorrectPassword))
                                .frame(width: 300, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(100)
                                .textFieldStyle(.roundedBorder)
                            
                            
                            Button("Login") {
                                authenticateUser(username: username, password: password)
                                
                            }
                            .foregroundColor(.black)
                            .frame(width: 300, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.lightBlue)
                            .cornerRadius(10)
                            
                            NavigationLink(destination: TeacherStudent(), isActive: $showingLoginScreen)
                            {
                                
                                
                            }
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.navy)
                            
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    

    
    
    
    
    
    
    func authenticateUser(username: String, password: String) {
        let validUserCredentials = [
            "tpatel5346": "225346",
            "eozalp5538": "225538",
            "kkubik5212": "525212",
            "apple": "401"
            
        ]
        if let validPassword = validUserCredentials[username.lowercased()], validPassword == password.lowercased() {
   
            incorrectUsername = 0
            incorrectPassword = 0
            showingLoginScreen = true
            
        } else {
   
            incorrectUsername = 2
            incorrectPassword = 2
        }
    }
}
    
extension Color {
    static let lightBlue = Color(red: 103/255, green: 216/255, blue: 255/255)
    
}
extension Color {
    static let navy = Color(red: 0/255, green: 0/255, blue: 180/255)
    
}
