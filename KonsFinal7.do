* DESKRIPSI DAN INFORMASI DATA *
describe
summarize
* ANALISIS QUAIDS *
* NO QUADRATIC *
quaids w1-w4, anot(10) prices(p1-p4) expenditure(expfd) demographics(klas pendidikan art) nolog noquadratic
* QUADRATIC *
quaids w1-w4, anot(10) prices(p1-p4) expenditure(expfd) demographics(klas pendidikan art) nolog
* ELASTISITAS *
estat expenditure e*
summarize e_1-e_4
* MATRIX ELASTISITAS GABUNGAN *
estat compensated, atmeans
matrix gab = r(compelas)
matrix list gab
* MATRIX ELASTISITAS URBAN *
estat compensated if klas, atmeans
matrix upurban = r(compelas)
matrix list upurban
* MATRIX ELASTISITAS RURAL *
estat compensated if !klas, atmeans
matrix uprural = r(compelas)
matrix list uprural
* MATRIX ELASTISITAS HIGH EDUC *
estat compensated if pendidikan, atmeans
matrix uphigh = r(compelas)
matrix list uphigh
* MATRIX ELASTISITAS LOW EDUC *
estat compensated if !pendidikan, atmeans
matrix uplow = r(compelas)
matrix list uplow
