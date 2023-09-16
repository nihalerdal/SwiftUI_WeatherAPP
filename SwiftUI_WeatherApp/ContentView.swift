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
            BackgroundView(topColor: .blue,
                           bottomColor: Color("lightBlue"))
            VStack{
                CityTextView(cityName: "Fremont, CA")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill",
                                      temperature: 76)
                
                HStack(spacing: 20){
                    WheatherDayView(theDayOfTheWeek: "TUE",
                                    imageName: "cloud.sun.fill",
                                    temperature: 76)
                    WheatherDayView(theDayOfTheWeek: "WED",
                                    imageName: "sun.max.fill",
                                    temperature: 76)
                    WheatherDayView(theDayOfTheWeek: "THU",
                                    imageName: "wind.snow",
                                    temperature: 76)
                    WheatherDayView(theDayOfTheWeek: "FRI",
                                    imageName: "sunset.fill",
                                    temperature: 76)
                    WheatherDayView(theDayOfTheWeek: "SAT",
                                    imageName: "snow",
                                    temperature: 76)
                    
                }
                
                Spacer()
                
                Button{
                    print("tapped")
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  backgroundColor: .white,
                                  textColor: .blue)
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

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .medium))
        }
        .padding(.bottom, 40)//--> or spacer, another way
    }
}


