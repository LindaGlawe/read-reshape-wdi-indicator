
// using macros
local indicator gdp
local long_name gdp_pc
local label "GDP per capita (USD?)"


import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/`indicator'.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long `indicator', i(countrycode) j(year)
rename `indicator' `long_name'
label variable `long_name' "`label'"
save "data/derived/`long_name'.dta", replace //check cd!


/*
import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/gdp.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long gdp, i(countrycode) j(year)
rename gdp gdp_pc
label variable gdp_pc "GDP per capita (USD?)"
save "data/derived/gdp_per_capita.dta", replace //check cd!


// commands in stata to run this do-file in command window
*cd dc-economics-v2.1
*do "code/read_reshape_gdp.do"

*git status
*git diff

*git add code/read_reshape_gdp.do
*git commit -m "Correct path to data, overwrite file"


