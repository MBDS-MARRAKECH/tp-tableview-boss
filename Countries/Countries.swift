//
//  Countries.swift
//  Countries
//
//  Created by user222543 on 1/16/23.
//

import Foundation
let countries = [
    Country(isoCode: "at", name: "Austria", continent:"Europe"),
    Country(isoCode: "be", name: "Belgique", continent:"Europe"),
    Country(isoCode: "de", name: "Allemagne", continent: "Europe"),
    Country(isoCode: "el", name: "Grèce", continent:"Europe"),
    Country(isoCode: "fr", name: "France", continent:"Europe"),
    Country(isoCode: "mor", name: "Maroc", continent:"Afrique"),
    Country(isoCode: "us", name: "Etats Unis", continent:"Amérique du nord"),
    Country(isoCode: "br", name: "Brazil", continent:"Amérique du sud"),
    Country(isoCode: "jp", name: "Japon", continent: "Asie"),
    Country(isoCode: "aus", name: "Australie", continent: "Australie")
    
]

func calcNumberOfcontinent(_ _countries: [Country]) -> [String: Int]  {
    var res:[String: Int] = [:]
    for val in _countries{
        if !res.keys.contains(val.continent){
            res[val.continent] = 1
        }else {
            res[val.continent]! += 1
        }
    }
    
    return res
}

let continents = calcNumberOfcontinent(countries)
    
let groupByContinent = Dictionary(grouping: countries) {
    (country) -> String in return country.continent
}
