//
//  ContentView.swift
//  demoWeatherApp
//
//  Created by Mustafa Çelik on 1.12.2023.
//

import SwiftUI
struct ContentView: View {
    let cityName:String = "Mersin"
    let degree:String = "19"
    let statusOfAir:String = "İyi"
    @State private var selectedTab: Tab? = nil

    enum Tab {
           case hourlyForecast
           case weeklyForecast
       }
    var body: some View {
    

        ZStack {
                    VStack(spacing: 20) {
                        Text(cityName)
                            .padding(.top, 50)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                        
                        Text(degree + "°")
                            .font(.system(size: 70))
                            .foregroundColor(Color.white)
                        
                        Text(statusOfAir)
                            .font(.system(size: 24))
                            .foregroundColor(Color.gray)
                        
                        HStack(spacing: 10) {
                            Text("🌞")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white)
                            Text("24°")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white)
                            Text("🌙")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white)
                                .padding(.leading, 10)
                            Text("18°")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white)
                        }
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        VStack {
                            VStack(spacing: 20) {
                                            HStack {
                                                Button(action: {
                                                    selectedTab = .hourlyForecast
                                                }) {
                                                    Text("Hourly Forecast")
                                                                                .frame(maxWidth: .infinity)
                                                                                .padding()
                                                                                .foregroundColor(.white)
                                                                                .background(Color.blue)
                                                                                .cornerRadius(10)
                                                }
                                                
                                                Button(action: {
                                                    selectedTab = .weeklyForecast
                                                }) {
                                                    Text("Weekly Forecast")
                                                                                .frame(maxWidth: .infinity)
                                                                                .padding()
                                                                                .foregroundColor(.white)
                                                                                .background(Color.blue)
                                                                                .cornerRadius(10)
                                                }
                                            }
                                            Spacer()
                                        }
                                        .padding()

                                        // İkinci VStack (Oval Konteynırlar)
                                        VStack {
                                            Spacer()
                                            HStack {
                                                Spacer()

                                                if selectedTab == .hourlyForecast {
                                                                        // İlk oval konteynır
                                                                        RoundedRectangle(cornerRadius: 25)
                                                                            .fill(Color.red)
                                                                            .frame(width: 100, height: 50)
                                                                            .overlay(Text("Oval 1").foregroundColor(.white))
                                                                    } else if selectedTab == .weeklyForecast {
                                                                        // İkinci Text
                                                                        Text("Text 2")
                                                                            .foregroundColor(.black)
                                                                            .padding()
                                                                    }


                                                Spacer()
                                            }
                                            Spacer()
                                        }
                                        .background(Color.clear)
                                    }
                        
                        .background(
                            Color.blue
                        ).frame(maxWidth: .infinity)
                        .frame(height: UIScreen.main.bounds.height / 3)
                        .foregroundColor(.blue)
                        Spacer()
                    }
                    
            
            
        }.background(Image(AssetsPath.house)
            .foregroundColor(Color.white)
            .padding(.top,UIScreen.main.bounds.height * 0.5)
            )
                .background(
                    Image(AssetsPath.backgroundNight)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width * 1.7, height: UIScreen.main.bounds.height * 1.155)
                )
                
    }
}
struct HourlyForecastView: View {
    var body: some View {
        // Hourly Forecast içeriği buraya eklenir
        Text("Hourly Forecast Content")
    }
}

struct WeeklyForecastView: View {
    var body: some View {
        // Weekly Forecast içeriği buraya eklenir
        Text("Weekly Forecast Content")
    }
}
#Preview {
    ContentView()
}
/*.background(
 RoundedRectangle(cornerRadius: 50.0,style: .circular).fill(Color.blue.opacity(0.3)).fill(Material.ultraThinMaterial).shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.1), radius: 20).frame(height:UIScreen.main.bounds.height/3.5 )
     .offset(y: UIScreen.main.bounds.height/25)
)*/

