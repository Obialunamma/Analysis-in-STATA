log using "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\cardiodata2.smcl"
use "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\cardiodata.dta", clear
br
use "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\stataclass.dta", clear
br
label define gender 1 "Female" 2 "Male"
label values gender gender
replace alco = -1 if missing(alco)
label define Alcohol 0 "No" 1 "Yes" -1 "Unknown", replace
codebook alco
save "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\stataclass.dta", replace
save "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\stataclass.dta", replace
log close
log using "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\Untitled.log"
correlate age BMI
correlate height weight AGE_YEAR
ci
ci proportion smoke
ci proportion age
ci smoke
ttest smoke
tabulate smoke
spearman
correlate
summarize BMI, detail
graph box BMI
graph box AGE_YEAR
summarize AGE_YEAR, detail
histogram AGE_YEAR
histogram BMI
graph box AGE_YEAR
graph box BMI
histogram BMI, discrete addlabel normal
histogram BMI, discrete normal
