class Sudoku(object):

    def solve(self):
        solver = [[0 for x in range(9)] for x in range(9)]
        solver[0][6] = 5
        solver[3][4] = 1
        for x in range(0,9):
            for y in range(0,9):
                testnum = 1
                if !(isThereConflict(testnum, x, y, solver))
                    solver[x][y] = testnum
                else
                    while True:
                        testnum++
                        if !(isThereConflict(testnum, x, y, solver))
                            solver[x][y] = testnum
                            break
                        if testnum == 9





    def isThereConflict(self, number, xcoord, ycoord, solver):
        for num in range(0, 9):
            if solver[num][ycoord] == number:
                return False
            if solver[xcoord][num] == number:
                return False
        return True


if __name__ == "__main__":
