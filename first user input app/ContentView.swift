//
//  ContentView.swift
//  first user input app
//
//  Created by Tessa Delsener on 4/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var userPronouns = ""
    @State private var textTitle2 = "What are your pronouns?"
    @State private var textTitle3 = "When were you born?"
    @State private var birthDate = Date.now
    @State private var textTitle4 = ""
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("", text: $name)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Text(textTitle2)
                .font(.title)
            TextField("", text: $userPronouns)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
            
            Text(textTitle3)
                .font(.title)
            DatePicker("Enter your birthday:",selection: $birthDate, displayedComponents: .date )//this was so hard to figure out!!!
                .datePickerStyle(GraphicalDatePickerStyle())

            Text(textTitle4)
            Button("Submit") {// display as multiline
                textTitle3 = """
Welcome, \(name),
\(userPronouns)!
Born: \(birthDate.formatted(date: .long, time: .omitted))
"""

            }
            
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .border(/*@START_MENU_TOKEN@*/Color.purple/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
    }
        
    
}

#Preview {
    ContentView()
}
