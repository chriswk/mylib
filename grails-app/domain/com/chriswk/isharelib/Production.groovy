package com.chriswk.isharelib

class Production {
    Company company
    Movie movie
    Date dateCreated
    Date lastUpdated
    static hasMany = [
        languages: Language, countries: Country
    ]
    static constraints = {
        company blank: false
        movie blank: false
    }
}
