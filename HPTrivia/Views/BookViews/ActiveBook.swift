//
//  ActiveBook.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

import SwiftUI

struct ActiveBook: View {
    @State var book: Book
    
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            Image(book.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 7)
            Image(systemName: "checkmark.circle.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.green)
                .shadow(radius: 1)
                .padding(3)
            
        }
    }
}

#Preview {
    ActiveBook(book: BookQuestions().books[0])
}
