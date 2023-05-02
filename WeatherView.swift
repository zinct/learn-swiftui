import SwiftUI

struct WeatherView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 34, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 30) {
                    Image(systemName: isNight ? "moon.stars" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 140)
                        .foregroundColor(.white)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 72)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "sun.max.fill", temperature: 72)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "wind", temperature: 72)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "sunset.fill", temperature: 72)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "snowflake", temperature: 72)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    Text("Change Day Time")
                        .foregroundColor(.blue)
                        .frame(width: 300, height: 60)
                        .background(.white)
                        .cornerRadius(10)
                        .font(.system(size: 20, weight: .medium))
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      WeatherView()
  }
}


struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text(dayOfWeek)
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature) °")
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.white)
        }
    }
}
