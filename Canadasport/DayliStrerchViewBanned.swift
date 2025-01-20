//
//  DayliStrerchView.swift
//  Sumo sport
//
//  Created by Improve on 11.12.2024.
//

import SwiftUI

struct DayliStrerchView: View {
    @AppStorage("wasTrained") var wasTrained = false
    
    var y36y36by3 = "36yb36yb"
    var v3rg3rgt3t = 365356
    func b4y3tb() -> Float {
        return 42542
    }
    func wrfwrf() {
        print("wrgverw")
        var _ = 2 + 2
        print("wrfc")
    }
    var wcrfrfcwrfcwrcf = "25245"
    struct Refatcor {}
    
    var body: some View {
        VStack {
            Image("stretch.start")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack {
                NavigationLink {
                    TrainingViewBanned42(sportType: .stretch)
                } label: {
                    Text("Start")
                        .withFont(size: 18, weight: .medium, color: .hex("2E023F"))
                        .padding(.vertical, 11)
                        .padding(.horizontal, 30)
                        .background(Color.hex("FEE600"))
                        .cornerRadius(13.17)
                }.grayscale(wasTrained ? 1: 0)
                    .disabled(wasTrained)
                
                if wasTrained {
                    Text("Come back tomorrow")
                        .withFont(size: 15, weight: .bold)
                }
            }
        }
    }
}

#Preview {
    ContentViewBanned42(showLoading: false, selectedTab: .stretch)
}
