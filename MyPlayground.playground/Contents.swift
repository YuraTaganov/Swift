import Foundation

var greeting = "Hello, playground"

// 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
// 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
// 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
// 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
// 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
// 6. Вывести значения свойств экземпляров в консоль.

enum SportCar {
    case astonMartin
    case bugatti
    case corvette
    case lamborghini
    case porsche
    case pagani
}

enum PrestigСars {
    case audi
    case BMW
    case mercedesBenz
    case jaguar
    case lexus
    case toyota
}

enum TruckCar {
    case maz
    case kamaz
    case man
    case scania
    case volvo
    case ural
}

enum Colour {
    case white
    case black
    case red
    case blue
    case gray
    case purple
}

enum DoorState {
    case open
    case close
}

enum WindowsState {
    case open
    case close
}

enum EngineState {
    case on
    case off
}

struct DescriptionSportCar {
    let brand: SportCar
    let colour: Colour
    let age: Int
    var gasTankVolume: Double
    var petrolVolume: Double
    var doorState: DoorState
    var engineState: EngineState
    var windowsState: WindowsState

    var filledVolume: String {
        let filled = (gasTankVolume - petrolVolume)/(gasTankVolume/100)
        return "Бензобак заполнен на \(100 - filled)%, свободно \(filled)%"
    }

    mutating func closeDoor() {
        if doorState == .open {
            doorState = .close
            print("Двери закрыты")
        } else {
            print("Двери уже закрыты")
        }
    }

    mutating func openDoor() {
        if doorState == .close {
            doorState = .open
            print("Двери открыты")
        } else {
            print("Двери уже открыты")
        }
    }

    mutating func offOnEngine() {
        switch engineState {
        case .on:
            self.engineState = .off
            print("Двигатель заглушен")
        case .off:
            self .engineState = .on
            print("Двигатель работает")
        }
    }

    mutating func openWindows() {
        if windowsState == .close {
            windowsState = .open
            print("Окна закрыты")
        } else {
            print("Окна уже закрыты")
        }
    }

    mutating func closeWindows() {
        if windowsState == .open {
            windowsState = .close
            print("Окна открыты")
        } else {
            print("Окна уже открыты")
        }
    }
}

struct BrandPrestigСars {
    let brand: PrestigСars
    let colour: Colour
    let age: Int
    var gasTankVolume: Double
    var petrolVolume: Double
    var doorState: DoorState
    var engineState: EngineState
    var windowsState: WindowsState

    var filledVolume: String {
        let filled = (gasTankVolume - petrolVolume)/(gasTankVolume/100)
        return "Бензобак заполнен на \(100 - filled)%, свободно \(filled)%"
    }

    mutating func closeDoor() {
        if doorState == .open {
            doorState = .close
            print("Двери закрыты")
        } else {
            print("Двери уже закрыты")
        }
    }

    mutating func openDoor() {
        if doorState == .close {
            doorState = .open
            print("Двери открыты")
        } else {
            print("Двери уже открыты")
        }
    }

    mutating func offOnEngine() {
        switch engineState {
        case .on:
            self.engineState = .off
            print("Двигатель заглушен")
        case .off:
            self .engineState = .on
            print("Двигатель работает")
        }
    }

    mutating func openWindows() {
        if windowsState == .close {
            windowsState = .open
            print("Окна закрыты")
        } else {
            print("Окна уже закрыты")
        }
    }

    mutating func closeWindows() {
        if windowsState == .open {
            windowsState = .close
            print("Окна открыты")
        } else {
            print("Окна уже открыты")
        }
    }
}

struct BrandTruckCar {
    let brand: TruckCar
    let colour: Colour
    let age: Int
    var gasTankVolume: Double
    var petrolVolume: Double
    var doorState: DoorState
    var engineState: EngineState
    var windowsState: WindowsState

    var filledVolume: String {
        let filled = (gasTankVolume - petrolVolume)/(gasTankVolume/100)
        return "Бензобак заполнен на \(100 - filled)%, свободно \(filled)%"
    }

    mutating func closeDoor() {
        if doorState == .open {
            doorState = .close
            print("Двери закрыты")
        } else {
            print("Двери уже закрыты")
        }
    }

    mutating func openDoor() {
        if doorState == .close {
            doorState = .open
            print("Двери открыты")
        } else {
            print("Двери уже открыты")
        }
    }

    mutating func offOnEngine() {
        switch engineState {
        case .on:
            self.engineState = .off
            print("Двигатель заглушен")
        case .off:
            self .engineState = .on
            print("Двигатель работает")
        }
    }

    mutating func openWindows() {
        if windowsState == .close {
            windowsState = .open
            print("Окна закрыты")
        } else {
            print("Окна уже закрыты")
        }
    }

    mutating func closeWindows() {
        if windowsState == .open {
            windowsState = .close
            print("Окна открыты")
        } else {
            print("Окна уже открыты")
        }
    }
}

var spotrCarOne = DescriptionSportCar(brand: .porsche, colour: .red, age: 1, gasTankVolume: 50, petrolVolume: 30, doorState: .open, engineState: .off, windowsState: .close)

spotrCarOne.openDoor()
spotrCarOne.closeDoor()
spotrCarOne.openWindows()
spotrCarOne.closeWindows()
spotrCarOne.offOnEngine()
print("\nСпортивный автомобиль марки: \(spotrCarOne.brand)\nЦвет автомобиля: \(spotrCarOne.colour)\nВозраст автомобиля: \(spotrCarOne.age)\nОбъем бензобака: \(spotrCarOne.gasTankVolume)\n\(spotrCarOne.filledVolume)\nСостояние двигателя: \(spotrCarOne.engineState)\nСостояние окон: \(spotrCarOne.windowsState)\n")

var prestigСarsOne = BrandPrestigСars(brand: .lexus, colour: .black, age: 4, gasTankVolume: 40, petrolVolume: 10, doorState: .open, engineState: .on, windowsState: .open)

prestigСarsOne.openDoor()
prestigСarsOne.closeDoor()
prestigСarsOne.openWindows()
prestigСarsOne.closeWindows()
prestigСarsOne.offOnEngine()
print("\nПрестижный автомобиль марки: \(prestigСarsOne.brand)\nЦвет автомобиля: \(prestigСarsOne.colour)\nВозраст автомобиля: \(prestigСarsOne.age)\nОбъем бензобака: \(prestigСarsOne.gasTankVolume)\n\(prestigСarsOne.filledVolume)\nСостояние двигателя: \(prestigСarsOne.engineState)\nСостояние окон: \(prestigСarsOne.windowsState)\n")

var truckCarOne = BrandTruckCar(brand: .kamaz, colour: .white, age: 12, gasTankVolume: 100, petrolVolume: 40, doorState: .close, engineState: .off, windowsState: .close)

truckCarOne.openDoor()
truckCarOne.closeDoor()
truckCarOne.openWindows()
truckCarOne.closeWindows()
truckCarOne.offOnEngine()
print("\nГрузовой автомобиль марки: \(truckCarOne.brand)\nЦвет автомобиля: \(truckCarOne.colour)\nВозраст автомобиля: \(truckCarOne.age)\nОбъем бензобака: \(truckCarOne.gasTankVolume)\n\(truckCarOne.filledVolume)\nСостояние двигателя: \(truckCarOne.engineState)\nСостояние окон: \(truckCarOne.windowsState)\n")
