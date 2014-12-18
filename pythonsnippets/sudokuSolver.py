class Sudoku(object):

    def solve(self):
        solver = [[0 for x in range(9)] for x in range(9)]
        solver[0][6] = 5
        solver[3][4] = 1
        for x in range(0,9):
            for y in range(0,9):
                testnum = 1
		if x == y and y == 0:
		    if isThereConflict(testnum, x, y, solver):
			print("This sudoku is unsolvable")
		if!( x == 0 and  y == 6):
		    if !(x==3 and y==4):	
                	if !(isThereConflict(testnum, x, y, solver))
                   	 solver[x][y] = testnum
               		else
                   	 while True:
                        testnum++
                       	 if !(isThereConflict(testnum, x, y, solver))
                       	     solver[x][y] = testnum
                       	     break
                       	 if testnum == 9
			    break
			if y!= 0:
			   y--
			else
			   y = 9
			   x--




    def isThereConflict(self, number, xcoord, ycoord, solver):
        for num in range(0, 9):
            if solver[num][ycoord] == number:
                return False
            if solver[xcoord][num] == number:
                return False
        return True


