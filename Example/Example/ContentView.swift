//
//  ContentView.swift
//  Grid_Example
//
//  Created by Denis Obukhov on 29.04.2020.
//  Copyright © 2020 Exyte. All rights reserved.
//

import SwiftUI
import ExyteGrid

struct TextBox: View {
    let text: String
    let color: UIColor
    
    var body: some View {
        Text(self.text)
            .foregroundColor(.black)
            .fontWeight(.medium)
            .padding(5)
            .gridCellBackground { _ in
                self.background
            }
    }
    
    var borderColor: Color {
        return Color(self.color.darker() ?? .black)
    }
    
    var background: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(self.color))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(self.borderColor, lineWidth: 5)
        )
    }
}

struct ContentView: View {
    var body: some View {
        Grid(tracks: [.pt(50), .fr(1), .fr(1.5), .fit], spacing: [5, 10]) {
            
            ForEach(0..<6) { _ in
                Color.black
            }
            
            Color(.brown)
                .gridSpan(column: 3)
            
            Color(.blue)
                .gridSpan(column: 2)
            
            Color(.red)
                .gridStart(column: 5, row: 1)
                .gridSpan(column: 2, row: 2)
            
            Color(.yellow)
                .gridStart(row: 2)
            
            Color(.purple)
                .frame(maxWidth: 50)
                .gridStart(column: 3, row: 0)
                .gridSpan(row: 10)
            
            Color(.green)
                .gridSpan(column: 2, row: 3)
            
            Color(.orange)
                .gridSpan(row: 3)
            
            Color(.gray)
                .gridStart(column: 2)
            
            GridGroup {
                Color(.cyan)
                
                Color(.magenta)
            }
        }
        .gridPacking(.dense)
        .gridFlow(.rows)
    }
    
    //swiftlint:disable line_length
    var placeholderText = """
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat.
"""
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .gridFlow(.rows)
    }
}
