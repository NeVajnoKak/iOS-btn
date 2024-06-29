////
////  ContentView.swift
////  CalCool
////
////  Created by Erkebulan Massainov on 29.06.2024.
////
//
//import SwiftUI
//
//enum CalcButton: String {
//    case zero = "0"
//    case one = "1"
//    case two = "2"
//    case three = "3"
//    case four = "4"
//    case five = "5"
//    case six = "6"
//    case seven = "7"
//    case eight = "8"
//    case nine = "9"
//    case add = "+"
//    case subtract = "-"
//    case equal = "="
//    case decimal = "."
//    case mutliply = "*"
//    case divide = "/"
//    case clear = "AC"
//    case percent = "%"
//    case negative = "-/+"
//    
//    var buttonColor: Color {
//        switch self {
//        case .add ,.subtract, .mutliply, .divide, .equal :
//            return .green
//        case .clear, .negative, .percent:
//            return Color(red: 0.41, green: 0.85, blue: 0.31)
//        default :
//            return Color(.white)
//        }
//    }
//}
//
//enum Operation {
//    case add, subtract, multiply, divide, none
//}
//
//struct ContentView: View {
//    @State var value = "0"
//    @State var runningNumber = 0
//    @State var currentOperation: Operation = .none
//    
//    let buttons: [[CalcButton]] = [
//        [.clear, .negative, .percent, .divide],
//        [.seven, .eight, .nine, .mutliply],
//        [.four, .five, .six, .subtract],
//        [.one, .two, .three, .add],
//        [.zero, .decimal, .equal],
//    ]
//    
//    var body: some View {
//        ZStack {
//            Color.black.edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                Spacer()
//                
//                // Text display
//                HStack {
//                    Spacer()
//                    Text(value )
//                        .bold()
//                        .font(.system(size: 85))
//                        .padding(.trailing, 8)
//                        .foregroundColor(.white)
//                }
//                .padding()
//                
//                // Our buttons
//                ForEach(buttons, id: \.self) { row in
//                    HStack(spacing: 12) {
//                        ForEach(row, id: \.self) { item in
//                            Button(action: {
//                                self.didTap(button: item)
//                            }, label: {
//                                Text(item.rawValue)
//                                    .font(.system(size: 32))
//                                    .frame(
//                                        width: self.buttonWidth(item: item),
//                                        height: self.buttonHeight()
//                                    )
//                                    .background(item.buttonColor)
//                                    .foregroundColor(.white)
//                                    .cornerRadius(self.buttonWidth(item: item)/2)
//                            })
//                        }
//                    }
//                    .padding(.bottom, 3)
//                }
//            }
//        }
//    }
//    
//    func didTap(button: CalcButton) {
//        switch button {
//        case .add, .subtract, .mutliply, .divide, .equal:
//            if button == .add {
//                self.currentOperation = .add
//                self.runningNumber = Int(self.value.replacingOccurrences(of: " ", with: "")) ?? 0
//            }
//            else if button == .subtract {
//                self.currentOperation = .subtract
//                self.runningNumber = Int(self.value.replacingOccurrences(of: " ", with: "")) ?? 0
//            }
//            else if button == .mutliply {
//                self.currentOperation = .multiply
//                self.runningNumber = Int(self.value.replacingOccurrences(of: " ", with: "")) ?? 0
//            }
//            else if button == .divide {
//                self.currentOperation = .divide
//                self.runningNumber = Int(self.value.replacingOccurrences(of: " ", with: "")) ?? 0
//            }
//            else if button == .equal {
//                let runningValue = self.runningNumber
//                let currentValue = Int(self.value.replacingOccurrences(of: " ", with: "")) ?? 0
//                switch self.currentOperation {
//                case .add: self.value = formatNumber(runningValue + currentValue)
//                case .subtract: self.value = formatNumber(runningValue - currentValue)
//                case .multiply: self.value = formatNumber(runningValue * currentValue)
//                case .divide: self.value = formatNumber(runningValue / currentValue)
//                case .none:
//                    break
//                }
//            }
//            
//            if button != .equal {
//                self.value = "0"
//            }
//        case .clear:
//            self.value = "0"
//        case .decimal, .negative, .percent:
//            break
//        default:
//            let number = button.rawValue
//            if self.value == "0" {
//                value = number
//            }
//            else {
//                self.value = "\(self.value)\(number)"
//            }
//            self.value = formatNumber(Int(self.value.replacingOccurrences(of: " ", with: "")) ?? 0)
//        }
//    }
//    
//    func formatNumber(_ number: Int) -> String {
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .decimal
//        formatter.groupingSeparator = " "
//        return formatter.string(from: NSNumber(value: number)) ?? "0"
//    }
//    
//    func buttonWidth(item: CalcButton) -> CGFloat {
//        if item == .zero {
//            return ((UIScreen.main.bounds.width - (4*12)) / 4) * 2
//        }
//        return (UIScreen.main.bounds.width - (5*12)) / 4
//    }
//    
//    func buttonHeight() -> CGFloat {
//        return (UIScreen.main.bounds.width - (5*12)) / 4
//    }
//}
//
//#Preview {
//    ContentView()
//}
