    //
    //  ContentView.swift
    //  Bullseye
    //
    //  Created by Javier Gomez on 8/6/22.
    //

    import SwiftUI

    struct ContentView: View {
        @State private var alertIsVisible: Bool = false
        @State private var sliderValue: Double = 50.0
        @State private var game: Game = Game ()
    
        var body: some View {
            VStack {
            Text("🎯🎯🎯\n Put the bullseye as close as you can to")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                Text(String(game.target))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                HStack {
                    Text("1")
                        .bold()
                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                    Text("100") 
                    }
                    Button(action: {
                        self.alertIsVisible = true})
                    {
                        Text ("HIT ME")
                    }
            }
            
                    .alert("Hello there!", isPresented: $alertIsVisible) {
                      Button("Awesome!") {
                      }
                        
                    } message: {
                        let roundedValue = Int(self.sliderValue.rounded())
                        Text("The slider´s value is \(roundedValue).\n" + " You scored is \(self.game.points(sliderValue:roundedValue)) points this round")}
        }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView()
                .previewLayout(.fixed(width:568, height: 320))
                }
            }
    }

