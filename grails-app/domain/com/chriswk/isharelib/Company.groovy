package com.chriswk.isharelib

class Company {
    String name
    long tmdbId
    Date dateCreated
    Date lastUpdated
    static hasMany = [
        productions: Production
    ]
    static constraints = {
        name blank: false
        tmdbId unique: true
    }
}
