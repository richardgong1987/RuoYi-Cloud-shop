def is_safe(board, row, col, n):
    # Check if a queen can be placed at board[row][col]
    # without being threatened by any other queens on the board

    # Check if there is a queen in the same row
    for i in range(col):
        if board[row][i] == 1:
            return False

    # Check if there is a queen in the upper diagonal on left side
    for i, j in zip(range(row, -1, -1), range(col, -1, -1)):
        if board[i][j] == 1:
            return False

    # Check if there is a queen in the lower diagonal on left side
    for i, j in zip(range(row, n, 1), range(col, -1, -1)):
        if board[i][j] == 1:
            return False

    # If no queens threaten the current position, return True
    return True


def solve_n_queens_util(board, col, n):
    # Base case: If all queens are placed, return True
    if col == n:
        return True

    # Check if a queen can be placed in the current column
    for i in range(n):
        if is_safe(board, i, col, n):
            # Place the queen at board[i][col]
            board[i][col] = 1

            # Recur to place the rest of the queens
            if solve_n_queens_util(board, col + 1, n):
                return True

            # If placing the queen doesn't lead to a solution, backtrack
            board[i][col] = 0

    # If no queen can be placed in the current column, return False
    return False


def solve_n_queens(n):
    # Create an empty board
    board = [[0 for _ in range(n)] for _ in range(n)]

    # Call the utility function to solve the problem
    if solve_n_queens_util(board, 0, n) == False:
        print("No solution exists")
        return False

    # Print the solution
    print("Solution:")
    for i in range(n):
        for j in range(n):
            print(board[i][j], end=" ")
        print()

    return True
