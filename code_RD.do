global FRD C:/dl_software_3/research/dataset/dta/sdg/ltst
use $FRD/final_data_v4, clear

*Figure 3a
rdplot sdgtotal income5000 if abs(income5000)<=2000, c(0) fuzzy(NP12) covs(lnruralinc lnpop middlestudents energy) p(2) graph_options(title("SDGTotal") xtitle("Income per capita compared to 2010 poverty line") ytitle("SDG total score of Rural Observation points"))

*Figure 3b-3f / Table 1
rdrobust sdgtotal income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg1 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg2 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg3 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg4 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg5 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg6 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg7 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg8 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg9 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg10 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg11 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg12 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg13 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg15 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg16 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

rdrobust sdg17 income5000, c(0) fuzzy(NP12) covs(lnrealfi vapi lnpop light) p(2)
outreg2 using RD_final.xls, append excel

*Figure 4b-4e
rdplot lnrealfi income5000 if abs(income5000)<=329.068, binselect(es) nbins(100) p(1) ///
graph_options(ytitle(realfiscal) ///
xtitle(income5000) ///
graphregion(color(white)) ///
legend(position(6) rows(1)) ///
)
rdrobust lnrealfi income5000,p(1) h(329.068)

rdplot vapi income5000 if abs(income5000)<=329.068, binselect(es) nbins(100) p(1) ///
graph_options(ytitle(vapi) ///
xtitle(income5000) ///
graphregion(color(white)) ///
legend(position(6) rows(1)) ///
)
rdrobust vapi income5000,p(1) h(329.068)

rdplot lnpop income5000 if abs(income5000)<=329.068, binselect(es) nbins(100) p(1) ///
graph_options(ytitle(lnpop) ///
xtitle(income5000) ///
graphregion(color(white)) ///
legend(position(6) rows(1)) ///
)
rdrobust lnpop income5000,p(1) h(329.068)
 
rdplot light income5000 if abs(income5000)<=329.068, binselect(es) nbins(100) p(1) ///
graph_options(ytitle(light) ///
xtitle(income5000) ///
graphregion(color(white)) ///
legend(position(6) rows(1)) ///
) 
rdrobust light income5000,p(1) h(329.068) 


*Figure S2
twoway ///
(kdensity score if fyp_group == 1, lcolor("108 135 147") lwidth(medium) area(0)) ///
(kdensity score if fyp_group == 2, lcolor("140 100 80")  lwidth(medium) area(0)) ///
(kdensity score if fyp_group == 3, lcolor("218 165 32")  lwidth(medium) area(0)), ///
legend(order(1 "11th FYP" 2 "12th FYP" 3 "13th FYP") ///
ring(0) pos(2) cols(1) region(lcolor(none)) size(small)) ///
xtitle("Rural SDG Overall Scores", size(medium)) ///
ytitle("Kernel Density", size(medium)) ///
ylabel(, angle(0) nogrid) ///
graphregion(color(white)) scheme(s1mono)

*Figure S3
* === Eastern ===
twoway ///
(kdensity score if region==1 & fyp_group==1, lcolor("108 135 147") lwidth(medium) area(0)) ///
(kdensity score if region==1 & fyp_group==2, lcolor("140 100 80")  lwidth(medium) area(0)) ///
(kdensity score if region==1 & fyp_group==3, lcolor("218 165 32")  lwidth(medium) area(0)), ///
legend(order(1 "11th FYP" 2 "12th FYP" 3 "13th FYP") ring(0) pos(2) cols(1) region(lcolor(none)) size(small)) ///
title("{bf:Eastern}", size(medium)) ///
xtitle("Rural SDG Overall Scores") ///
ytitle("Kernel Density") ///
ylabel(, angle(0) nogrid) ///
graphregion(color(white)) scheme(s1mono) ///
name(g1, replace) nodraw
	
* === Central ===
twoway ///
(kdensity score if region==2 & fyp_group==1, lcolor("108 135 147") lwidth(medium) area(0)) ///
(kdensity score if region==2 & fyp_group==2, lcolor("140 100 80")  lwidth(medium) area(0)) ///
(kdensity score if region==2 & fyp_group==3, lcolor("218 165 32")  lwidth(medium) area(0)), ///
legend(order(1 "11th FYP" 2 "12th FYP" 3 "13th FYP") ring(0) pos(2) cols(1) region(lcolor(none)) size(small)) ///
title("{bf:Central}", size(medium)) ///
xtitle("Rural SDG Overall Scores") ///
ylabel(, angle(0) nogrid) ///
graphregion(color(white)) scheme(s1mono) ///
name(g2, replace) nodraw

* === Western ===
twoway ///
(kdensity score if region==3 & fyp_group==1, lcolor("108 135 147") lwidth(medium) area(0)) ///
(kdensity score if region==3 & fyp_group==2, lcolor("140 100 80")  lwidth(medium) area(0)) ///
(kdensity score if region==3 & fyp_group==3, lcolor("218 165 32")  lwidth(medium) area(0)), ///
legend(order(1 "11th FYP" 2 "12th FYP" 3 "13th FYP") ring(0) pos(2) cols(1) region(lcolor(none)) size(small)) ///
title("{bf:Western}", size(medium)) ///
xtitle("Rural SDG Overall Scores") ///
ylabel(, angle(0) nogrid) ///
graphregion(color(white)) scheme(s1mono) ///
name(g3, replace) nodraw

*Table S5
* === 0.85 bandwidth ===
rdrobust sdgtotal ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store mtotal
outreg2 using RD_final_0.85.xls, excel

rdrobust sdg1 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m1
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg2 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m2
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg3 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m3
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg4 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m4
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg5 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m5
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg6 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m6
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg7 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m7
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg8 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m8
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg9 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m9
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg10 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m10
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg11 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m11
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg12 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m12
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg13 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m13
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg15 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m15
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg16 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m16
outreg2 using RD_final_0.85.xls, append excel

rdrobust sdg17 ruralincome_2010, all h(279.7078) b(559.4156) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m17
outreg2 using RD_final_0.85.xls, append excel

* === 2 bandwidth ===
rdrobust sdgtotal ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store mtotal
outreg2 using RD_final_2.xls, excel

rdrobust sdg1 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m1
outreg2 using RD_final_2.xls, append excel

rdrobust sdg2 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m2
outreg2 using RD_final_2.xls, append excel

rdrobust sdg3 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m3
outreg2 using RD_final_2.xls, append excel

rdrobust sdg4 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m4
outreg2 using RD_final_2.xls, append excel

rdrobust sdg5 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m5
outreg2 using RD_final_2.xls, append excel

rdrobust sdg6 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m6
outreg2 using RD_final_2.xls, append excel

rdrobust sdg7 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m7
outreg2 using RD_final_2.xls, append excel

rdrobust sdg8 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m8
outreg2 using RD_final_2.xls, append excel

rdrobust sdg9 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m9
outreg2 using RD_final_2.xls, append excel

rdrobust sdg10 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m10
outreg2 using RD_final_2.xls, append excel

rdrobust sdg11 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m11
outreg2 using RD_final_2.xls, append excel

rdrobust sdg12 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m12
outreg2 using RD_final_2.xls, append excel

rdrobust sdg13 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m13
outreg2 using RD_final_2.xls, append excel

rdrobust sdg15 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m15
outreg2 using RD_final_2.xls, append excel

rdrobust sdg16 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m16
outreg2 using RD_final_2.xls, append excel

rdrobust sdg17 ruralincome_2010, all h(658.136) b(1316.272) c(5000) fuzzy(NP12) covs(lnrealfi vapi lnpop light)
estimates store m17
outreg2 using RD_final_2.xls, append excel
