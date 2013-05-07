import com.chriswk.isharelib.Country
import com.chriswk.isharelib.Movie
import com.chriswk.isharelib.Person
import grails.util.Environment

import javax.servlet.ServletContext

class BootStrap {

    def init = { servletContext ->
        def countryCount = Country.getCount()
        log.error "There are ${countryCount} countries available"
        log.error "There are ${Person.getCount()} people"
        log.error "There are ${Movie.getCount()} people"
        if (countryCount == 0) {
            setupCountries(servletContext)
        }
    }
    def destroy = {
    }

    def setupCountries(ServletContext servletContext) {
        def domains = [:]
        getResourceAsStream(servletContext, "domains.csv").eachLine {
            def (num, domain) = it.tokenize(",")
            domains[num] = domain
        }
        def capitals = [:]
        getResourceAsStream(servletContext, "capitals.csv").eachLine {
            def (num, capital) = it.tokenize(",")
            capitals[num] = capital
        }

        def countries = getResourceAsStream(servletContext, "countries.csv").text
        def countryMap = [:]
        def count = 0
        countries.eachLine { line ->
            if (count % 20 == 0) {
                log.error "Saved ${count} countries"
            }
            def fields = line.tokenize()
            def country = new Country(iso3166Number: fields[3],
                    domain: domains.get(fields[3], null),
                    shortKey: fields[1],
                    iso3166Key: fields[2],
                    capital: capitals.get(fields[3], null),
                    name: fields[4]).save()
            count++

        }
        log.error "${Country.getCount()} countries saved"
    }

    def getResourceAsStream(ServletContext servletContext, String res) {
        def resource = (Environment.current == Environment.TEST) ? new FileInputStream("web-app/$res") : servletContext.getResourceAsStream(res)
        assert resource, "could not find $res, consider running 'grails fetch-country-list'"
        return resource
    }
}
