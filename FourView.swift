import SwiftUI

struct FourView: View {
    @State private var selectedDate = Date()
    @State private var showAlert = false
    var body: some View {
        
        VStack {
            Spacer()
            Text("Available Tutors for Block 4")
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
                            Text("Dominique Davis")
                                .foregroundColor(.white)
                                .font(.custom("Georgia", size: 20))
                                .multilineTextAlignment(.center)
                            
                            Text("AP CALC AB / HPRECALC / HALGII")
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
                                        let email = "dominqiue.davis@d214.org"
                                        let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
                            Text("Cambria Myers")
                                .foregroundColor(.white)
                                .font(.custom("Georgia", size: 20))
                                .multilineTextAlignment(.center)
                            
                            Text("Media / Written Oral Comm")
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
                                        let email = "cambria.myers@d214.org"
                                        let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
                            Text("Patryk Wroblewski")
                                .foregroundColor(.white)
                                .font(.custom("Georgia", size: 20))
                                .multilineTextAlignment(.center)
                            
                            Text("AP PHYSICS / HPHYSICS / PHYSICS")
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
                                        let email = "tpatel5346@stu.d214.org"
                                        let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
