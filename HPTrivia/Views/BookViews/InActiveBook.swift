//
//  InActiveBook.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

import SwiftUI

struct InActiveBook: View {
    @State var book: Book
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(book.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 7)
                .overlay{
                    Rectangle().opacity(0.33)
                }
            Image(systemName: "circle")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.green.opacity(0.5))
                .shadow(radius: 1)
                .padding(3)
        }
    }
}

#Preview {
    InActiveBook(book: BookQuestions().books[0])
}
