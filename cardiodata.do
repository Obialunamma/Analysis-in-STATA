import delimited "C:\Users\ADMIN\Downloads\data (1)\cardio_base.csv"
br
describe
describe
summarize
label define gender 1 "Female" 2 "Male"
label values gender gender
label define cho_level 1 "Normal" 2 "Borderline" 3 "High"
label values cholesterol cho_level
label define smoking 0 "No" 1 "Yes"
label values smoke smoking
describe
summarize
tabulate
tabulate gender
tabulate age
tabulate cholesterol
generate int age_years = age/365
br
generate int agey = age/365
br
drop agey
br
save "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\cardiodata.dta"
import delimited "C:\Users\ADMIN\Downloads\data (1)\cardio_alco.csv", clear 
br
label define drink_alcohol 0 "No" 1 "Yes"
label values alco drink_alcohol
merge 1:1 id using "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\cardiodata.dta"
br
describe
import delimited "C:\Users\ADMIN\Downloads\data (1)\cardio_base.csv" clear
import delimited "C:\Users\ADMIN\Downloads\data (1)\cardio_base.csv"
use "C:\Users\ADMIN\Downloads\data (1)\cardio_base.csv" clear
import delimited "C:\Users\ADMIN\Downloads\data (1)\cardio_alco.dta", clear
drop _merge
edit
summarize
tabulate alco
codebook
twoway (scatter cholesterol age_years), title(cholesterol vs age)
twoway (scatter age_years cholesterol), title(cholesterol vs age)
twoway (scatter height height), title(cholesterol vs age)
twoway (scatter height weight)
correlate height weight, means covariance
correlate height weight
by gender, sort : summarize ap_hi ap_lo
by gender, sort : summarize height weight
by gender, sort : summarize smoke
by smoke, sort : summarize gender
by gender smoke, sort : summarize gender
