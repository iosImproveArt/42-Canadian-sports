//
//  DayliStrerchView.swift
//  Sumo sport
//
//  Created by Improve on 11.12.2024.
//

import SwiftUI

struct DayliStrerchView: View {
    @AppStorage("wasTrained") var wasTrained = false
    
    var wrfcwrf = "wrfcwrf"
    var cfrc33rc3rfc3r = 299242
    func wrfcwrfc() -> Int {
        return 3525245
    }
    func xwefxwrf() {
        print("wrgverw")
        var _ = 2 + 2
        print("wrfc")
    }
    var wcfwrfc = 25245
    
    var body: some View {
        VStack {
            Image("stretch.start")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                NavigationLink {
                    TrainingViewCanadian(sportType: .stretch)
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
    ContentViewCanadian(showLoading: false, selectedTab: .stretch)
}
