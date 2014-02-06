# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

correct_words = %w{
  AA AB AD AE AG AH AI AL AM AN AR AS AT AW AX AY 
  BA BE BI BO BY 
  DE DO 
  ED EF EH EL EM EN ER ES ET EX 
  FA FE 
  GO 
  HA HE HI HM HO 
  ID IF IN IS IT 
  JO 
  KA KI 
  LA LI LO 
  MA ME MI MM MO MU MY 
  NA NE NO NU 
  OD OE OF OH OI OM ON OP OR OS OW OX OY 
  PA PE PI 
  QI 
  RE 
  SH SI SO 
  TA TI TO 
  UH UM UN UP US UT 
  WE WO 
  XI XU 
  YA YE YO 
  ZA
}

incorrect_words = %w{
  AO AZ AC AJ AP AQ AV
  BU BH BM BT BS
  CO CA CU CE CI CY
  DA DU DI DY DS
  EA EO EP EW EB
  FI FO FU FY FS
  GA GE GI GU GY
  HU HY HN HS
  IP IB IC IZ IM
  JA JI JE JU JY JS
  KE KO KU KY KS
  LE LU LY LS LP
  MS MD MP
  NI NY NS ND
  OV OB OC OK OT
  PO PU PY PS PD
  QA QE QO QU QY QS
  RA RI RO RU RY RS
  SA SE SU SY SK SL
  TE TU TY TS TD TP
  UA UE UI UW UD UR UX
  VA VE VI VO VU VY VS
  WA WI WU WY WS WR WF
  XA XE XO XY XS XL
  YI YU YS YF YL YM
  ZE ZI ZO ZU ZY ZS
}

incorrect_words.each do |word|
  card = Card.find_or_create_by(letter: word[0])
  card.options.find_or_create_by(word: word, correct: false)
end

correct_words.each do |word|
  card = Card.find_or_create_by(letter: word[0])
  card.options.find_or_create_by(word: word, correct: true)
end

