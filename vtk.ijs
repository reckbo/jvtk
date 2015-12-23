cocurrent 'vtk'

splitat=: taketo ; takeafter

binaryPoints=: 3 : 0
  'NumTuples Type Data'=.(;:@:>@:{. , {:) LF splitat 'POINTS' takeafter y
  NumTuples=. do NumTuples
  select. Type 
  case. 'double' do. Sz=.8
  case. 'float' do. Sz=.4
  end.
  BinData=. (Sz*NumTuples*3) {. Data
  _3 ]\ (_2&fc)&.|. BinData
)

splittract=:(({. {. }.);({. }. }.))
splitlast=:(}: , splittract@>@:{:)

binaryLines=: 3 : 0
  'Line Data'=:LF splitat 'LINES' takeafter y
  'NumLines NumItems'=: do Line
  SzInt=.4
  BinData=. (SzInt*NumItems) {. Data
  Items=._2&ic&.|. BinData
  a: -.~ splitlast^:(a: ~: {:)^:_ <Items
)

binaryTracts=: binaryLines {each <@:binaryPoints
readPoly=: binaryTracts@:fread

NB. === export functions
readPoly_z_=: readPoly_vtk_
