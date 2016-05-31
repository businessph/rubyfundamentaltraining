puts
puts "this is for 2015, single people, state and federal taxes"

### state tax rate
tax1 = 1.01
tax2 = 1.02
tax3 = 1.04
tax4 = 1.06
tax5 = 1.08
tax6 = 1.093

### state tax range
range1 = (7850-0)
range2 = (18610-7851)
range3 = (29372-18611)
range4 = (40773-29373)
range5 = (90750-40774)
range6 = (189300-90751)
range51 = (50000-40774)
range52 = (66290-40774)
range53 = (88736-40774)
range41 = (37450-29373)

### state tax paid by range
statetaxpay1 = ((range1 * tax1) - range1).round 2
statetaxpay2 = ((range2 * tax2) - range2).round 2
statetaxpay3 = ((range3 * tax3) - range3).round 2
statetaxpay4 = ((range4 * tax4) - range4).round 2
statetaxpay5 = ((range5 * tax5) - range5).round 2
statetaxpay6 = ((range6 * tax6) - range6).round 2
statetaxpay51 = ((range51 * tax5) - range51).round 2 ###50000
statetaxpay52 = ((range52 * tax5) - range52).round 2 ###66290
statetaxpay53 = ((range53 * tax5) - range53).round 2 ###88736
statetaxpay41 = ((range41 * tax4) - range41).round 2

### total state tax paid
statetaxpaytotal = (statetaxpay1 + statetaxpay2 + statetaxpay3 + statetaxpay4 + statetaxpay5).round 2 ###90750
statetaxpaytotal1 = (statetaxpay1 + statetaxpay2 + statetaxpay3 + statetaxpay4 + statetaxpay5 + statetaxpay6).round 2 ###189300
statetaxpaytotal2 = (statetaxpay1 + statetaxpay2 + statetaxpay3 + statetaxpay4 + statetaxpay51).round 2 ###50000
statetaxpaytotal3 = (statetaxpay1 + statetaxpay2 + statetaxpay3 + statetaxpay4 + statetaxpay52).round 2 ###66290
statetaxpaytotal4 = (statetaxpay1 + statetaxpay2 + statetaxpay3 + statetaxpay4 + statetaxpay53).round 2 ###88736
statetaxpaytotal5 = (statetaxpay1 + statetaxpay2 + statetaxpay3 +statetaxpay41).round 2 ###37450

puts
puts "you make $#{range1}       ,you pay $#{statetaxpay1} in state taxes, at a rate of    1%"
puts "you make $#{range2} more, you pay $#{statetaxpay2} in state taxes, at a rate of  2%"
puts "you make $#{range3} more, you pay $#{statetaxpay3} in state taxes, at a rate of  4%"
puts "you make $#{range4} more, you pay $#{statetaxpay4} in state taxes, at a rate of   6%"
puts "you make $#{range5} more, you pay $#{statetaxpay5} in state taxes, at a rate of 8%"
puts "you make $#{range6} more, you pay $#{statetaxpay6} in state taxes, at a rate of 9.3%"
puts
puts "you make $37450, you pay $#{statetaxpaytotal5} in state taxes"
puts "you make $50000, you pay $#{statetaxpaytotal2} in state taxes"
puts "you make $66290, you pay $#{statetaxpaytotal3} in state taxes"
puts "you make $88736, you pay $#{statetaxpaytotal4} in state taxes"
puts "you make $90750, you pay $#{statetaxpaytotal} in state taxes"
puts "you make $189300, you pay $#{statetaxpaytotal1} in state taxes"
puts

### federal tax rate
fedtax1 = 1.1
fedtax2 = 1.15
fedtax3 = 1.25
fedtax4 = 1.28

### federal tax range
fedrange1 = (9225-0)
fedrange2 = (37450-9226)
fedrange3 = (90750-37451)
fedrange4 = (189300-90751)
fedrange31 = (50000-37451)
fedrange32 = (66290-37451)
fedrange33 = (88736-37451)

### federal tax paid by range
fedtaxpay1 = ((fedrange1 * fedtax1) - fedrange1).round 2
fedtaxpay2 = ((fedrange2 * fedtax2) - fedrange2).round 2
fedtaxpay3 = ((fedrange3 * fedtax3) - fedrange3).round 2
fedtaxpay4 = ((fedrange4 * fedtax4) - fedrange4).round 2
fedtaxpay31 = ((fedrange31 * fedtax3) - fedrange31).round 2 ###50000
fedtaxpay32 = ((fedrange32 * fedtax3) - fedrange32).round 2 ###66290
fedtaxpay33 = ((fedrange33 * fedtax3) - fedrange33).round 2 ###88736

### total federal tax paid
federaltaxpaytotal = (fedtaxpay1 + fedtaxpay2 + fedtaxpay3)
federaltaxpaytotal1 = (fedtaxpay1 + fedtaxpay2 + fedtaxpay3 + fedtaxpay4)
federaltaxpaytotal2 = (fedtaxpay1 + fedtaxpay2 + fedtaxpay31) ###50000
federaltaxpaytotal3 = (fedtaxpay1 + fedtaxpay2 + fedtaxpay32) ###66290
federaltaxpaytotal4 = (fedtaxpay1 + fedtaxpay2 + fedtaxpay33) ###88736
federaltaxpaytotal21 = (fedtaxpay1 + fedtaxpay2) ###37450

### state and federal combine tax rate
statefedtaxrate = (((50000 / (50000 - (statetaxpaytotal2 + federaltaxpaytotal2))) - 1) * 100).round 2
statefedtaxrate1 = (((66290 / (66290 - (statetaxpaytotal3 + federaltaxpaytotal3))) - 1) * 100).round 2
statefedtaxrate2 = (((88736 / (88736 - (statetaxpaytotal4 + federaltaxpaytotal4))) - 1) * 100).round 2
statefedtaxrate3 = (((90750 / (90750 - (statetaxpaytotal + federaltaxpaytotal))) - 1) * 100).round 2
statefedtaxrate4 = (((189300 / (189300 - (statetaxpaytotal1 + federaltaxpaytotal1))) - 1) * 100).round 2
statefedtaxrate5 = (((37450 / (37450 - (statetaxpaytotal5 + federaltaxpaytotal21))) - 1) * 100).round 2


puts "you make $#{fedrange1}, you pay $#{fedtaxpay1} in federal taxes at a rate of 10%"
puts "you make $#{fedrange2} more, you pay $#{fedtaxpay2} in federal taxes at a rate of 15%"
puts "you make $#{fedrange3} more, you pay $#{fedtaxpay3} in federal taxes at a rate of 25%"
puts "you make $#{fedrange4} more, you pay $#{fedtaxpay4} in federal taxes at a rate of 28%"
puts
puts "you make $37450, you pay $#{federaltaxpaytotal21} in federal taxes"
puts "you make $50000, you pay $#{federaltaxpaytotal2} in federal taxes"
puts "you make $66290, you pay $#{federaltaxpaytotal3} in federal taxes"
puts "you make $88736, you pay $#{federaltaxpaytotal4} in federal taxes"
puts "you make $90750, you pay $#{federaltaxpaytotal} in federal taxes"
puts "you make $189300, you pay $#{federaltaxpaytotal1} in federal taxes"
puts
puts "you make $37450, you pay $#{(statetaxpaytotal5 + federaltaxpaytotal21)} in state and federal taxes at a rate of %#{statefedtaxrate5}"
puts "you make $50000, you pay $#{(statetaxpaytotal2 + federaltaxpaytotal2)} in state and federal taxes at a rate of %#{statefedtaxrate}"
puts "you make $66290, you pay $#{(statetaxpaytotal3 + federaltaxpaytotal3)} in state and federal taxes at a rate of %#{statefedtaxrate1}"
puts "you make $88736, you pay $#{(statetaxpaytotal4 + federaltaxpaytotal4)} in state and federal taxes at a rate of %#{statefedtaxrate2}"
puts "you make $90750, you pay $#{(statetaxpaytotal + federaltaxpaytotal)} in state and federal taxes at a rate of %#{statefedtaxrate3}"
puts "you make $189300, you pay $#{(statetaxpaytotal1 + federaltaxpaytotal1)} in state and federal taxes at a rate of %#{statefedtaxrate4}"
puts
puts "these totals do not account for other deductions from your check such as Fed MED/EE (funds the medicare health insurance program), Fed OASDI/EE (funds social security), CA OASDI/EE (funds social security), and healthcare care charges."
puts
puts "sources"
puts "http://www.bankrate.com/finance/taxes/tax-brackets.aspx"
puts "https://www.ftb.ca.gov/forms/2015_California_Tax_Rates_and_Exemptions.shtml"
puts "http://thelawdictionary.org/article/what-is-fed-medee-tax/"
puts "http://thelawdictionary.org/article/what-does-fed-oasdiee-mean-on-a-paycheck/"
puts "http://budgeting.thenest.com/oasdi-ee-paycheck-23185.html"
