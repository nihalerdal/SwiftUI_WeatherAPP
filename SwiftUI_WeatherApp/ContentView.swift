//
//  ContentView.swift
//  SwiftUI_WeatherApp
//
//  Created by Nihal Erdal on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Fremont, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .foregroundColor(.white)
                        .font(.system(size: 70, weight: .medium))
                }
                .padding(.bottom, 40) //--> or spacer, another way
                HStack(spacing: 20){
                    WheatherDayView(theDayOfTheWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76)
                    WheatherDayView(theDayOfTheWeek: "WED", imageName: "sun.max.fill", temperature: 76)
                    WheatherDayView(theDayOfTheWeek: "THU", imageName: "wind.snow", temperature: 76)
                    WheatherDayView(theDayOfTheWeek: "FRI", imageName: "sunset.fill", temperature: 76)
                    WheatherDayView(theDayOfTheWeek: "SAT", imageName: "snow", temperature: 76)
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WheatherDayView: View {
    
    var theDayOfTheWeek: String
    var imageName: String
    var temperature: Int
    
    
    var body: some View {
        VStack{
            Text(theDayOfTheWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .medium))
        }
    }
}
