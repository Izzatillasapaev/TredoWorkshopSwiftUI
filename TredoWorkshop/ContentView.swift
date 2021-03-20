//
//  ContentView.swift
//  TredoWorkshop
//
//  Created by Izzatilla on 20.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var showPassword: Bool = false
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            
            VStack {
                Group {
                    TextField("Email", text: $name)
                        //                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        //                    .padding([.leading, .trailing, .top])
                        .padding(15)
                        .font(Font.system(size: 15, weight: .medium, design: .serif))
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.4), lineWidth: 1))
                }.padding()
                
                ZStack {
                    Group {
                        if showPassword {
                            TextField("Placeholer", text: $password) .padding(15)
                                .font(Font.system(size: 15, weight: .medium, design: .serif))
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.4), lineWidth: 1))
                        } else {
                            SecureField("Password", text: $password) .padding(15)
                                .font(Font.system(size: 15, weight: .medium, design: .serif))
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.4), lineWidth: 1))
                        }
                    }.padding()
                    HStack {
                        Spacer()
                        Button("Show") {
                            self.showPassword.toggle()
                        }.padding(30)
                    }
                }
                Spacer()
                
                
                Group {
                    Button(action: { }) {
                        HStack {Spacer()
                            Text("Log In").foregroundColor(.white)
                                .padding()
                            Spacer()
                        }
                    }
                    .background(Color.blue)
                    .cornerRadius(8)
                    .foregroundColor(Color.white)
                }.padding()
                
                
                
                Button("Forgot your password?") {
                    
                }.padding(.top, -10).padding(.bottom, 20)
                
                
                
            }.navigationBarTitle("Log in") .navigationBarTitleDisplayMode(.inline).background(Color.white)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
