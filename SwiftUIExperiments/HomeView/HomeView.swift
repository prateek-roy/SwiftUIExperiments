//
//  HomeView.swift
//  SwiftUIExperiments
//
//  Created by Prateek Roy on 25/09/20.
//

import SwiftUI

struct HomeView: View {
    @State private var show = false
    
    var body: some View {
        VStack {
            Spacer()
            if show {
                LabelView()
                    .transition(.asymmetric(insertion: .scale(scale: 0.5), removal: AnyTransition.opacity.combined(with: .slide)))
            }
            Spacer()
            Button("Animate") {
                withAnimation(.easeInOut(duration: 1.0)) {
                    self.show.toggle()
                }
                
            }
            .padding()
        }
        .padding()
    }
}

struct LabelView: View {
    var body: some View {
        Text("Hello User")
            .padding(24)
            .font(.title)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 12).fill(Color.green).shadow(color: .gray, radius: 5, y: 2))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
