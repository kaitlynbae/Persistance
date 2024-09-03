//
//  CollegeList.swift
//  Persistance
//
//  Created by Kaitlyn H. Bae on 8/27/24.
//

import SwiftUI
import SwiftData
struct CollegeList: View {


    @Environment(\.modelContext) var context
    @Query var college: [Person]
    @State var enteredName = ""
    var body: some View {
        
        HStack{
           
            Text("College List")
            .font(.custom("Verdana ",fixedSize:35))
            Image(systemName: "graduationcap.fill")
                .font(.largeTitle)
                .padding()
        }
        HStack{
        TextField("Enter College Name", text: $enteredName)
                .textFieldStyle(.roundedBorder)
            
            Button("+"){
                let person = Person(name: enteredName)
                context.insert(person)
                enteredName = ""
            }
            .font(.largeTitle)
            }
        .padding()
        List{
            ForEach(college) {currentPerson in
                Text(currentPerson.name)
            }
        }
    }
}

@Model
class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


#Preview {
    CollegeList()
}











