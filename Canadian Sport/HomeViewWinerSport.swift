


import SwiftUI

struct HomeViewCanadian: View {
    @AppStorage("secondsWaste") var secondsWaste = 0
    @AppStorage("wasTrained") var wasTrained = false
    
    @AppStorage("favourite") var favourite = ""
    
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
    
    var wcfwrfc = 2524
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    NavigationLink {
                        TrainingViewCanadian(sportType: .tennis)
                    } label: {
                        Image("tennis.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewCanadian(sportType: .cricket)
                    } label: {
                        Image("cricket.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewCanadian(sportType: .lacrosse)
                    } label: {
                        Image("lacrosse.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewCanadian(sportType: .volleyball)
                    } label: {
                        Image("volleyball.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewCanadian(sportType: .golf)
                    } label: {
                        Image("golf.label")
                            .overlay {
                                Image("block.label")
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
                    TrainingViewCanadian(sportType: SportTypes(rawValue: favourite) ?? .lacrosse )
                } label: {
                    Image("favourite.workout")
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
                    Image("workouts.label")
                    Image("homefield.label")
                        .overlay {
                            Text(wasTrained ? "1": "0")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
                
                VStack {
                    Image("workouttime.label")
                    Image("homefield.label")
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
                    Image("lastworkout.label")
                    Image("homefield.label")
                        .overlay {
                            Text(wasTrained ? formattedDateString(): "-")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
                
                VStack {
                    Image("rating.label")
                    Image("homefield.label")
                        .overlay {
                            Text(wasTrained ? "976/1000": "-/1000")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentViewCanadian(showLoading: false, selectedTab: .home)
}


enum Sports: String {
    case tennis = "tennis"
    case cricket = "cricket"
    case volleyball = "Volleyball"
    case lacrosse = "lacrosse"
    case golf = "golf"
    case fitneCanadian = "FitneCanadian"
    case yoga = "Yoga"
    case pilates = "Pilates"
    case stretch = "Stretch"
}
