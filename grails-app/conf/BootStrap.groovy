import com.chriswk.isharelib.Country

class BootStrap {

    def init = { servletContext ->
        if (Country.count == 0) {
            def domains = [:]
            getResourceAsStream(servletContext, "domains.csv").eachLine {
                def (num, domain) = it.tokenize(",")
                domains[num] = domain
            }
            def capitals =[:]
            getResourceAsStream(servletContext, "capitals.csv").eachLine {
                def (num, capital) = it.tokenize(",")
                capitals[num] = capital
            }

            def countries = getResourceAsStream(servletContext, "countries.csv").text
            countries.eachLine { line ->
                def fields = line.tokenize()
                def country = Country.findOrSaveWhere(iso3166Number: fields[3],
                    domain: domains.get(fields[3], null),
                    shortKey: fields[1],
                    capital: capitals.get(fields[3], null)
                )
                log.debug "imported ${country.dump()}"
            }
        }
    }
    def destroy = {
    }
}
