

import SwiftUI

struct QuotesViewCanadian: View {
    let quotes: [String: String] = [
        "Success is not the key to happiness. Happiness is the key to success." : "Albert Schweitzer",
        "You are never too old to set another goal or to dream a new dream." : "C.S. Lewis",
        "The only way to do great work is to love what you do." : "Steve Jobs",
        "The harder you work for something, the greater you'll feel when you achieve it." : "Unknown",
        "The only limit to our realization of tomorrow is our doubts of today." : "Franklin D. Roosevelt",
        "Success is not in what you have, but who you are." : "Bo Bennett",
        "Don’t limit your challenges. Challenge your limits." : "Unknown",
        "Success is liking yourself, liking what you do, and liking how you do it." : "Maya Angelou",
        "Opportunities are usually disguised as hard work, so most people don't recognize them." : "Ann Landers",
        "Success doesn’t come from what you do occasionally, it comes from what you do consistently." : "Marie Forleo",
        "You miss 100% of the shots you don’t take." : "Wayne Gretzky",
        "Success is not about how high you have climbed, but how you make a positive difference to the world." : "Roy T. Bennett",
        "Success is a journey, not a destination." : "Ben Sweetland",
        "Success is the result of preparation, hard work, and learning from failure." : "Colin Powell",
        "Success is walking from failure to failure with no loss of enthusiasm." : "Winston Churchill",
            "The difference between a successful person and others is not a lack of strength, not a lack of knowledge, but rather a lack in will." : "Vince Lombardi",
            "Do not wait to strike till the iron is hot, but make it hot by striking." : "William Butler Yeats",
            "Act as if what you do makes a difference. It does." : "William James",
            "Your time is limited, so don’t waste it living someone else’s life." : "Steve Jobs",
            "Hardships often prepare ordinary people for an extraordinary destiny." : "C.S. Lewis",
            "Success usually comes to those who are too busy to be looking for it." : "Henry David Thoreau",
            "The best way to predict the future is to create it." : "Peter Drucker",
            "Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart." : "Roy T. Bennett",
            "What you get by achieving your goals is not as important as what you become by achieving your goals." : "Zig Ziglar",
            "The future depends on what you do today." : "Mahatma Gandhi",
            "It always seems impossible until it’s done." : "Nelson Mandela",
            "The way to get started is to quit talking and begin doing." : "Walt Disney",
            "Fall seven times and stand up eight." : "Japanese Proverb",
            "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle." : "Christian D. Larson",
            "Dream big and dare to fail." : "Norman Vaughan",
            "Don’t watch the clock; do what it does. Keep going." : "Sam Levenson",
            "Success is not final, failure is not fatal: It is the courage to continue that counts." : "Winston Churchill",
            "Limitations live only in our minds. But if we use our imaginations, our possibilities become limitless." : "Jamie Paolinetti",
            "Success isn’t measured by money or power or social rank. Success is measured by your discipline and inner peace." : "Mike Ditka",
            "Hustle until your haters ask if you’re hiring." : "Unknown",
            "Don’t wait for opportunity. Create it." : "Unknown",
            "If you want to fly, you have to give up the things that weigh you down." : "Toni Morrison",
            "Success is not how high you have climbed, but how you make a positive difference to the world." : "Roy T. Bennett",
            "Push yourself, because no one else is going to do it for you." : "Unknown",
            "Great things never come from comfort zones." : "Unknown",
            "If it doesn’t challenge you, it doesn’t change you." : "Fred DeVito",
            "Success is the sum of small efforts, repeated day in and day out." : "Robert Collier"
    ]
    
    @State var timer: Timer?
    @State var selectedQuote: Dictionary<String, String>.Element? = ("", "")
    
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
        VStack(alignment: .trailing) {
            Spacer()
            
            if let selectedQuote = selectedQuote {
                HStack {
                    Text("\"\(selectedQuote.key)\"")
                        .withFont(size: 22, weight: .semibold)
                        .padding(.bottom, 40)
                    Spacer()
                }.padding(.leading)
                
                Text("- \(selectedQuote.value)")
                    .withFont(size: 16.5, weight: .semibold, color: .hex("FEE600"))
                    .padding(.trailing, 20)
            }
            
            Spacer()
            
            NavigationLink {
                PrivacyViewCanadian(showLoading: .constant(true), fromMainView: true)
            } label: {
                Text("Privacy Policy")
                    .withFont(size: 18, weight: .light, color: .white)
            }.frame(maxWidth: .infinity)
                .padding(.bottom)
        }.onAppear {
            selectedQuote = quotes.randomElement()!
            timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true, block: { _ in
                withAnimation(.easeInOut(duration: 0.6)) {
                    selectedQuote = nil
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                    withAnimation(.easeInOut(duration: 1)) {
                        selectedQuote = quotes.randomElement()!
                    }
                }
            })
        }
        .onDisappear {
            timer?.invalidate()
            timer = nil
        }
    }
}

#Preview {
    ContentViewCanadian(showLoading: false, selectedTab: .quotes)
}

