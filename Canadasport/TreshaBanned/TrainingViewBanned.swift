

import SwiftUI

struct TrainingViewBanned42: View {
    @StateObject var vm: TrainViewModel
    @Environment(\.dismiss) var dismiss
    
    init(sportType: SportTypes) {
        _vm = StateObject(wrappedValue: TrainViewModel(sportType: sportType))
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
            topBar
            
            Spacer()
            
            if vm.status == .start {
                Image("\(vm.sportType).start")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                Image("\(vm.sportType) \(vm.selectedExs)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Spacer()
            
            Button {
                if vm.status == .start {
                    vm.startTrain()
                } else if vm.selectedExs >= 5 && vm.status == .inProgres {
                    vm.finishTrain()
                } else {
                    vm.selectedExs += 1
                }
            } label: {
                Text(vm.status == .start ? "Start": "Next")
                    .withFont(size: 18, weight: .medium, color: .hex("2E023F"))
                    .padding(.vertical, 11)
                    .padding(.horizontal, 30)
                    .background(Color.hex("FEE600"))
                    .cornerRadius(13.17)
            }
        }.background(3)
            .overlay {
                if vm.status == .finish {
                    finishView
                }
            }
    }
    
    private var topBar: some View {
        HStack {
            Button {
                dismiss()
            } label: {
                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 22)
                    Text("Back")
                        .withFont(size: 20, weight: .light)
                }.foregroundStyle(.white)
            }
            
            Spacer()
            
            if vm.status == .inProgres {
                Text("\(vm.selectedExs)/5")
                .withFont(size: 19.5, weight: .semibold, color: .hex("FEE600"))
                .transition(.move(edge: .trailing))
            } else if vm.status == .start {
                Button {
                    withAnimation {
                        vm.favourite = vm.sportType.rawValue
                    }
                } label: {
                    Image("favourite.button4")
                        .renderingMode(.template)
                        .foregroundStyle(vm.favourite == vm.sportType.rawValue ? .pink : .white)
                }
            }
        }.animation(.easeInOut, value: vm.status)
    }
    
    private var finishView: some View {
        VStack(spacing: 25) {
            Spacer()
            
            Text("The workout\nis complete!")
                .withFont(size: 40, weight: .semibold, color: .hex("1FDB55"))
                .padding(.vertical)
            
            HStack {
                Image("rating.label4")
                Spacer()
                
                RoundedRectangle(cornerRadius: 11)
                    .foregroundColor(.hex("241F55"))
                    .overlay {
                        RoundedRectangle(cornerRadius: 11)
                            .stroke(lineWidth: 1)
                            .foregroundColor(.hex("1FDB55"))
                    }
                    .frame(width: 100, height: 40)
                    .overlay {
                        Text("976/1000")
                            .withFont(size: 19.34, weight: .regular)
                    }
            }
            
            HStack {
                Image("time.label4")
                Spacer()
                
                RoundedRectangle(cornerRadius: 11)
                    .foregroundColor(.hex("241F55"))
                    .overlay {
                        RoundedRectangle(cornerRadius: 11)
                            .stroke(lineWidth: 1)
                            .foregroundColor(.hex("1FDB55"))
                    }
                    .frame(width: 100, height: 40)
                    .overlay {
                        Text("\(vm.seconds) sec")
                            .withFont(size: 19.34, weight: .regular)
                    }
            }
            
            HStack {
                Image("rate.label4")
                Spacer()
                
                RoundedRectangle(cornerRadius: 11)
                    .foregroundColor(.hex("241F55"))
                    .overlay {
                        RoundedRectangle(cornerRadius: 11)
                            .stroke(lineWidth: 1)
                            .foregroundColor(.hex("1FDB55"))
                    }
                    .frame(width: 100, height: 40)
                    .overlay {
                        Text("\(vm.rate)/10")
                            .withFont(size: 19.34, weight: .regular)
                    }
            }
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                Text("Complete the workout")
                    .withFont(size: 18, weight: .medium, color: .hex("2E023F"))
                    .padding(.vertical, 11)
                    .padding(.horizontal, 30)
                    .background(Color.hex("1FDB55"))
                    .cornerRadius(13.17)
            }
            .padding(.bottom)
        }.background(4)
    }
}

#Preview {
    TrainingViewBanned42(sportType: .lacrosse)
}

class TrainViewModel: ObservableObject {
    @AppStorage("secondsWaste") var secondsWaste = 0
    @AppStorage("wasTrained") var wasTrained = false
    @AppStorage("favourite") var favourite = ""
    
    enum ViewTypes {
        case start
        case inProgres
        case finish
    }
    
    let rate: Int
    let sportType: SportTypes
    
    @Published var status: ViewTypes = .start
    @Published var seconds = 0
    @Published var selectedExs = 1
    
    init(sportType: SportTypes) {
        self.sportType = sportType
        rate = Int.random(in: 1...10)
        
        if sportType == .stretch {
            startTrain()
        }
    }
    
    func startTrain() {
        status = .inProgres
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] timer in
            guard status == .inProgres else { timer.invalidate(); return }
            
            seconds += 1
        }
    }
    
    func finishTrain() {
        withAnimation {
            status = .finish
        }
        
        secondsWaste += seconds
        wasTrained = true
    }
}


enum SportTypes: String {
    case tennis = "tennis"
    case cricket = "cricket"
    case volleyball = "volleyball"
    case lacrosse = "lacrosse"
    case golf = "golf"
    case stretch = "stretch"
}
