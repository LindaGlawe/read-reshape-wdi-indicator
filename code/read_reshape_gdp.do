
import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/gdp.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long gdp, i(countrycode) j(year)
rename gdp gdp_pc
label variable gdp_pc "GDP per capita (USD?)"
save "derived/gdp_per_capita.dta" //check cd!
