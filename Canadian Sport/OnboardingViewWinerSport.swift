

import SwiftUI

struct OnboardingViewCanadian: View {
    @AppStorage("showOnboarding") var showOnboarding = true
    @State private var selected = 1
    
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
            Spacer()
            
            Image("onboard \(selected)")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            
            HStack(spacing: 1) {
                ForEach(Array(1...5), id: \.self) { index in
                    RoundedRectangle(cornerRadius: .infinity)
                        .frame(width: 35, height: 5)
                        .foregroundColor(index == selected ? .hex("FEE600"): .white)
                }
            }.padding(.bottom)
        }.background(2)
            .onTapGesture {
                if selected < 5 {
                    withAnimation {
                        selected += 1
                    }
                } else {
                    showOnboarding = false
                }
            }
            .opacity(showOnboarding ? 1: 0)
            .animation(.easeInOut, value: showOnboarding)
    }
}

#Preview {
    OnboardingViewCanadian()
}
