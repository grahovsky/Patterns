
enum CarType {
   case huge, fast
}

protocol Car {

    func drive()

}

class HugeCar: Car {
    
    func drive() {
        print("you drive huge car")
    }
    
}

class FastCar: Car {
    
    func drive() {
        print("you drive fast car")
    }
}

let hugeCar = HugeCar()
hugeCar.drive()

class FactoryCar {
    
    static func produceCar(type: CarType) -> Car {
        
        var car: Car
        
        switch type {
        case .huge: car = HugeCar()
        case .fast: car = FastCar()
        }
        return car
    }
    
}

let fastCar = FactoryCar.produceCar(type: .fast)
fastCar.drive()
