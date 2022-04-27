//
//  ColorSelectorView.swift
//  UnderstandingState
//
//  Created by naresh kukkala on 28/04/22.
//

import SwiftUI

struct ColorSelectorView: View {
    
    @Binding var selectedColor: Color
    
    let colors: [Color] = [.red, .purple, .green, .yellow, .blue]
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Image(systemName: selectedColor == color ? "record.circle.fill" : "circle.fill")
                    .foregroundColor(color)
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
}

struct ColorSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectorView(selectedColor: .constant(.blue))
    }
}
