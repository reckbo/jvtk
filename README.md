J library to read a binary polydata vtk file.
Returns an array of boxed tracts, where each tract
is an N by 3 array.

Example usage:

    load'vtk.ijs'
    tracts=: readPoly'test/test.vtk'
