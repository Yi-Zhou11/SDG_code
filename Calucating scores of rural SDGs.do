
*-------------------------------------------------------------------------------
*----------Calculating scores of secondary indicators of rural SDGs-------------
*-------------------------------------------------------------------------------

*-SDG1（1 secondary indicator）

**-SDG1_1: the score of percentage of rural households below the poverty line

local m "vprate"
gen `m'_b=0,after(`m')
gen `m'_w=1,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of percentage of rural households below the poverty line"

*-------------------------------------------------------------------------------

*-SDG2（5 secondary indicators）

**-SDG2_1: the score of per capita staple food consumption of rural households


local m "vpeatg"
gen `m'_b=73,after(`m')
egen `m'_w=min(`m')
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
replace `m'_s=100 if `m'_s>100 & `m'_s!=. // Exceeding the optimal standard will be seen as achieving the optimum.
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of per capita staple food consumption of rural households"

**-SDG2_2: the score of per capita fruit and vegetable consumption of rural households

local m "vpeatv"
gen `m'_b=182.5,after(`m')
egen `m'_w=min(`m')
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
replace `m'_s=100 if `m'_s>100 & `m'_s!=. // Exceeding the optimal standard will be seen as achieving the optimum.
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of per capita fruit and vegetable consumption of rural households"

**-SDG2_3: the score of per capita meat consumption of rural households

local m "vpeatm"
gen `m'_b=43.8,after(`m')
egen `m'_w=min(`m')
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
replace `m'_s=100 if `m'_s>100 & `m'_s!=. // Exceeding the optimal standard will be seen as achieving the optimum.
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of per capita meat consumption of rural households"

**-SDG2_4: the score of per capita egg consumption of rural households

local m "vpeate"
gen `m'_b=15.6,after(`m')
egen `m'_w=min(`m')
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
replace `m'_s=100 if `m'_s>100 & `m'_s!=. // Exceeding the optimal standard will be seen as achieving the optimum.
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of per capita egg consumption of rural households"

**-SDG2_5: the score of per capita dairy consumption of rural households

local m "vpeatk"
gen `m'_b=109.5,after(`m')
egen `m'_w=min(`m')
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
replace `m'_s=100 if `m'_s>100 & `m'_s!=. // Exceeding the optimal standard will be seen as achieving the optimum.
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of per capita dairy consumption of rural households"

*-------------------------------------------------------------------------------

*-SDG3（3 secondary indicators）

**-SDG3_1: the score of proportion of rural women receiving prenatal examinations

local m "syjc"
gen `m'_b=1,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of proportion of rural women receiving prenatal examinations"

**-SDG3_2: the score of infant mortality rate in rural areas

local m "infdr"
gen `m'_b=0,after(`m')
gen `m'_w=1,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of infant mortality rate in rural areas"

**-SDG3_3: the score of vaccination rate of first-category vaccines in rural children

local m "jzym"
gen `m'_b=1,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of vaccination rate of first-category vaccines in rural children"

*-------------------------------------------------------------------------------

*-SDG4（2 secondary indicators）

**-SDG4_1: the score of rural average years of education

local m "vedu"
gen `m'_b=11.8,after(`m')
gen `m'_w=0
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
replace `m'_s=100 if `m'_s>100 & `m'_s!=.
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of rural average years of education"

**-SDG4_2: the score of proportion of school-age children attending school in rural primary and junior high schools

local m "insch"
gen `m'_b=1,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of proportion of school-age children attending school in rural primary and junior high schools"

*-------------------------------------------------------------------------------

*-SDG5（1 secondary indicator）

**-SDG5_1: the score of rural gender gap in education years (male-female)

local m "deledu"
gen `m'_b=0,after(`m')
egen `m'_w=max(`m')
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
replace `m'_s=100 if `m'_s>100 & `m'_s!=.
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of rural gender gap in education years (male-female)"

*-------------------------------------------------------------------------------

*-SDG6（2 secondary indicators）

**-SDG6_1: the score of the proportion of households with access to safe and sanitary drinking water in rural areas

local m "wsafer"
gen `m'_b=1,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of the proportion of households with access to safe and sanitary drinking water in rural areas"

**-SDG6_2: the score of the proportion of households using tap water in rural areas

local m "zlsr"
gen `m'_b=1,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of the proportion of households using tap water in rural areas"

*-------------------------------------------------------------------------------

*-SDG7（1 secondary indicator）

**-SDG7_1: the score of the proportion of households with electricity access in the village

local m "yydr"
gen `m'_b=1,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of the proportion of households with electricity access in the village"

*-------------------------------------------------------------------------------

*-SDG8（2 secondary indicators）

**-SDG8_1: the score of the proportion of idle labor force in rural areas

local m "xzldlr"
gen `m'_b=0,after(`m')
gen `m'_w=1,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of the proportion of idle labor force in rural areas"

**-SDG8_2: the score of annual growth rate of per capita rural household total income

local m "vpincr"
egen `m'_b=max(`m')
gen `m'_w=0
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of annual growth rate of per capita rural household total income"

*-------------------------------------------------------------------------------

*-SDG9（2 secondary indicators）

**-SDG9_1: the score of the proportion of paved roads in the village

local m "yhdl"
gen `m'_b=1,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of the proportion of paved roads in the village"

**-SDG9_2: the score of the proportion of rural residents owning mobile phones

local m "sjr"
gen `m'_b=1,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of the proportion of rural residents owning mobile phones"

*-------------------------------------------------------------------------------

*-SDG10（2 secondary indicators）

**-SDG10_1: the score of per capita income Gini coefficient within the village

local m "vgini"
gen `m'_b=0
gen `m'_w=1
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of per capita income Gini coefficient within the village"

**-SDG10_2: the score of the income growth rate gap between the bottom 40% of households per capita income and the average growth rate in the village

local m "vpcrd"
egen `m'_b=max(`m')
egen `m'_w=min(`m')
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of the income growth rate gap between the bottom 40% of households per capita income and the average growth rate in the village"

*-------------------------------------------------------------------------------

*-SDG11（2 secondary indicators）

**-SDG11_1: the score of the distance from the village to the main highway

local m "glgx"
gen `m'_b=0,after(`m')
egen `m'_w=max(`m')
order `m'_w,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of the distance from the village to the main highway"

**-SDG11_2: the score of the average proportion of reinforced concrete structure area in housing in the village

local m "vstratio"
gen `m'_b=1
gen `m'_w=0
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of the average proportion of reinforced concrete structure area in housing in the village"

*-------------------------------------------------------------------------------

*-SDG12（2 secondary indicators）

**-SDG12_1: the score of fertilizer application intensity

local m "vferdens"
egen `m'_b=min(`m')
egen `m'_w=max(`m')
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of fertilizer application intensity"

**-SDG12_2: the score of the proportion of farmyard manure in total fertilizer costs

local m "vcmanur"
gen `m'_b=1
gen `m'_w=0
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of the proportion of farmyard manure in total fertilizer costs"

*-------------------------------------------------------------------------------

*-SDG13（4 secondary indicators）

**-SDG13_1: the score of the proportion of households using coal gas or liquefied gas as the main fuel in the village

local m "vftx1r"
gen `m'_b=1
gen `m'_w=0
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of the proportion of households using coal gas or liquefied gas as the main fuel in the village"

**-SDG13_2: the score of the proportion of households using biogas as the main fuel in the village

local m "vftx2r"
gen `m'_b=1
gen `m'_w=0
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of the proportion of households using biogas as the main fuel in the village"

**-SDG13_3: the score of the proportion of households using coal as the main fuel in the village

local m "vftx3r"
gen `m'_b=0
gen `m'_w=1
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of the proportion of households using coal as the main fuel in the village"

**-SDG13_4: the score of the proportion of households using firewood as the main fuel in the village

local m "vftx4r"
gen `m'_b=0
gen `m'_w=1
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of the proportion of households using firewood as the main fuel in the village"

*-------------------------------------------------------------------------------

*-SDG15（1 secondary indicator）

**-SDG15_1: the score of per capita forest land area in the village

local m "pfores"
egen `m'_b=max(`m')
order `m'_b,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of per capita forest land area in the village"

*-------------------------------------------------------------------------------

*-SDG16（3 secondary indicators）

**-SDG16_1: the score of number of criminal cases in the village during the year

local m "crim"
gen `m'_b=0,after(`m')
egen `m'_w=max(`m')
order `m'_w,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of number of criminal cases in the village during the year"

**-SDG16_2: the score of number of civil disputes in the village during the year

local m "confl"
gen `m'_b=0,after(`m')
egen `m'_w=max(`m')
order `m'_w,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of number of civil disputes in the village during the year"

**-SDG16_3: the score of number of violations of social security management regulations in the village during the year

local m "punish"
gen `m'_b=0,after(`m')
egen `m'_w=max(`m')
order `m'_w,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of number of violations of social security management regulations in the village during the year"

*-------------------------------------------------------------------------------

*-SDG17（2 secondary indicators）

**-SDG17_1: the score of the proportion of households with internet access in the village

local m "interr"
gen `m'_b=1,after(`m')
gen `m'_w=0,after(`m'_b)
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
label var `m'_s "the score of the proportion of households with internet access in the village"

**-SDG17_2: the score of per household government subsidies in the village

local m "vsdinc"
egen `m'_b=max(`m')
egen `m'_w=min(`m')
gen `m'_s=100*(`m'-`m'_w)/(`m'_b-`m'_w),after(`m'_w)
order `m'_b `m'_w `m'_s,after(`m')
label var `m'_s "the score of per household government subsidies in the village"

*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
*-------------------Calculating scores of each rural SDGs-----------------------
*-------------------------------------------------------------------------------


egen  sdg1=rowmean(vprate_s)

egen  sdg2=rowmean(vpeatg_s vpeatv_s vpeatm_s vpeate_s vpeatk_s)

egen  sdg3=rowmean(syjc_s infdr_s jzym_s)

egen  sdg4=rowmean(vedu_s insch_s)

egen  sdg5=rowmean(deledu_s)

egen  sdg6=rowmean(wsafer_s zlsr_s)

egen  sdg7=rowmean(yydr_s)

egen  sdg8=rowmean(xzldlr_s vpincr_s)

egen  sdg9=rowmean(yhdl_s sjr_s)

egen sdg10=rowmean(vgini_s vpcrd_s)

egen sdg11=rowmean(glgx_s vstratio_s)

egen sdg12=rowmean(vferdens_s vcmanur_s)

egen sdg13=rowmean(vftx1r_s vftx2r_s vftx3r_s vftx4r_s)

egen sdg15=rowmean(pfores_s)

egen sdg16=rowmean(crim_s confl_s punish_s)

egen sdg17=rowmean(interr_s vsdinc_s)

*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
*-------------------Calculating total scores of rural SDGs----------------------
*-------------------------------------------------------------------------------


global x1 "sdg1 sdg2 sdg3 sdg4 sdg5 sdg6 sdg7 sdg8 sdg9"
global x2 "sdg10 sdg11 sdg12 sdg13 sdg15 sdg16 sdg17"

egen sdgtotal=rowmean($x1 $x2)

*-------------------------------------------------------------------------------
