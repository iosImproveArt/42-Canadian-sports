


import SwiftUI

struct HomeViewBanned: View {
    @AppStorage("secondsWaste") var secondsWaste = 0
    @AppStorage("wasTrained") var wasTrained = false
    
    @AppStorage("favourite") var favourite = ""
    
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
            ScrollView {
                VStack {
                    NavigationLink {
                        TrainingViewBanned(sportType: .tennis)
                    } label: {
                        Image("tennis.label4")
                            .overlay {
                                Image("block.label4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewBanned(sportType: .cricket)
                    } label: {
                        Image("Cricket.label4")
                            .overlay {
                                Image("block.label4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewBanned(sportType: .lacrosse)
                    } label: {
                        Image("lacrosse.label4")
                            .overlay {
                                Image("block.label4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewBanned(sportType: .volleyball)
                    } label: {
                        Image("volleyball.label4")
                            .overlay {
                                Image("block.label4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewBanned(sportType: .golf)
                    } label: {
                        Image("golf.label4")
                            .overlay {
                                Image("block.label4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                }.padding(.horizontal, 8)
                    .padding(.horizontal, -12)
                    .padding(.top)
                    .scrollIndicators(.hidden)
                
                NavigationLink {
                    TrainingViewBanned(sportType: SportTypes(rawValue: favourite) ?? .lacrosse )
                } label: {
                    Image("favourite.workout4")
                }.padding(.vertical)
                    .disabled(favourite == "")
                    .grayscale(favourite == "" ? 1 : 0)
                
                statsView
                    .padding(.bottom)
                Spacer()
            }.gradientTopAndBottom()
            
        }
    }
    
    private var statsView: some View {
        VStack(spacing: isSE ? 12: 20) {
            HStack {
                Spacer()
                
                VStack {
                    Image("workouts.label4")
                    Image("homefield.label4")
                        .overlay {
                            Text(wasTrained ? "1": "0")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
                
                VStack {
                    Image("workouttime.label4")
                    Image("homefield.label4")
                        .overlay {
                            Text("\(secondsWaste / 60) min")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
            }
            
            HStack {
                Spacer()
                
                VStack {
                    Image("lastworkout.label4")
                    Image("homefield.label4")
                        .overlay {
                            Text(wasTrained ? formattedDateString(): "-")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
                
                VStack {
                    Image("rate.label 1")
                    Image("homefield.label4")
                        .overlay {
                            Text(wasTrained ? "976/1000": "-/1000")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
            }
        }.scaleEffect(0.95)
        .padding(.horizontal, -12)
    }
}

#Preview {
    ContentViewBanned(showLoading: false, selectedTab: .home)
}


enum Sports: String {
    case tennis = "tennis"
    case cricket = "cricket"
    case volleyball = "Volleyball"
    case lacrosse = "lacrosse"
    case golf = "golf"
    case fitneBanned = "FitneBanned"
    case yoga = "Yoga"
    case pilates = "Pilates"
    case stretch = "Stretch"
}
