col := { { 1 . -1 . 0 . 0 } . 	  	   { 0 . 3 . 0 . 0 } . 	  	   { 1 . 0 . 2 . 1 } . 		   { 0 . 0 . 0 . 0 } }."		rand := Random new.		col := (1 to: 100) collect: [ :ind | OrderedCollection ofSize: 100 ].		1 to: 20 do: [ :ind |			|first second|			first := rand nextInt: 100.			second := rand nextInt: 100.			(col at: first) at: second put: (rand nextInt: 100) ].		"lil := LILSparseMatrix withAll: col.vis_lil := LILSparseMatrixVisualizer on: lil.coo := COOSparseMatrix withAll: col.vis_coo := COOSparseMatrixVisualizer on: coo.tw := TWSparseMatrix withAll: col.vis_tw := TWSparseMatrixVisualizer on: tw.lil * tw.c := RTComposer new.c gap: 35.tw1 := TWSparseMatrix withAll: col.vis_tw1 := TWSparseMatrixVisualizer on: tw1 withView: c view.c group: #firstMatrix.tw2 := TWSparseMatrix withAll: col.vis_tw2 := TWSparseMatrixVisualizer on: tw2 withView: c view.c group: #secondMatrix.c move: #firstMatrix onTheLeftOf: #secondMatrix.c nameGroup: #firstMatrix as: 'first'.c nameGroup: #secondMatrix as: 'second'.c view