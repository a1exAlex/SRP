import Foundation

func setSearch(element: Character) -> Set<Character>? {
    let isContains = true
    
    switch isContains {
        
    case engAlphaCapLetterSet.contains(element):
        engAlphaCapLetterSet.remove(element)
        return engAlphaCapLetterSet
        
    case engAlphaLineLetterSet.contains(element):
        engAlphaLineLetterSet.remove(element)
        return engAlphaLineLetterSet
        
    case rusAlphaCapLetterSet.contains(element):
        rusAlphaCapLetterSet.remove(element)
        return rusAlphaCapLetterSet
        
    case rusAlphaLineLetterSet.contains(element):
        rusAlphaLineLetterSet.remove(element)
        return rusAlphaLineLetterSet
        
    default:
        return []
    }
}

func removalOfRepetitions(key: String) -> [Character]? {
    var array: [Character] = []
    
    for k in key {
        
        if !array.contains(k) {
            array.append(k)
        }
        outputArrayKey.append(k)
    }
    
    return array
}

func fromSetToArray(set: Set<Character>) -> [Character] {
    var arrayForConvert = Array(set)
    arrayForConvert.sort(by: <)
    return arrayForConvert
}

func indexSearch(symbol: Character) -> Int? {
    let isContains = true
    
    func index(alphabet: [Character], elem: Character) -> Int {
        let index = alphabet.index(of: symbol)
        return index!
    }
    
    switch isContains {
    case englishAlphabetСapitalLetter.contains(symbol):
        return index(alphabet: englishAlphabetСapitalLetter, elem: symbol)
        
    case englishAlphabetLineLetter.contains(symbol):
        return index(alphabet: englishAlphabetLineLetter, elem: symbol)
        
    case russianAplhabetCapitalLetter.contains(symbol):
        return index(alphabet: russianAplhabetCapitalLetter, elem: symbol)
        
    case russianAplhabetLineLetter.contains(symbol):
        return index(alphabet: russianAplhabetLineLetter, elem: symbol)
        
    default:
        return nil
    }
    
}

func cipherWithKeyword(string: String, keyword: String) -> [Character] {
    
    var outputString: [Character] = []
    if let key = removalOfRepetitions(key: keyword) {
        
        for (index, value) in key.enumerated() {
            while index + 1 > key.count {
              let _ = setSearch(element: value)
            }
            keywordSet = setSearch(element: value)!
        }
        
        outputArrayKey += fromSetToArray(set: keywordSet)
        
    }
    
    for str in string {
        if let index = indexSearch(symbol: str) {
            outputString.append(outputArrayKey[index])
        }
    }
    
    return outputString
}



