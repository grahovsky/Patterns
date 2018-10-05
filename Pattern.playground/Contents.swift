
class Safe {

    var money = 0
    
    static let shared = Safe()
    
    private init() {}
    
}


let safeBefore = Safe.shared

safeBefore.money += 200
safeBefore.money += 100


let safeAfter = Safe.shared
safeAfter.money += 50
print(safeAfter.money)
