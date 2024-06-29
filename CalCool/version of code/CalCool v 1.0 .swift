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
//    @State private var displayCalculate = ""
//    @State private var isNegative = false
//    @State private var hideDispaly = true
//    
//    @State private var sum = ""
//    
//    var body: some View {
//        VStack{
//            VStack{
//                HStack{
//                    Button("History"){
//                        hideDispaly = !hideDispaly
//                    }
//                    
//                }
//                if(!hideDispaly){
//                    VStack{
//                        Text("aw aw aw aw- aw")
//                        Text("aw aw aw aw- aw")
//                        Text("aw aw aw aw- aw")
//                        Text("aw aw aw aw- aw")
//                        Text("aw aw aw aw- aw")
//                        Text("aw aw aw aw- aw")
//                    }
//                    .frame(maxWidth: .infinity , maxHeight: 200)
////                    .background(.black)
//                    
//                }
//                Spacer()
//            }
//            VStack (spacing: 100) {
//                HStack (spacing: 20) {
//                    Text(displayCalculate)
//                        .padding()
//                        .frame(maxWidth: .infinity, alignment: .trailing)
//                        .font(.system(size: 40,weight: .regular, design: .rounded))
//                    
//                }
//                .frame (maxHeight:50)
////                .background(.blue)
//            }
//            
//            
//            VStack{
//                HStack (spacing: 15) {
//                    ForEach(calcValues){ calcValue in
//                        Button(action: {
//
//                            if(calcValue.name == "AC"){
//                                displayCalculate = ""
//                                sum = ""
//                                isNegative = false
//                                return
//                            }
//                           
//                            if(calcValue.name == "+/-"){
//                                if(displayCalculate == "")
//                                {
//                                    return
//                                }
//                                if(isNegative) {
//                                    if let i = displayCalculate.firstIndex(of: "-"){
//                                        displayCalculate.remove(at: i)
//                                    }
//                                   
//                                   
//                                }
//                                else {
//                                    displayCalculate.insert("-", at: displayCalculate.startIndex)
//                                }
//                                
//                                isNegative = !isNegative
//                               
//                                
//                                return
//                            }
//                            if(calcValue.name == "%") {
////                                displayCalculate = ""
//                                sum = displayCalculate + "/100"
//                                let expression = NSExpression(format:sum)
//                                let value = expression.expressionValue(with: nil, context: nil) as? Float
//                
//                                
//                                sum = String(value ?? 0)
//                                displayCalculate = sum
//                                
//                                isNegative = false
//                                return
//                            }
//                            if(calcValue.name == "/") {
////                                displayCalculate = ""
//                                sum += displayCalculate + "/"
//                                displayCalculate = ""
//                                isNegative = false
//                                return
//                            }
//                            displayCalculate = displayCalculate + calcValue.name
//                        }) {
//                            Text(calcValue.name)
//                                .frame(width: 85, height: 85)
//                                .font(.system(size: 30,weight: .regular, design: .rounded))
//                                .foregroundColor(Color.white)
//                                .background(Color(red: 0.41, green: 0.85, blue: 0.31))
//                                .clipShape(Circle())
//                        }
//                    }
//                    
//                }
//                HStack (spacing: 15) {
//                    ForEach(calcValues2){ calcValue in
//                        Button(action: {
//
//                            if(calcValue.name == "x"){
//                                sum += displayCalculate + "*"
//                                displayCalculate = ""
////                                displayCalculate = ""
//                                isNegative = false
//                                return
//                            }
//                            displayCalculate = displayCalculate + calcValue.name
//                        }) {
//                            Text(calcValue.name)
//                                .frame(width: 85, height: 85)
//                                .font(.system(size: 30,weight: .regular, design: .rounded))
//                                .foregroundColor(Color.white)
//                                .background(Color(red: 0.41, green: 0.85, blue: 0.31))
//                                .clipShape(Circle())
//                        }
//                    }
//                    
//                }
//                
//                HStack (spacing: 15) {
//                    ForEach(calcValues3){ calcValue in
//                        Button(action: {
//
//                            if(calcValue.name == "-"){
////                                displayCalculate = ""
//                                sum += displayCalculate + "-"
//                                displayCalculate = ""
//                                isNegative = false
//                                return
//                            }
//                            displayCalculate = displayCalculate + calcValue.name
//                        }) {
//                            Text(calcValue.name)
//                                .frame(width: 85, height: 85)
//                                .font(.system(size: 30,weight: .regular, design: .rounded))
//                                .foregroundColor(Color.white)
//                                .background(Color(red: 0.41, green: 0.85, blue: 0.31))
//                                .clipShape(Circle())
//                        }
//                    }
//                    
//                }
//                
//                HStack  (spacing: 15){
//                    ForEach(calcValues4){ calcValue in
//                        Button(action: {
//
//                            if(calcValue.name == "+") {
////                                displayCalculate = ""
//                                sum += displayCalculate + "+"
//                                displayCalculate = ""
//                                isNegative = false
//                                return
//                            }
//                            displayCalculate = displayCalculate + calcValue.name
//                        }) {
//                            Text(calcValue.name)
//                                .frame(width: 85, height: 85)
//                                .font(.system(size: 30,weight: .regular, design: .rounded))
//                                .foregroundColor(Color.white)
//                                .background(Color(red: 0.41, green: 0.85, blue: 0.31))
//                                .clipShape(Circle())
//                        }
//                    }
//                    
//                }
//                
//                HStack (spacing: 15){
//                    ForEach(calcValues5){ calcValue in
//                        Button(action: {
//
//                            if(calcValue.name == ".") {
//                                sum += displayCalculate + ","
//                            }
//                            
//                            if(calcValue.name == "=") {
//                                sum += displayCalculate
////                                displayCalculate = ""
//                                let expression = NSExpression(format:sum)
//                                let value = expression.expressionValue(with: nil, context: nil) as? Float
//                                sum = String(value ?? 0)
//                                
//                                
//                                displayCalculate = sum
//                                isNegative = false
//                                return
//                            }
//                            
//                            displayCalculate = displayCalculate + calcValue.name
//                        }) {
//                            Text(calcValue.name)
//                                .frame(width: 85, height: 85)
//                                .font(.system(size: 30,weight: .regular, design: .rounded))
//                                .foregroundColor(Color.white)
//                                .background(Color(red: 0.41, green: 0.85, blue: 0.31))
//                                .clipShape(Circle())
//                        }
//                    }
//                }
//            }
//            //        AC
//            
//            
//            
//        }
//    }
//}
//
//
////private struct checkButton : ButtonStyle {
////    func makeBody(configuration: Configuration) -> some View {
////        configuration.label
////        if configuration.isPressed {
////            Button()
////            .background(.dark)
////        }
////        else {
////            .background(.white)
////        }
////    }
////}
//extension NSExpression {
//
//    func toFloatingPoint() -> NSExpression {
//        switch expressionType {
//        case .constantValue:
//            if let value = constantValue as? NSNumber {
//                return NSExpression(forConstantValue: NSNumber(value: value.doubleValue))
//            }
//        case .function:
//           let newArgs = arguments.map { $0.map { $0.toFloatingPoint() } }
//           return NSExpression(forFunction: operand, selectorName: function, arguments: newArgs)
//        case .conditional:
//           return NSExpression(forConditional: predicate, trueExpression: self.true.toFloatingPoint(), falseExpression: self.false.toFloatingPoint())
//        case .unionSet:
//            return NSExpression(forUnionSet: left.toFloatingPoint(), with: right.toFloatingPoint())
//        case .intersectSet:
//            return NSExpression(forIntersectSet: left.toFloatingPoint(), with: right.toFloatingPoint())
//        case .minusSet:
//            return NSExpression(forMinusSet: left.toFloatingPoint(), with: right.toFloatingPoint())
//        case .subquery:
//            if let subQuery = collection as? NSExpression {
//                return NSExpression(forSubquery: subQuery.toFloatingPoint(), usingIteratorVariable: variable, predicate: predicate)
//            }
//        case .aggregate:
//            if let subExpressions = collection as? [NSExpression] {
//                return NSExpression(forAggregate: subExpressions.map { $0.toFloatingPoint() })
//            }
//        case .anyKey:
//            print("anykey not yet")
////            fatalError("anyKey not yet implemented")
//        case .block:
//            print("block not yet")
////            fatalError("block not yet implemented")
//        case .evaluatedObject, .variable, .keyPath:
//            break // Nothing to do here
//        }
//        return self
//    }
//}
//private let calcValues5 : [CalcNeed] = [
//    CalcNeed(name: "0"),
//    CalcNeed(name: "."),
//    CalcNeed(name: "="),
//]
//
//private let calcValues4 : [CalcNeed] = [
//    CalcNeed(name: "1"),
//    CalcNeed(name: "2"),
//    CalcNeed(name: "3"),
//    CalcNeed(name: "+"),
//]
//
//private let calcValues3 : [CalcNeed] = [
//    CalcNeed(name: "4"),
//    CalcNeed(name: "5"),
//    CalcNeed(name: "6"),
//    CalcNeed(name: "-"),
//]
//
//
//private let calcValues2 : [CalcNeed] = [
//    CalcNeed(name: "7"),
//    CalcNeed(name: "8"),
//    CalcNeed(name: "9"),
//    CalcNeed(name: "x"),
//]
//
//
//private struct CalcNeed : Identifiable {
//    let name : String
//    var id = UUID().uuidString
//}
//
//private let calcValues : [CalcNeed] = [
//    CalcNeed(name: "AC"),
//    CalcNeed(name: "+/-"),
//    CalcNeed(name: "%"),
//    CalcNeed(name: "/"),
//]
//
//#Preview {
//    ContentView()
//}
