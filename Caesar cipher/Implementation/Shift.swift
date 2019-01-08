import Foundation

// Функция определения алфавита по символу
func alphabetSearch(symbol: Character) -> [Character]? {
    let isContains = true
    
    switch isContains {
        
    case englishAlphabetСapitalLetter.contains(symbol):
        return englishAlphabetСapitalLetter
        
    case englishAlphabetLineLetter.contains(symbol):
        return englishAlphabetLineLetter
        
    case russianAplhabetCapitalLetter.contains(symbol):
        return russianAplhabetCapitalLetter
        
    case russianAplhabetLineLetter.contains(symbol):
        return russianAplhabetLineLetter
        
    default:
        return nil
    }
}

// Функция приведения сдвига к удобному для работы виду
func positiveShift(alphabet: [Character], shift: Int) -> Int {
    var positiveShift = shift
    
    switch positiveShift {
        
    case ..<(-alphabet.count):
        while positiveShift < (-alphabet.count) {
            positiveShift = positiveShift + alphabet.count
        }
        fallthrough
        
    case -alphabet.count...0:
        return  alphabet.count + positiveShift
        
    case 0...alphabet.count:
        return  positiveShift
        
    default:
        while positiveShift > alphabet.count {
            positiveShift = positiveShift - alphabet.count
        }
        return positiveShift
    }
}

// Реализация шифра Цезаря со сдвигом
func cipherWithShift(string: String, shift: Int) -> [Character]? {
    
     outputArrayShift.removeAll()
    
    for s in string {
        if let alphabetArray = alphabetSearch(symbol: s) {
            let shift = positiveShift(alphabet: alphabetArray, shift: shift)
            
            for (index, value) in alphabetArray.enumerated() {
                
                let firstCondition = (value == s && alphabetArray.count - 1 >= index + shift)
                let secondCondition = (value == s && alphabetArray.count - 1 < index + shift)
                
                if firstCondition {
                   
                    let newElement = alphabetArray[index + shift]
                    outputArrayShift.append(newElement)
                    
                } else if secondCondition {
                   
                    let newElement = alphabetArray[index + shift - alphabetArray.count]
                    outputArrayShift.append(newElement)
                    
                }
            }
        }
    }
    
    return outputArrayShift
}


