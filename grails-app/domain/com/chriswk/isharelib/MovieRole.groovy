package com.chriswk.isharelib

class MovieRole {
    Movie movie
    Person person
    String character
    static constraints = {
        character blank: false
    }
}
