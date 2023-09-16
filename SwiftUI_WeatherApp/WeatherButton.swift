//
//  WeatherButton.swift
//  SwiftUI_WeatherApp
//
//  Created by Nihal Erdal on 9/15/23.
//
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
