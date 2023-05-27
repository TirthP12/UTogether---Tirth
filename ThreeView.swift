import SwiftUI

struct ThreeView: View {
    @State private var selectedDate = Date()
    @State private var showAlert = false
    var body: some View {
        
        VStack {
            Spacer()
            Text("Available Tutors for Block 3")
                .font(.custom("Georgia", size: 20))
                .fontWeight(.bold)
                .padding()
                .foregroundColor(Color.black)
                .cornerRadius(10)
                
            
            HStack {
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.navy)
                    .frame(width: 370, height: 200)
                    .overlay(
                        VStack(alignment: .center) {
                            Text("Nick Delbo")
                                .foregroundColor(.white)
                                .font(.custom("Georgia", size: 20))
                                .multilineTextAlignment(.center)
                            
                            Text("Honors Biology")
                                .foregroundColor(.white)
                                .font(.custom("Georgia", size: 15))
                                .padding(.top, 10)
                                .multilineTextAlignment(.center)
                            
                            VStack(alignment: .leading) {
                                DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                    .padding(.top, 10)
                                    .foregroundColor(.white)
                                
                                HStack {
                                    Button(action: {
                                        let email = "nick.delboccio@d214.org"
                                        let subject = "Tutoring Request - Block 3 \(formattedDate(from: selectedDate))?"
                                        let body = "Hello, can you help me on \(formattedDate(from: selectedDate))? Thank you!"
                                        
                                        let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                        let encodedBody = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                        let urlString = "mailto:\(email)?subject=\(encodedSubject)&body=\(encodedBody)"
                                        if let url = URL(string: urlString) {
                                            UIApplication.shared.open(url)
                                            if UIApplication.shared.canOpenURL(url) {
                                                                                            UIApplication.shared.open(url)
                                                                                            showAlert = true
                                                                                        }
                                        }
                                    }) {
                                        Text("Request")
                                            .foregroundColor(.black)
                                            .padding(.vertical, 5)
                                            .padding(.horizontal, 10)
                                            .background(Color.white)
                                            .cornerRadius(5)
                                    }
                                }
                            }
                            .padding()
                        }
                    )
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.gray)
                    .frame(width: 370, height: 200)
                    .overlay(
                        VStack(alignment: .center) {
                            Text("Robert Luse")
                                .foregroundColor(.white)
                                .font(.custom("Georgia", size: 20))
                                .multilineTextAlignment(.center)
                            
                            Text("AP CHEM / HCHEM")
                                .foregroundColor(.white)
                                .font(.custom("Georgia", size: 15))
                                .padding(.top, 10)
                                .multilineTextAlignment(.center)
                            
                            VStack(alignment: .leading) {
                                DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                    .padding(.top, 10)
                                    .foregroundColor(.white)
                                
                                HStack {
                                    Button(action: {
                                        let email = "robert.luse@d214.org"
                                        let subject = "Tutoring Request - Block 3 \(formattedDate(from: selectedDate))?"
                                        let body = "Hello, can you help me on \(formattedDate(from: selectedDate))? Thank you!"
                                        
                                        let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                        let encodedBody = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                        let urlString = "mailto:\(email)?subject=\(encodedSubject)&body=\(encodedBody)"
                                        if let url = URL(string: urlString) {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Text("Request")
                                            .foregroundColor(.black)
                                            .padding(.vertical, 5)
                                            .padding(.horizontal, 10)
                                            .background(Color.white)
                                            .cornerRadius(5)
                                    }
                                }
                            }
                            .padding()
                        }
                    )
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.lightBlue)
                    .frame(width: 370, height: 200)
                    .overlay(
                        VStack(alignment: .center) {
                            Text("john.camardella@d214.org")
                                .foregroundColor(.white)
                                .font(.custom("Georgia", size: 20))
                                .multilineTextAlignment(.center)
                            
                            Text("College Religions")
                                .foregroundColor(.white)
                                .font(.custom("Georgia", size: 15))
                                .padding(.top, 10)
                                .multilineTextAlignment(.center)
                            
                            VStack(alignment: .leading) {
                                DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                    .padding(.top, 10)
                                    .foregroundColor(.white)
                                
                                HStack {
                                    Button(action: {
                                        let email = "john.camardella@d214.org"
                                        let subject = "Tutoring Request - Block 3 \(formattedDate(from: selectedDate))?"
                                        let body = "Hello, can you help me on \(formattedDate(from: selectedDate))? Thank you!"
                                        
                                        let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                        let encodedBody = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                        let urlString = "mailto:\(email)?subject=\(encodedSubject)&body=\(encodedBody)"
                                        if let url = URL(string: urlString) {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Text("Request")
                                            .foregroundColor(.black)
                                            .padding(.vertical, 5)
                                            .padding(.horizontal, 10)
                                            .background(Color.white)
                                            .cornerRadius(5)
                                    }
                                }
                            }
                            .padding()
                        }
                    )
                
                Spacer()
            }
            
            Spacer()
        }
    }
    
    private func formattedDate(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
            
    }
}
