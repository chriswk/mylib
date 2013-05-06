package com.chriswk.isharelib

class Language {
    String iso
    String name
    Date dateCreated
    Date lastUpdated
    static constraints = {
        iso unique: true
        name blank: false
    }
}
