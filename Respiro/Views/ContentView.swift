//
//  ContentView.swift
//  Inhale
//
//  Created by Nick Karch on 5/14/21.
//

import SwiftUI
import SwiftUI
import UIKit

typealias tuple = (str: String, num: Int)


/*                  ** STEPS TO ADD A NEW BREATH STYLE **
 *                  1) Create the button image and sound
 *                  2) Copy the HappinessBreath struct and rename it
 *                  3) Refactor the inside code by:
 *                      i. adding an AppStorage variable corresponding to the number of time
 *                         someone has clicked on the breath (and delete the happiness one)
 *                      ii. editing the breathsPerMinute and images variables accordingly
 *                  4) In the MainScreen struct, add another @State property and a corresponding 'else if'
 *                  5) Add the button in the corresponding TabView, or make a new tag if none are open
 *                  6) Go to the ProfileScreen struck and
 *                      i. add the corresponding AppStorage variabe
 *                      ii. in the VStack, add to the list_of_breath_tuples the ("<breathbutton>, <AppStorage-var>")
 *                  7) Edit page arrows accordingly in main screen
 *
 */


struct MainScreen: View {
    @State private var welcomeText = "Welcome to Inhale"
    @State private var goToHappinessBreathScreen = false
    @State private var goToWimHofScreen = false
    @State private var goToProfileScreen = false
    @State private var goToConfidenceBreathScreen = false
    @State private var goToBoxBreathScreen = false
    @State private var goToFireScreen = false
    @State private var goToRelaxingBreathScreen = false
    @State private var goToFocusBreathScreen = false
    
    var body: some View {
        GeometryReader { geo in
            VStack() {
                if goToHappinessBreathScreen {
                    HappinessBreath()
                } else if goToWimHofScreen {
                    WimHofScreen()
                } else if goToConfidenceBreathScreen {
                    ConfidenceBreath()
                } else if goToProfileScreen {
                    ProfileScreen()
                } else if goToBoxBreathScreen {
                    BoxBreath()
                } else if goToFireScreen {
                    BreathOfFire()
                } else if goToRelaxingBreathScreen {
                    RelaxingBreath()
                } else if goToFocusBreathScreen {
                    FocusBreath()
                } else {
                    VStack {
                        ZStack {
                            NavigationView {
                                ZStack {
                                    ScrollView(showsIndicators: false) {
                                        let ratio = geo.size.height/geo.size.width
                                        let buttonWidth = geo.size.height/(1.1*ratio)
                                        // make the spacing dependent on the ratio of height to width. The higher the ratio, the large the height will be divided by.
                                        Rectangle().frame(height: geo.size.height/(3*ratio)).opacity(0)
                                        VStack {
                                            Button(action: {
                                                goToHappinessBreathScreen.toggle()
                                                
                                            }) {
                                                Image("happinessbutton")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: buttonWidth, height: geo.size.height/(3*ratio), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                
                                            }
                                            
                                            Button(action: {
                                                goToWimHofScreen.toggle()
                                                
                                            }) {
                                                Image("wimhofbutton")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: buttonWidth, height: geo.size.height/(3*ratio), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                
                                            }
                                            
                                            Button(action: {
                                                goToConfidenceBreathScreen.toggle()
                                                
                                            }) {
                                                Image("confiencebreath")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width:buttonWidth, height: geo.size.height/(3*ratio), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                
                                            }
                                            
                                            Button(action: {
                                                goToBoxBreathScreen.toggle()
                                                
                                            }) {
                                                Image("boxbutton")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width:buttonWidth, height: geo.size.height/(3*ratio), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                
                                            }
                                            
                                            Button(action: {
                                                goToFireScreen.toggle()
                                                
                                            }) {
                                                Image("breathoffirebutton")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width:buttonWidth, height: geo.size.height/(3*ratio), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                
                                            }
                                            
                                            Button(action: {
                                                goToRelaxingBreathScreen.toggle()
                                                
                                            }) {
                                                Image("relaxingbreathbutton")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width:buttonWidth, height: geo.size.height/(3*ratio), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                
                                            }
                                            
                                            Button(action: {
                                                goToFocusBreathScreen.toggle()
                                                
                                            }) {
                                                Image("focusbreath")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width:buttonWidth, height: geo.size.height/(3*ratio), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    .toolbar {
                                        
                                        // Code for Toolbar at bottom of screen
                                        ToolbarItemGroup(placement: .bottomBar) {
                                            Spacer()
                                            Button(action: {
                                                
                                            }, label: {
                                                Image(systemName: "house")
                                                    .font(.system(size: 50))
                                            })
                                            Spacer()
                                            Spacer()
                                            HStack {
                                                Spacer()
                                                Spacer()
                                                Spacer()
                                                Spacer()
                                                Spacer()
                                                
                                                Button(action: {
                                                    goToProfileScreen = true
                                                }, label: {
                                                    Image(systemName: "person")
                                                        .font(.system(size: 25))
                                                    
                                                })
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                }
                            }
                            
                            GeometryReader { geo in
                            Image("mainscreentopimage")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geo.size.width,
                                       height: geo.size.height,
                                       alignment: .top)
                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .clipped()
                            }.edgesIgnoringSafeArea(.all)
                            
                            
                        }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                }
            }.frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            
        }
        
        
    }
}


struct ProfileScreen: View {
    @State var goHome = false
    @State var totalBreathsTaken = 0
    @AppStorage("totalBreaths") var totalBreaths = 0
    @AppStorage("totalWimHofs") var totalWimHofs = 0
    @AppStorage("totalConfidenceBreaths") var totalConfidenceBreaths = 0
    @AppStorage("totalHappinessBreaths") var totalHappinessBreaths = 0
    @AppStorage("totalBoxBreaths") var totalBoxBreaths = 0
    @AppStorage("totalBreathOfFire") var totalBreathOfFire = 0
    @AppStorage("totalRelaxingBreaths") var totalRelaxingBreaths = 0
    @AppStorage("totalFocusBreaths") var totalFocusBreaths = 0
    let breathModel = BreathModel() // this is the ViewModel that gives our View access to the stored user data
    
    private func find_max_breath(x: [tuple]) -> String {
        var max_breaths_count = 0
        var corresponding_breath = ""
        for i in x {
            if i.num > max_breaths_count {
                max_breaths_count = i.num
                corresponding_breath = i.str
            }
        }
        return corresponding_breath
    }
    
    var body: some View {
        VStack {
            if goHome {
                MainScreen()
            } else {
                Spacer(minLength: 50)
                VStack {
                    if ceil(log10(Double(totalBreaths))) > 6 {
                        Text(String(totalBreaths))
                            .font(.custom("LiSong Pro", size: 60))
                        Text(String("total breaths taken"))
                            .font(.custom("LiSong Pro", size: 40))
                    } else {
                        Text(String(totalBreaths))
                            .font(.custom("LiSong Pro", size: 100))
                        Text(String("total breaths taken"))
                            .font(.custom("LiSong Pro", size: 40))
                    }
                }
                
                Spacer()
                Spacer(minLength: 400)
                
                VStack {
                    Text("most used breath: ").font(.custom("LiSong Pro", size: 30)).frame(alignment: .bottom).padding(-100)
                    
                    let list_of_breath_tuples = [("wimhofbutton", totalWimHofs), ("confiencebreath", totalConfidenceBreaths), ("happinessbutton", totalHappinessBreaths), ("boxbutton", totalBoxBreaths), ("breathoffirebutton", totalBreathOfFire), ("relaxingbreathbutton", totalRelaxingBreaths), ("focusbreath", totalFocusBreaths)]
                    let max_breath = find_max_breath(x: list_of_breath_tuples)
                    
                    GeometryReader { geo in
                        Image(max_breath)
                            .resizable()
                            .padding()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width, height: geo.size.height, alignment: .top)
                            .padding(.vertical, -130)
                        
                    }
                    
                    Spacer(minLength: 150)
                }
                
                
                Spacer()
                
                ZStack {
                    
                }.toolbar {
                    
                    // Code for Toolbar at bottom of screen
                    ToolbarItemGroup(placement: .bottomBar) {
                        Spacer()
                        Button(action: {
                            UIApplication.shared.isIdleTimerDisabled = false
                            goHome = true
                        }, label: {
                            Image(systemName: "house")
                                .font(.system(size: 50))
                        })
                        Spacer()
                        Spacer()
                        HStack {
                            Spacer()
                            
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            
                            
                            
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "person")
                                    .font(.system(size: 25))
                                
                            }).onAppear(perform: {UIApplication.shared.isIdleTimerDisabled = false})
                        }
                        Spacer()
                    }
                }
                
            }
            
        }.onAppear(perform: {
            UIApplication.shared.isIdleTimerDisabled = false
        })
    }
}

struct HappinessBreath: View {
    @State private var currentBreathImg = "start"
    @State private var returnHome = false
    @State private var numBreathsTaken = 0
    @State private var sliderValue = 5.0
    @State private var startBreathing = false
    @State private var clickedStartAlready = false
    @AppStorage("totalBreaths") var totalBreaths = 0
    @AppStorage("totalHappinessBreaths") var totalHappinessBreaths = 0
    
    private let breathsPerMinute = 60/(0.5*15) // 8 breaths/min
    private let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var counter = 0
    let images = ["inbelly", "inchest", "inchest", "inchest", "inchest","hold","hold", "hold", "out", "out", "out", "out", "out","hold","hold"]
    
    let breathModel = BreathModel() // this is the ViewModel that gives our View access to the stored user data
    
    func goHome() {
        counter = 0
        Player().stopPlaying()
        totalBreaths += numBreathsTaken
        
        if breathModel.breathHash["happiness"] == nil {
            breathModel.breathHash["happiness"] = 1
        } else {
            breathModel.breathHash["happiness"]! += 1
        }
        
        let myCalendar = Calendar(identifier: .gregorian)
        let ymd = myCalendar.dateComponents([.year, .month, .day], from: Date())
        let dateString = "\(ymd)"
        let thisBreath = Breath(typeOfBreath: "happiness", numBreaths: numBreathsTaken, date: dateString)
        
        breathModel.addBreathInstance(breath: thisBreath)
        
        UIApplication.shared.isIdleTimerDisabled = false
        returnHome = true
    }
    
    
    func onTimerTic(num_breaths: Int = 8) {
        let index = counter % (images.count)
        if (counter % (images.count)) == 0 {
            print("going to play sound")
            Player().playSound(sound: "15in15outbreath", type: "mp3")
            
        }
        currentBreathImg = images[index]
        
        if (counter % (images.count)) == images.count - 1 {
            numBreathsTaken += 1
            
        }
        if numBreathsTaken >= num_breaths {
            goHome()
        }
        
        counter += 1
    }
    
    var body: some View {
        VStack {
            if returnHome {
                MainScreen()
            } else {
                ZStack {
                    VStack {
                        Slider(value: $sliderValue, in: 1...10) {
                        }.padding().frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Button(action: {
                            if !clickedStartAlready {
                                startBreathing = true
                                clickedStartAlready = true
                            }
                        }, label: {
                            
                            if sliderValue < 2 {
                                Text(String(Int(sliderValue)) + " minute")
                                    .font(.custom("LiSong Pro", size: 40))
                            } else {
                                Text(String(Int(sliderValue)) + " minutes")
                                    .font(.custom("LiSong Pro", size: 40))
                                
                            }
                            
                            
                        })
                        Spacer()
                        
                    }
                    
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        
                        
                        Button(action: {
                            startBreathing = true
                        }, label: {
                            Image(currentBreathImg)
                                .resizable()
                                .frame(width: 500, height: 500)
                                .animation(.easeInOut)
                                .onReceive(timer, perform: { _ in
                                    if startBreathing {
                                        if !clickedStartAlready {
                                            onTimerTic(num_breaths: Int(sliderValue)*Int(breathsPerMinute))
                                            
                                        }
                                    }
                                }).onAppear {
                                    totalHappinessBreaths += 1
                                    UIApplication.shared.isIdleTimerDisabled = true
                                }
                        })
                        
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        
                        
                        Spacer()
                        
                        
                        
                    }
                    VStack {
                        Spacer()
                        Button(action: {
                            goHome()
                            
                        }
                        ) {
                            Image(systemName: "house")
                                .font(.system(size:60))
                        }.frame(alignment: .bottom)
                    }
                }
            }
        }
        
    }
    
}

struct ConfidenceBreath: View {
    @State private var currentBreathImg = "start"
    @State private var returnHome = false
    @State private var numBreathsTaken = 0
    @State private var sliderValue = 5.0
    @State private var startBreathing = false
    @State private var clickedStartAlready = false
    @AppStorage("totalBreaths") var totalBreaths = 0
    @AppStorage("totalConfidenceBreaths") var totalConfidenceBreaths = 0
    
    private let breathsPerMinute = 60/(0.5*15) // 3.75 breaths/min
    private let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var counter = 0
    let images = ["in", "in", "in", "in", "in", "in", "in", "in", "out", "out", "out", "out", "out","out","out"]
    let breathModel = BreathModel()
    
    func goHome() {
        counter = 0
        Player().stopPlaying()
        totalBreaths += numBreathsTaken
        
        if breathModel.breathHash["confidence"] == nil {
            breathModel.breathHash["confidence"] = 1
        } else {
            breathModel.breathHash["confidence"]! += 1
        }
        
        let myCalendar = Calendar(identifier: .gregorian)
        let ymd = myCalendar.dateComponents([.year, .month, .day], from: Date())
        let dateString = "\(ymd)"
        let thisBreath = Breath(typeOfBreath: "confidence", numBreaths: numBreathsTaken, date: dateString)
        
        breathModel.addBreathInstance(breath: thisBreath)
        
        UIApplication.shared.isIdleTimerDisabled = false
        returnHome = true
    }
    
    func onTimerTic(num_breaths: Int = 8) {
        let index = counter % (images.count)
        if (counter % (images.count)) == 0 {
            print("going to play sound")
            Player().playSound(sound: "confidencebreath", type: "mp3")
            
        }
        currentBreathImg = images[index]
        
        if (counter % (images.count)) == images.count - 1 {
            numBreathsTaken += 1
            
        }
        if numBreathsTaken >= num_breaths {
            goHome()
        }
        
        counter += 1
        
    }
    
    var body: some View {
        VStack {
            if returnHome {
                MainScreen()
            } else {
                ZStack {
                    VStack {
                        Slider(value: $sliderValue, in: 1...10) {
                        }.padding().frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Button(action: {
                            if !clickedStartAlready {
                                startBreathing = true
                                clickedStartAlready = true
                            }
                        }, label: {
                            
                            if sliderValue < 2 {
                                Text(String(Int(sliderValue)) + " minute")
                                    .font(.custom("LiSong Pro", size: 40))
                            } else {
                                Text(String(Int(sliderValue)) + " minutes")
                                    .font(.custom("LiSong Pro", size: 40))
                            }
                            
                            
                        })
                        Spacer()
                        
                    }
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        
                        
                        Button(action: {
                            startBreathing = true
                        }, label: {
                            Image(currentBreathImg)
                                .resizable()
                                .frame(width: 500, height: 500)
                                .animation(.easeInOut)
                                .onReceive(timer, perform: { _ in
                                    if startBreathing {
                                        if !clickedStartAlready {
                                            onTimerTic(num_breaths: Int(sliderValue)*Int(breathsPerMinute))
                                            
                                            
                                        }
                                    }
                                }).onAppear {
                                    totalConfidenceBreaths += 1
                                    UIApplication.shared.isIdleTimerDisabled = true
                                }
                        })
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                    }
                    VStack {
                        Spacer()
                        Button(action: {
                            goHome()
                            
                        }
                        ) {
                            Image(systemName: "house")
                                .font(.system(size:60))
                        }.frame(alignment: .bottom)
                        
                    }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
    
}

struct BoxBreath: View {
    @State private var currentBreathImg = "start"
    @State private var returnHome = false
    @State private var numBreathsTaken = 0
    @State private var sliderValue = 5.0
    @State private var startBreathing = false
    @State private var clickedStartAlready = false
    @AppStorage("totalBreaths") var totalBreaths = 0
    @AppStorage("totalBoxBreaths") var totalBoxBreaths = 0
    
    private let breathsPerMinute = 60/(0.5*32) // 3.75 breaths/min
    private let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var counter = 0
    let images = ["in", "in", "in", "in", "in", "in", "in", "in", "hold","hold", "hold", "hold", "hold", "hold", "hold", "hold", "out", "out", "out", "out", "out","out","out", "out", "hold","hold", "hold", "hold", "hold", "hold", "hold", "hold"]
    let breathModel = BreathModel()
    
    func goHome() {
        counter = 0
        Player().stopPlaying()
        totalBreaths += numBreathsTaken
        
        if breathModel.breathHash["box"] == nil {
            breathModel.breathHash["box"] = 1
        } else {
            breathModel.breathHash["box"]! += 1
        }
        
        let myCalendar = Calendar(identifier: .gregorian)
        let ymd = myCalendar.dateComponents([.year, .month, .day], from: Date())
        let dateString = "\(ymd)"
        let thisBreath = Breath(typeOfBreath: "box", numBreaths: numBreathsTaken, date: dateString)
        
        breathModel.addBreathInstance(breath: thisBreath)
        
        UIApplication.shared.isIdleTimerDisabled = false
        returnHome = true
    }
    
    func onTimerTic(num_breaths: Int = 8) {
        let index = counter % (images.count)
        if (counter % (images.count)) == 0 {
            print("going to play sound")
            Player().playSound(sound: "4inhold4outhold", type: "mp3")
            
        }
        currentBreathImg = images[index]
        
        if (counter % (images.count)) == images.count - 1 {
            numBreathsTaken += 1
            
        }
        if numBreathsTaken >= num_breaths {
            goHome()
        }
        
        counter += 1
        
    }
    
    var body: some View {
        VStack {
            if returnHome {
                MainScreen()
            } else {
                ZStack {
                    VStack {
                        Slider(value: $sliderValue, in: 1...10) {
                        }.padding().frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Button(action: {
                            if !clickedStartAlready {
                                startBreathing = true
                                clickedStartAlready = true
                            }
                        }, label: {
                            
                            if sliderValue < 2 {
                                Text(String(Int(sliderValue)) + " minute")
                                    .font(.custom("LiSong Pro", size: 40))
                            } else {
                                Text(String(Int(sliderValue)) + " minutes")
                                    .font(.custom("LiSong Pro", size: 40))
                                
                            }
                        })
                        Spacer()
                        
                    }
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        Button(action: {
                            startBreathing = true
                        }, label: {
                            Image(currentBreathImg)
                                .resizable()
                                .frame(width: 500, height: 500)
                                .animation(.easeInOut)
                                .onReceive(timer, perform: { _ in
                                    if startBreathing {
                                        if !clickedStartAlready {
                                            onTimerTic(num_breaths: Int(sliderValue)*Int(breathsPerMinute))
                                            
                                            
                                        }
                                    }
                                }).onAppear {
                                    totalBoxBreaths += 1
                                    UIApplication.shared.isIdleTimerDisabled = true
                                }
                        })
                        
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                    }
                    VStack {
                        Spacer()
                        Button(action: {
                            goHome()
                            
                        }
                        ) {
                            Image(systemName: "house")
                                .font(.system(size:60))
                        }.frame(alignment: .bottom)
                        
                    }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
    
}

struct WimHofScreen: View {
    @State private var currentBreathImg:String = "inbelly"
    @State private var returnHome = false
    
    @State var counter = 0
    @State var breathcounter = 0
    @State var holding = false
    @State var round_number = 0
    @State var half_seconds_tohold = 0
    @State var informationLbl = ""
    @State var postHoldingCycle = false
    @State var beginningOfHoldCycle = true
    @State var breathingOutOfPostHold = false
    @State var currentlyBreathingOutOfPostHold = false
    @AppStorage("totalBreaths") var totalBreaths = 0
    @AppStorage("totalWimHofs") var totalWimHofs = 0
    
    // Edit these varaible to customize
    private var timer_seconds:Double = 0.5 // If this is changed, update timer accordingly!
    let breaths_in_round = 20
    private let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    private let hold_increase = 60 // This variable controls how long the hold cycle lasts - 60 => r1 = 30 seconds
    let num_seconds_per_in = 3.0 // Num seconds per in breath (to link with audio)
    let num_seconds_per_out = 2.0 // Num seconds per out breath (to link with audio)
    let num_rounds = 4
    let breathModel = BreathModel()
    
    @State var images:Array<String> = []
    
    func assembleImgArr(imgArray: inout Array<String>) {
        for _ in 1...Int((num_seconds_per_in/timer_seconds)/3) {
            imgArray.append("inbelly")
        }
        for _ in 1...(Int(2*(num_seconds_per_in/timer_seconds)/3)) {
            imgArray.append("inchest")
        }
        for _ in 1...Int((num_seconds_per_out/timer_seconds)) {
            imgArray.append("out")
        }
        print(imgArray)
    }
    
    func goHome() {
        counter = 0
        Player().stopPlaying()
        totalBreaths += breaths_in_round*round_number + breathcounter
        
        if breathModel.breathHash["retention"] == nil {
            breathModel.breathHash["retention"] = 1
        } else {
            breathModel.breathHash["retention"]! += 1
        }
        
        let myCalendar = Calendar(identifier: .gregorian)
        let ymd = myCalendar.dateComponents([.year, .month, .day], from: Date())
        let dateString = "\(ymd)"
        let thisBreath = Breath(typeOfBreath: "retention", numBreaths: breaths_in_round*round_number + breathcounter, date: dateString)
        
        breathModel.addBreathInstance(breath: thisBreath)
        
        UIApplication.shared.isIdleTimerDisabled = false
        returnHome = true
    }
    
    func onTimerTic() {
        let index = counter % (images.count)
        
        // If start of breath cylce, play sound
        if index == 0 && !holding && !postHoldingCycle {
            informationLbl = "Breaths Left: " + String(breaths_in_round - breathcounter)
            print("Playing sound")
            Player().playSound(sound: "wimhofv4", type: "mp3")
        }
        
        // If end of a breath, incrmeent breathcounter
        if index == (images.count - 1) && !holding && !postHoldingCycle {
            breathcounter += 1
            informationLbl = "Breaths Left: " + String(breaths_in_round - breathcounter)
        }
        
        // If done with entire breathing round, switch to a hold cylce
        if breathcounter >= breaths_in_round {
            let seconds_left = Int(Double(hold_increase+round_number*hold_increase)*timer_seconds)
            informationLbl = "Seconds Left: " + String(seconds_left)
            currentBreathImg = "hold"
            counter = 0
            breathcounter = 0
            holding = true
            half_seconds_tohold = round_number*hold_increase+hold_increase
            print("half seconds to hold is : " + String(half_seconds_tohold))
        }
        
        // If holding, update information label. If done with holding cylce, reset
        if holding {
            if !postHoldingCycle {
                let seconds_left = Int(Double(hold_increase+round_number*hold_increase)*timer_seconds) - counter/2
                informationLbl = "Seconds Left: " + String((seconds_left > 0) ? seconds_left : 1)
                
                
                // If done with holding round, breath in and hold
                if counter >= half_seconds_tohold {
                    postHoldingCycle = true
                    counter = 0
                    
                }
            } else { // IF post-holding cycle, breath in and hold
                let half_seconds_to_hold = Int(num_seconds_per_in*2 + 20.0)
                // we want the below code to only trigger at the beginning
                if beginningOfHoldCycle {
                    Player().stopPlaying()
                    Player().playSound(sound: "wimhof-firsthalf", type: "mp3")
                    informationLbl = ""
                    currentBreathImg = "inchest"
                    beginningOfHoldCycle = false
                }
                
                if !currentlyBreathingOutOfPostHold {
                    var disp_seconds_left = (Int(half_seconds_to_hold + 1 - counter))/2
                    disp_seconds_left = (disp_seconds_left > 0 ? disp_seconds_left : 1)
                    informationLbl = "Breath in and hold for " + String(disp_seconds_left)
                    if counter < Int(num_seconds_per_in/timer_seconds) + Int(num_seconds_per_in/2) {
                        informationLbl = ""
                    }
                    if counter >= Int(num_seconds_per_in/timer_seconds) {
                        currentBreathImg = "hold"
                    }
                }
                
                if counter >= half_seconds_to_hold {
                    if counter >= (half_seconds_to_hold + Int(num_seconds_per_out*2.0)) {
                        // reset all booleans used for control
                        breathingOutOfPostHold = false
                        currentlyBreathingOutOfPostHold = false
                        beginningOfHoldCycle = true
                        postHoldingCycle = false
                        
                        // check where to go next
                        if round_number >= num_rounds - 1 {
                            goHome()
                        } else {
                            round_number += 1
                            counter = 0
                            holding = false
                            breathcounter = 0
                            Player().playSound(sound: "wimhofv4", type: "mp3")
                            informationLbl = "Breaths Left: " + String(breaths_in_round - breathcounter)
                        }
                    } else {
                        breathingOutOfPostHold = true
                    }
                    
                    if breathingOutOfPostHold {
                        if !currentlyBreathingOutOfPostHold {
                            informationLbl = ""
                            currentlyBreathingOutOfPostHold = true
                            Player().playSound(sound: "wimhof-secondhalf", type: "mp3")
                            currentBreathImg = "out"
                        }
                        
                    }
                    
                }
            }
            
            
        } else if !holding { // If not holding, switch images
            currentBreathImg = images[index]
        }
        
        // Increment counter with timer
        counter += 1
        
    }
    
    var body: some View {
        VStack {
            if returnHome {
                MainScreen()
            } else {
                VStack {
                    Spacer()
                    Spacer()
                    Text(informationLbl)
                        .font(.custom("LiSong Pro", size: 40))
                        .accentColor(.blue)
                    Spacer()
                    Spacer()
                    Image(currentBreathImg)
                        .resizable()
                        .frame(width: 500, height: 500)
                        .animation(.easeInOut)
                        .onReceive(timer, perform: { _ in
                            onTimerTic()
                        }).onAppear {
                            totalWimHofs += 1
                            UIApplication.shared.isIdleTimerDisabled = true
                            assembleImgArr(imgArray: &images)
                        }
                    
                    Spacer()
                    Spacer()
                    Button(action: {
                            goHome()}
                    ) {
                        Image(systemName: "house")
                            .font(.system(size:60))
                    }
                    Spacer()
                }
                
                
            }
        }
        
    }
    
}

struct BreathOfFire: View {
    @State private var currentBreathImg = "start"
    @State private var returnHome = false
    @State private var numBreathsTaken = 0
    @State private var sliderValue = 5.0
    @State private var startBreathing = false
    @State private var clickedStartAlready = false
    @AppStorage("totalBreaths") var totalBreaths = 0
    @AppStorage("totalBreathOfFire") var totalBreathOfFire = 0
    
    private let breathsPerMinute = 60/(0.25*2) // 8 breaths/min
    private let timer = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    @State var counter = 0
    let images = ["inbelly", "out"]
    
    func onTimerTic(num_breaths: Int = 8) {
        let index = counter % (images.count)
        if (counter % (images.count)) == 0 {
            print("going to play sound")
            Player().playSound(sound: "breathoffire", type: "mp3")
            
        }
        currentBreathImg = images[index]
        
        if (counter % (images.count)) == images.count - 1 {
            numBreathsTaken += 1
            
        }
        if numBreathsTaken >= num_breaths {
            totalBreaths += numBreathsTaken
            numBreathsTaken = 0
            UIApplication.shared.isIdleTimerDisabled = false
            returnHome = true
        }
        
        counter += 1
        
    }
    
    var body: some View {
        VStack {
            if returnHome {
                MainScreen()
            } else {
                ZStack {
                    VStack {
                        Slider(value: $sliderValue, in: 1...10) {
                        }.padding().frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Button(action: {
                            if !clickedStartAlready {
                                startBreathing = true
                                clickedStartAlready = true
                            }
                        }, label: {
                            
                            if sliderValue < 2 {
                                Text(String(Int(sliderValue)) + " minute")
                                    .font(.custom("LiSong Pro", size: 40))
                            } else {
                                Text(String(Int(sliderValue)) + " minutes")
                                    .font(.custom("LiSong Pro", size: 40))
                                
                            }
                            
                            
                        })
                        Spacer()
                        
                    }
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        Button(action: {
                            startBreathing = true
                        }, label: {
                            Image(currentBreathImg)
                                .resizable()
                                .frame(width: 500, height: 500)
                                .animation(.easeInOut)
                                .onReceive(timer, perform: { _ in
                                    if startBreathing {
                                        if !clickedStartAlready {
                                            onTimerTic(num_breaths: Int(sliderValue)*Int(breathsPerMinute))
                                            
                                        }
                                    }
                                }).onAppear {
                                    totalBreathOfFire += 1
                                    UIApplication.shared.isIdleTimerDisabled = true
                                }
                        })
                        
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    VStack {
                        Spacer()
                        Button(action: {
                            counter = 0
                            Player().stopPlaying()
                            totalBreaths += numBreathsTaken
                            UIApplication.shared.isIdleTimerDisabled = false
                            returnHome = true
                            
                        }
                        ) {
                            Image(systemName: "house")
                                .font(.system(size:60))
                        }.frame(alignment: .bottom)
                        
                    }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
    
}

struct RelaxingBreath: View {
    @State private var currentBreathImg = "start"
    @State private var returnHome = false
    @State private var numBreathsTaken = 0
    @State private var sliderValue = 5.0
    @State private var startBreathing = false
    @State private var clickedStartAlready = false
    @AppStorage("totalBreaths") var totalBreaths = 0
    @AppStorage("totalRelaxingBreaths") var totalRelaxingBreaths = 0
    
    private let breathsPerMinute = 60/(0.5*16) // 10 breaths/min
    private let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var counter = 0
    let images = ["inbelly", "inbelly", "inbelly", "inbelly", "inchest","inchest", "inchest", "inchest", "out", "out", "out", "out", "out", "out", "out", "out"]
    
    func onTimerTic(num_breaths: Int = 8) {
        let index = counter % (images.count)
        if (counter % (images.count)) == 0 {
            print("going to play sound")
            Player().playSound(sound: "relaxbreath", type: "mp3")
            
        }
        currentBreathImg = images[index]
        
        if (counter % (images.count)) == images.count - 1 {
            numBreathsTaken += 1
            
        }
        if numBreathsTaken >= num_breaths {
            totalBreaths += numBreathsTaken
            numBreathsTaken = 0
            UIApplication.shared.isIdleTimerDisabled = false
            returnHome = true
        }
        
        counter += 1
        
    }
    
    var body: some View {
        VStack {
            if returnHome {
                MainScreen()
            } else {
                ZStack {
                    VStack {
                        Slider(value: $sliderValue, in: 1...10) {
                        }.padding().frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Button(action: {
                            if !clickedStartAlready {
                                startBreathing = true
                                clickedStartAlready = true
                            }
                        }, label: {
                            
                            if sliderValue < 2 {
                                Text(String(Int(sliderValue)) + " minute")
                                    .font(.custom("LiSong Pro", size: 40))
                            } else {
                                Text(String(Int(sliderValue)) + " minutes")
                                    .font(.custom("LiSong Pro", size: 40))
                                
                            }
                            
                            
                        })
                        Spacer()
                        
                    }
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        Button(action: {
                            startBreathing = true
                        }, label: {
                            Image(currentBreathImg)
                                .resizable()
                                .frame(width: 500, height: 500)
                                .animation(.easeInOut)
                                .onReceive(timer, perform: { _ in
                                    if startBreathing {
                                        if !clickedStartAlready {
                                            onTimerTic(num_breaths: Int(sliderValue)*Int(breathsPerMinute))
                                            
                                        }
                                    }
                                }).onAppear {
                                    totalRelaxingBreaths += 1
                                    UIApplication.shared.isIdleTimerDisabled = true
                                }
                        })
                        
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                    }
                    VStack {
                        Spacer()
                        Button(action: {
                            counter = 0
                            Player().stopPlaying()
                            totalBreaths += numBreathsTaken
                            UIApplication.shared.isIdleTimerDisabled = false
                            returnHome = true
                            
                        }
                        ) {
                            Image(systemName: "house")
                                .font(.system(size:60))
                        }.frame(alignment: .bottom)
                        
                    }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
    
}

struct FocusBreath: View {
    @State private var currentBreathImg = "start"
    @State private var returnHome = false
    @State private var numBreathsTaken = 0
    @State private var sliderValue = 5.0
    @State private var startBreathing = false
    @State private var clickedStartAlready = false
    @AppStorage("totalBreaths") var totalBreaths = 0
    @AppStorage("totalFocusBreaths") var totalFocusBreaths = 0
    
    private let breathsPerMinute = 60/(0.5*20) // 6 breaths/min
    private let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var counter = 0
    let images = ["inright", "inright", "inright", "inright", "inright","inright", "inright", "inright", "inright", "inright", "inright", "inright", "outleft","outleft", "outleft", "outleft", "outleft", "outleft", "outleft", "outleft","outleft","outleft","outleft","outleft"]
    
    let images2 = ["inleft", "inleft", "inleft", "inleft", "inleft","inleft", "inleft", "inleft", "inleft", "inleft", "inleft", "inleft", "outright","outright", "outright", "outright", "outright", "outright", "outright", "outright","outright","outright","outright","outright"]
    
    func onTimerTic(num_breaths: Int = 8) {
        let index = counter % (images.count)
        if (counter % (images.count)) == 0 {
            print("going to play sound")
            Player().playSound(sound: "focusbreath", type: "mp3")
            
        }
        
        if numBreathsTaken % 2 == 0 {
            currentBreathImg = images[index]
        } else {
            currentBreathImg = images2[index]
        }
        
        if (counter % (images.count)) == images.count - 1 {
            numBreathsTaken += 1
            
        }
        if numBreathsTaken >= num_breaths {
            totalBreaths += numBreathsTaken
            numBreathsTaken = 0
            UIApplication.shared.isIdleTimerDisabled = false
            returnHome = true
        }
        
        counter += 1
    }
    
    var body: some View {
        VStack {
            if returnHome {
                MainScreen()
            } else {
                ZStack {
                    VStack {
                        Slider(value: $sliderValue, in: 1...10) {
                        }.padding().frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Button(action: {
                            if !clickedStartAlready {
                                startBreathing = true
                                clickedStartAlready = true
                            }
                        }, label: {
                            
                            if sliderValue < 2 {
                                Text(String(Int(sliderValue)) + " minute")
                                    .font(.custom("LiSong Pro", size: 40))
                            } else {
                                Text(String(Int(sliderValue)) + " minutes")
                                    .font(.custom("LiSong Pro", size: 40))
                                
                            }
                            
                            
                        })
                        Spacer()
                        
                    }
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        
                        
                        Button(action: {
                            startBreathing = true
                        }, label: {
                            Image(currentBreathImg)
                                .resizable()
                                .frame(width: 500, height: 500)
                                .animation(.easeInOut)
                                .onReceive(timer, perform: { _ in
                                    if startBreathing {
                                        if !clickedStartAlready {
                                            onTimerTic(num_breaths: Int(sliderValue)*Int(breathsPerMinute))
                                            
                                        }
                                    }
                                }).onAppear {
                                    totalFocusBreaths += 1
                                    UIApplication.shared.isIdleTimerDisabled = true
                                }
                        })
                        
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        
                        
                        Spacer()
                        
                        
                        
                    }
                    VStack {
                        Spacer()
                        Button(action: {
                            counter = 0
                            Player().stopPlaying()
                            totalBreaths += numBreathsTaken
                            UIApplication.shared.isIdleTimerDisabled = false
                            returnHome = true
                            
                        }
                        ) {
                            Image(systemName: "house")
                                .font(.system(size:60))
                        }.frame(alignment: .bottom)
                        
                    }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainScreen()
            
        }
    }
}
