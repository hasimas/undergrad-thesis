*Mean*
tabstat w1-w4, by(klas)
tabstat w1-w4, by(pendidikan)
*Mean Difference by Klas*
ttest w1, by(klas)
ttest w2, by(klas)
ttest w3, by(klas)
ttest w4, by(klas)
*Mean Difference by Pendidikan*
ttest w1, by(pendidikan)
ttest w2, by(pendidikan)
ttest w3, by(pendidikan)
ttest w4, by(pendidikan)
*AIDS Estimation*
aidsills w1-w4, prices(p1-p4) expenditure(expfd) intercept(klas pendidikan) symmetry alpha_0(10)
*Elasticity*
aidsills_elas
*Elasticity Urban*
aidsills_elas if klas == 1
*Elasticity Rural*
aidsills_elas if klas == 0
*Elasticity High*
aidsills_elas if pendidikan == 1
*Elasticity Low*
aidsills_elas if pendidikan == 0
