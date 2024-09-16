use "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\stataclass.dta", clear
br
codebook AGE_YEAR
log using "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\stataclass.smcl", append
gen agegroup = . 1 if AGE_YEAR
gen agegroup = . 1 if AGE_YEAR
gen agegroup = .
repalce agegroup = 1 if AGE_YEAR <=35 repalce agegroup = 2 if AGE_YEAR >=50 repalce agegroup = 3 if AGE_YEAR >50
replace agegroup = = 1 if AGE_YEAR <=35  2 if AGE_YEAR >=50  = 3 if AGE_YEAR >50
replace agegroup = 1 if AGE_YEAR <=35  2 if AGE_YEAR >=50  3 if AGE_YEAR >50
replace agegroup = 1 if AGE_YEAR <=35
replace agegroup = 2 if AGE_YEAR >=50
replace agegroup = 3 if AGE_YEAR >50
coodbook agegroup
codebook agegroup
replace agegroup = 2 if AGE_YEAR <=50
codebook agegroup
br
replace agegroup = 1 if AGE_YEAR <=35
codebook agegroup
label define agegroup 1 "<=35" 2 "<=50" 3 ">50"
label values agegroup agegroup
br
label define agegroup 1 "29-35" 2 "36-50" 3 "50-64", replace
codebook AGE_YEAR
codebook agegroup
tostring agegroup
tostring agegroup replace
tostring agegroup, replace
tostring id, replace
label values id .
tostring id, replace
destring id, replace
recast int, id
recast int id
recast float id
recast int id
recast long id
recast float age
br
tostring age, replace
destring age, replace
graph pie, over(gender) plabel(_all percent)
graph pie, over(gender) plabel(_all percent)
graph bar (mean) smoke, blabel(bar)
graph dot (mean) gender
graph dot (mean) gender, over(cholesterol)
rename agegroup agecat
br
duplicates report
duplicates drop
table gender smoke, contents(mean height)
recast int id
recast int id
recast float age
recast long id
recast int id
duplicates report
import delimited "C:\Users\ADMIN\Downloads\data (1)\cardio_alco.csv", clear 
browse
save "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\cardio aclco.dta"
import delimited "C:\Users\ADMIN\Downloads\data (1)\cardio_base.csv", clear 
merge 1:1 id using "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\cardio aclco.dta"
browse
drop _merge
describe
sum
tabulate
tabulate alco
tabulate alco smoke
code book
codebook
