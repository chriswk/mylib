package com.chriswk.isharelib

class Country {
    String iso
    String name
    static constraints = {
        iso unique: true
        name blank: false
    }
}
