load'vtk.ijs'

VTKFILE=:'test/test.vtk'
VTK=:fread VTKFILE
assert ($ binaryPoints_vtk_ VTK) -: 14380 3
assert 123 = # binaryLines_vtk_ VTK
assert 14380 = # ; lines

assert 14380 = +/> #each readPoly VTKFILE
assert 49 = +/> #each readPoly 'test/ilf.vtk'
