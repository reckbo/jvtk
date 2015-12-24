load'vtk.ijs'

VTKFILE=:'test/test.vtk'
VTK=:fread VTKFILE
assert ($ getPointsBinary VTK) -: 14380 3
assert 123 = # getLinesBinary_vtk_ VTK
assert 14380 = # ; lines

assert 14380 = +/> #each vtkReadPoly VTKFILE
assert 49 = +/> #each vtkReadPoly 'test/ilf.vtk'
