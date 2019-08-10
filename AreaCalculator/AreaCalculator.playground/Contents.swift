import UIKit

/*

 AreaCalculator - Author Rocky "Kid Mongoose" Latchman
 
 1. - Get the shape
 2. - get the unit of measurement
 3. - Get the values for the length, width etc
 4. - return the result
 
 */


enum pyramidTypes {
  case square
  case triangular
  case pentagonal
}


enum Shape {
    case rectangle
    case triangle
    case pyramid
    case trapezoid
    case circle
    case ellipse
    case parallelogram
    case torus
}


enum Si {
    case feet
    case yards
    case inches
    case kilometers
    case meters
    case centimeters
    case miles
}

protocol AreaCalculatorStrategy {
    func calculate(shape: Shape, _ firstNumber: Double, _ secondNumber: Double?, _ thirdNumber: Double?)
}

struct AreaCalculator {
    let strategy: AreaCalculatorStrategy
    func calculate(shape: Shape, _ firstNumber: Double, _ secondNumber: Double? = 0, _ thirdNumber: Double? = 0){
        strategy.calculate(shape: shape, firstNumber, secondNumber, thirdNumber)
    }
}

struct RectangleAreaCalculator: AreaCalculatorStrategy {
    func calculate(shape: Shape, _ firstNumber: Double, _ secondNumber: Double? = 0, _ thirdNumber: Double? = 0) {
       let length = firstNumber
        if let width = secondNumber {
           let result = length * width
           print("Area of a \(shape) is \(result)")
        }
      
    }
}

struct TriangleAreaCalculator: AreaCalculatorStrategy {
    func calculate(shape: Shape, _ firstNumber: Double, _ secondNumber: Double?, _ thirdNumber: Double?) {
        let base = firstNumber
        if let height = secondNumber {
          let result = (base * height) / 2
          print("Area of a \(shape) is \(result)")
        }
    }

}

struct TrapezoidAreaCalculator: AreaCalculatorStrategy {
    func calculate(shape: Shape, _ firstNumber: Double, _ secondNumber: Double?, _ thirdNumber: Double?){
        let baseOne = firstNumber
        guard let baseTwo = secondNumber, let height = thirdNumber else { return }
        let result = (baseOne + baseTwo) * (height / 2)
        print("Area of a \(shape) is \(result)")
    }
}

struct EllipseAreaCalculator: AreaCalculatorStrategy {
    func calculate(shape: Shape, _ firstNumber: Double, _ secondNumber: Double?, _ thirdNumber: Double?){
        let axisA = firstNumber
        if let axisB = secondNumber {
            let result =  Double.pi * axisA * axisB
            print("Area of a \(shape) is \(result)")
        }
    }
}

struct TorusSurfaceAreaCalculator: AreaCalculatorStrategy {
    func calculate(shape: Shape, _ firstNumber: Double, _ secondNumber: Double?, _ thirdNumber: Double?){
        let majorRadius = firstNumber
        if let minorRadius = secondNumber {
            let result = (4 * pow(Double.pi, 2) * majorRadius * minorRadius)
             print("Area of a \(shape) is \(result)")
        }
    }
}

struct ParallelogramAreaCalculator: AreaCalculatorStrategy {
    func calculate(shape: Shape, _ firstNumber: Double, _ secondNumber: Double?, _ thirdNumber: Double?){
        let base = firstNumber
        if let height = secondNumber {
            let result = base * height
            print("Area of a \(shape) is \(result)")
        }
    }
}


struct CircleAreaCalculator: AreaCalculatorStrategy {
    func calculate(shape: Shape, _ firstNumber: Double, _ secondNumber: Double?, _ thirdNumber: Double?) {
        let radius = firstNumber
        let result = Double.pi * pow(radius, 2)
         print("Area of a \(shape) is \(result)")
    }
    
}


let rectangle = AreaCalculator(strategy: RectangleAreaCalculator())
rectangle.calculate(shape: .rectangle, 30, 20)

let triangle = AreaCalculator(strategy: TriangleAreaCalculator())
triangle.calculate(shape: .triangle, 100, 50)

let trapezoid = AreaCalculator(strategy: TrapezoidAreaCalculator())
trapezoid.calculate(shape: .trapezoid,  10, 25,  52)

let torus = AreaCalculator(strategy: TorusSurfaceAreaCalculator())
torus.calculate(shape: .torus, 30, 5)

let ellipse = AreaCalculator(strategy: EllipseAreaCalculator())
ellipse.calculate(shape: .ellipse, 10, 52)


let parallelogram = AreaCalculator(strategy: ParallelogramAreaCalculator())
parallelogram.calculate(shape: .parallelogram, 30, 20)


