////
////  ContentView.swift
////  CalCool
////
////  Created by Erkebulan Massainov on 29.06.2024.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack{
//            
//            
//            Button("AC"){
//                print("AC")
//            }
//            .buttonStyle(.whiteWithHover)
//                    
//            Button("+-"){
//                print("+-")
//            }
//            .buttonStyle(.bluebtnDiff)
//                
//            
//            //            Button("AC"){
//            //                print("AC")
//            //            }
//            //            .buttonStyle(.greenbtn)
//            //
//            //            Button("+ -" ){
//            //                print("+ -")
//            //            }
//            //            .hoverEffect(.lift)
//            //            .buttonStyle(.greenbtn)
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
//        .edgesIgnoringSafeArea(.all)
////        .frame(maxWidth: .infinity , maxHeight: .infinity)
////        .background(Color(red : 0.89 , green: 0.93 , blue: 1))
////        .edgesIgnoringSafeArea(.all)
//    }
//}
//
//extension ButtonStyle where Self == GreenButtonStyle {
//    
//    static var greenbtn: GreenButtonStyle {
//        GreenButtonStyle()
//    }
//}
//
//extension ButtonStyle where Self == WhiteWithHoverButtonStyle {
//    static var whiteWithHover: WhiteWithHoverButtonStyle {
//        WhiteWithHoverButtonStyle()
//    }
//}
//
//extension ButtonStyle where Self == BlueButtonDifferent {
//    static var bluebtnDiff: BlueButtonDifferent {
//        BlueButtonDifferent()
//    }
//}
//
//struct BlueButtonDifferent: ButtonStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .font(.system(size: 20, weight: .semibold, design: .rounded))
//            .frame(width: 200, height: 60)
//            .background(
//                ZStack{
//                    Color.cyan
//                    RoundedRectangle(cornerRadius: 16, style: .continuous)
//                        .foregroundColor(.white)
//                        .blur(radius: 4)
//                        .offset(x: -8, y: -8)
//                    RoundedRectangle(cornerRadius: 16, style: .continuous)
//                        .foregroundColor(.cyan)
//                        .padding(2)
//                        .blur(radius: 2)
//                }
//            )
//            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
//            .shadow(color: .cyan, radius: 20 , x: 20, y: 20)
//            .shadow(color: .white, radius: 20 , x: -20, y: -20)
//    }
//}
//
//struct WhiteWithHoverButtonStyle: ButtonStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .font(.system(size: 20, weight: .semibold, design: .rounded))
//            .frame(width: 200, height: 60)
//            .background(
//                ZStack {
//                    Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
//
//                    RoundedRectangle(cornerRadius: 16, style: .continuous)
//                        .foregroundColor(.white)
//                        .blur(radius: 4)
//                        .offset(x: -8, y: -8)
//
//                    RoundedRectangle(cornerRadius: 16, style: .continuous)
//                        .fill(
//                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                            )
//                        .padding(2)
//                        .blur(radius: 2)
//                }
//            )
//            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
//            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
//            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
//    }
//}
//
//struct GreenButtonStyle: ButtonStyle {
//    
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .cornerRadius(100)
//            .padding()
//            .foregroundColor(.green)
//            .background(
//                RoundedRectangle(
//                    cornerRadius: 100,
//                    style: .continuous
//                )
//                .stroke(.green, lineWidth: 2)
//            )
//            .font(Font.system(size: 30))
//    }
//}
//
//#Preview {
//    ContentView()
//}
