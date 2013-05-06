package com.chriswk.isharelib

class Country {
    String iso
    String name
    Date dateCreated
    Date lastUpdated
    static constraints = {
        iso unique: true
        name blank: false
    }
}
