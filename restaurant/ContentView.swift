//
//  ContentView.swift
//  restaurant
//
//  Created by Sam Chen on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            TabView {
                homePageView()
                    .tabItem {
                        Label("Home", systemImage:"house")
                    }
                menuPageView()
                    .tabItem {
                        Label("Menu", systemImage:"list.bullet")
                    }
                profilePageView()
                    .tabItem {
                        Label("Profile", systemImage:"person.crop.circle")
                    }
            }
        }
    }
}

struct homePageView: View {
    var body: some View {
        NavigationView {
            ZStack {
                /*
                 NavigationLink("Order") {
                 menuPageView()
                 }
                 */
                
                VStack {
                    Image("red")
                        .resizable()
                        .frame(width:500, height:200)
                        .padding(.top,-200)
                    Image("homePic")
                        .resizable()
                        .aspectRatio(contentMode:.fill)
                        .padding(.bottom)
                        }
                NavigationLink("Deals") {
                        dealPageView()
                    }
                    .padding()
                    .background(.red)
                    .cornerRadius(10.0)
                    .foregroundColor(.yellow)
                    .navigationBarTitle("McDonald's")
                }
            }
        }
    }
    
    struct menuPageView: View {
        var body: some View {
            NavigationView{
                VStack {
                    Image("red")
                        .resizable()
                        .frame(width:500, height:200)
                        .padding(.top,-330)
                    LabeledContent(
                        content:{
                            Text("$2.19")
                                .foregroundStyle(.gray)
                                .strikethrough(true,color:.red)
                            Text("$1.10")
                                .foregroundStyle(.black)
                        }, 
                        label: {
                            NavigationLink("Hot n Spicy McChicken") {
                                    mcchickenView()
                                }
                        }
                    )
                    .padding()
                    
                    LabeledContent(
                        content:{
                            Text("$3.79")
                                .foregroundStyle(.gray)
                                .strikethrough(true,color:.red)
                            Text("$1.90")
                                .foregroundStyle(.black)
                        },
                        label: {
                            NavigationLink("Large Fries") {
                                    friesView()
                                }
                        }
                    )
                    .padding()
                    
                    LabeledContent(
                        content:{
                            Text("$4.69")
                                .foregroundStyle(.gray)
                                .strikethrough(true,color:.red)
                            Text("$2.35")
                                .foregroundStyle(.black)
                        },
                        label: {
                            NavigationLink("Happy Meal") {
                                    happyMealView()
                                }
                        }
                    )
                    .padding()
                    
                    LabeledContent(
                        content:{
                            Text("$5.69")
                                .foregroundStyle(.black)
                        },
                        label: {
                            NavigationLink("Big Mac") {
                                    bigMacView()
                                }
                        }
                    )
                    .padding()
                    
                    LabeledContent(
                        content:{
                            Text("$5.39")
                                .foregroundStyle(.black)
                        },
                        label: {
                            NavigationLink("10pc Nuggets") {
                                    nuggetsView()
                                }
                        }
                    )
                    .padding()
                    
                    LabeledContent(
                        content:{
                            Text("$1.79")
                                .foregroundStyle(.black)
                        },
                        label: {
                            NavigationLink("Large Soda") {
                                    sodaView()
                                }
                        }
                    )
                    .padding()
                    
                }
                .navigationBarTitle("Menu")
            }
        }
    }
    
    struct profilePageView: View {
        @State var username: String = ""
        @State var password: String = ""
        //variable to control the alert
        @State private var onAlert = false
        var body: some View {
            NavigationView {
                VStack {
                    Image("red")
                        .resizable()
                        .frame(width:500, height:200)
                        .padding(.top,-415)
                    Image(systemName:"key")
                        .resizable()
                        .frame(width:20 , height:35)
                    TextField("Username", text:$username)
                        .padding()
                    TextField("Password", text:$password)
                        .padding()
                    Button("Login") {
                        onAlert = true
                    }
                    .alert("Welcome Back \(username)!", isPresented: $onAlert) {
                        Button("Start Ordering", role: .none){ }
                        Button("OK", role: .none){ }
                    }
                    
                }
                .navigationBarTitle("Profile")
            }
        }
    }
    
    struct dealPageView: View {
        var body: some View {
            NavigationView {
                VStack {
                    Image("red")
                        .resizable()
                        .frame(width:500, height:100)
                        .padding(.top,-150)
                    Text("50% OFF!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                    List {
                        HStack{
                            Image("mcchicken")
                                .resizable()
                                .frame(width:150, height:100)
                                .padding(.leading,-40)
                            Text("Hot n Spicy McChicken")
                        }
                        HStack{
                            Image("fries")
                                .resizable()
                                .frame(width:150, height:100)
                                .padding(.leading,-40)
                            Text("Large Fries")
                        }
                        HStack{
                            Image("happyMeal")
                                .resizable()
                                .frame(width:120, height:100)
                                .padding(.leading,-10)
                            Text("Happy Meal")
                        }
                    }
                }
                .navigationBarTitle("Deals")
            }
        }
    }

struct mcchickenView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("mcchicken")
                    .resizable()
                    .scaledToFit()
            }
            .navigationBarTitle("Hot n Spicy McChicken")
        }
    }
}

struct friesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("fries")
                    .resizable()
                    .scaledToFit()
            }
            .navigationBarTitle("Large Fries")
        }
    }
}

struct happyMealView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("happyMeal")
                    .resizable()
                    .scaledToFit()
            }
            .navigationBarTitle("Happy Meal")
        }
    }
}

struct bigMacView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("bigMac")
                    .resizable()
                    .scaledToFit()
            }
            .navigationBarTitle("Big Mac")
        }
    }
}

struct nuggetsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("nuggets")
                    .resizable()
                    .scaledToFit()
            }
            .navigationBarTitle("10pc Nuggets")
        }
    }
}

struct sodaView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("soda")
                    .resizable()
                    .scaledToFit()
            }
            .navigationBarTitle("Large Soda")
        }
    }
}

    #Preview {
        ContentView()
}
