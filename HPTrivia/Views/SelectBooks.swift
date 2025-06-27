//
//  SelectBooks.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

import SwiftUI

struct SelectBooks: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(Game.self) private var game
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Which books would you like to see questions from?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                ScrollView{
                    LazyVGrid(columns: [GridItem(),GridItem()]) {
                        ForEach(game.bookQuestions.books) { book in
                            if book.status == .active {
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
                            }else if book.status == .inactive {
                                ZStack {
                                    Image(book.image)
                                        .resizable()
                                        .scaledToFit()
                                        .shadow(radius: 7)
                                }
                            } else{
                                ZStack {
                                    Image(book.image)
                                        .resizable()
                                        .scaledToFit()
                                        .shadow(radius: 7)
                                }
                            }
                            
                        }
                    }
                    
                }
                
                
                
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black,by: 0.2))
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    SelectBooks()
        .environment(Game())
}
