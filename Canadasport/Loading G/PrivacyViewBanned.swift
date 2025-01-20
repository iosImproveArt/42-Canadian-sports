

import SwiftUI

struct PrivacyViewBanned42: View {
    @AppStorage("firstInApp") var firstInApp = true
    @Environment(\.dismiss) var dismiss
    @Binding var showLoading: Bool
    var fromMainView: Bool = false
    var jnir = 235
    @AppStorage("urlString") var urlString = ""
    
    var bg: Color {
        urlString.isEmpty ? Color.hex("#2E2A65"): .black
    }
    
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
            if urlString.isEmpty && fromMainView {
                HStack(spacing: 25) {
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        dismiss()
                    } label: {
                        Image(systemName: "return.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 30)
                            .foregroundColor(.white)
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .overlay {
                        Text("Privacy Policy")
                            .withFont(size: 33, weight: .bold)
                    }
                    .padding([.top, .leading])
                    
            }
            
            WebViewContainer(urlString: urlString)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }
                .padding(.top, 7)
                .padding(.bottom,  1)
                .background(bg)
            
            if urlString.isEmpty && !fromMainView {
                HStack {
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        firstInApp = false
                        dismiss()
                    } label: {
                        Image("profile.save")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay {
                                Text("Accept")
                                    .withFont(size: 23, weight: .regular, color: .hex("3B0551"))
                            }
                    }
                   
                    Spacer()
                    
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        firstInApp = false
                        dismiss()
                    } label: {
                        Image("profile.save")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay {
                                Text("Reject")
                                    .withFont(size: 23, weight: .regular, color: .hex("3B0551"))
                            }
                    }
                    
                }.padding([.horizontal, .bottom])
            }
        }
        .background(bg)
        .onChange(of: urlString) { new in
            if urlString == "error" {
                showLoading = false
                dismiss()
            }
        }
        .navigationBarBackButtonHidden()
            .navigationTitle("")
                    .navigationBarHidden(true)
    }
}

#Preview {
    PrivacyViewBanned42(showLoading: .constant(true), fromMainView: true)
}
