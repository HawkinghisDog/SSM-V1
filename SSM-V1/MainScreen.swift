//
//  SwiftUIView.swift
//  SSM-V1
//
//  Created by Waldorfschule Berlin Mitte on 05.01.24.
//

import SwiftUI

struct MainScreen: View {
    
    @State var show:Bool = false
    
    var body: some View {
        VStack{
            Text("Mino ist geil auf cola")
                .padding()
            
            Rectangle()
                .mask(canvas)
                .overlay{
                    Button(action: {show.toggle()}, label: {
                        ZStack{
                            Circle().frame(width: 60)
                            Image(systemName: "plus").font(.system(size: 30)).foregroundColor(.white)
                        }
                        .offset(x:-20, y: -30)
                    })
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)

                }
        }
    }
    
    //cool shit
    
    var canvas:some View{
        Canvas{ context,size in
            context.addFilter(.alphaThreshold(min: 0.4))
            
            context.drawLayer { DrawingContext in
                let drawPoint = CGPoint(x: size.width - 50, y: size.height - 60)
                for index in 1...2{
                    if let symbol = context.resolveSymbol(id: index){
                        DrawingContext.draw(symbol, at: drawPoint)
                    }
                }
            }
            
        }symbols: {
            Circle().frame(width: 60).tag(1)
            Circle().frame(width: 60).tag(1).offset(y: show ? 50 : 0)
        }
    }
}

#Preview {
    MainScreen()
}
