

import SwiftUI

struct QuotesViewBanned: View {
    let quotes: [String: String] = [
        "The only limit to our realization of tomorrow is our doubts of today." : "Franklin D. Roosevelt",
        "In the middle of every difficulty lies opportunity." : "Albert Einstein",
        "Do not watch the clock. Do what it does. Keep going." : "Sam Levenson",
        "The future belongs to those who believe in the beauty of their dreams." : "Eleanor Roosevelt",
        "Believe you can and you're halfway there." : "Theodore Roosevelt",
        "Success is walking from failure to failure with no loss of enthusiasm." : "Winston Churchill",
        "Your time is limited, so don't waste it living someone else's life." : "Steve Jobs",
        "It does not matter how slowly you go as long as you do not stop." : "Confucius",
        "Act as if what you do makes a difference. It does." : "William James",
        "Keep your face always toward the sunshine—and shadows will fall behind you." : "Walt Whitman",
        "Life is what happens when you're busy making other plans." : "John Lennon",
        "Success usually comes to those who are too busy to be looking for it." : "Henry David Thoreau",
        "Don't be afraid to give up the good to go for the great." : "John D. Rockefeller",
        "Opportunities don't happen. You create them." : "Chris Grosser",
        "I find that the harder I work, the more luck I seem to have." : "Thomas Jefferson",
        "Do one thing every day that scares you." : "Eleanor Roosevelt",
        "Success is not in what you have, but who you are." : "Bo Bennett",
        "The way to get started is to quit talking and begin doing." : "Walt Disney",
        "The best way to predict the future is to create it." : "Peter Drucker",
        "If you really look closely, most overnight successes took a long time." : "Steve Jobs",
        "Hardships often prepare ordinary people for an extraordinary destiny." : "C.S. Lewis",
        "Don’t let yesterday take up too much of today." : "Will Rogers",
        "If you are not willing to risk the usual, you will have to settle for the ordinary." : "Jim Rohn",
        "It’s not whether you get knocked down, it’s whether you get up." : "Vince Lombardi",
        "If you can dream it, you can do it." : "Walt Disney",
        "Perseverance is not a long race; it is many short races one after the other." : "Walter Elliot",
        "Strive not to be a success, but rather to be of value." : "Albert Einstein",
        "Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart." : "Roy T. Bennett",
        "Happiness is not by chance, but by choice." : "Jim Rohn",
        "Success is how high you bounce when you hit bottom." : "George S. Patton",
        "What lies behind us and what lies before us are tiny matters compared to what lies within us." : "Ralph Waldo Emerson",
        "Don’t watch the clock; do what it does. Keep going." : "Sam Levenson",
        "Great things never came from comfort zones." : "Anonymous",
        "What you get by achieving your goals is not as important as what you become by achieving your goals." : "Zig Ziglar",
        "The secret of success is to do the common thing uncommonly well." : "John D. Rockefeller Jr.",
        "I never dreamed about success. I worked for it." : "Estee Lauder",
        "Dream big and dare to fail." : "Norman Vaughan",
        "It’s not about ideas. It’s about making ideas happen." : "Scott Belsky",
        "Do what you can, with what you have, where you are." : "Theodore Roosevelt",
        "It always seems impossible until it’s done." : "Nelson Mandela",
        "You don’t have to be great to start, but you have to start to be great." : "Zig Ziglar",
        "Leaders never use the word failure. They look upon setbacks as learning experiences." : "Brian Tracy",
        "Fall seven times and stand up eight." : "Japanese Proverb",
        "A winner is a dreamer who never gives up." : "Nelson Mandela",
        "Success doesn’t come from what you do occasionally, it comes from what you do consistently." : "Marie Forleo",
        "Don't limit your challenges. Challenge your limits." : "Anonymous",
        "Doubt kills more dreams than failure ever will." : "Suzy Kassem",
        "Your limitation—it’s only your imagination." : "Anonymous",
        "Push yourself, because no one else is going to do it for you." : "Anonymous"
    ]
    
    @State var timer: Timer?
    @State var selectedQuote: Dictionary<String, String>.Element? = ("", "")
    
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
                PrivacyViewBanned(showLoading: .constant(true), fromMainView: true)
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
    ContentViewBanned(showLoading: false, selectedTab: .quotes)
}

