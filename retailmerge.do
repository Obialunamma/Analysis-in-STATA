import delimited "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\Retail1.csv"
save "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\Retail1.csv"
save "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\retail1.dta"
import delimited "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\Retail2.csv", clear 
merge 1:1 transactionid customerid using "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\retail1.dta"
br
drop _merge
br
save "C:\Users\ADMIN\Desktop\Sage's PowerBI BootCamp\retail_merged.dta"
