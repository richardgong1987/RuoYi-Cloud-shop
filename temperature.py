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


def solve_n_queens_util(board, col, n, solutions):
    # Base case: If all queens are placed, add the board to the solutions list
    if col == n:
        solutions.append([row[:] for row in board])
        return

    # Check if a queen can be placed in the current column
    for i in range(n):
        if is_safe(board, i, col, n):
            # Place the queen at board[i][col]
            board[i][col] = 1

            # Recur to place the rest of the queens
            solve_n_queens_util(board, col + 1, n, solutions)

            # Backtrack to try placing the queen elsewhere
            board[i][col] = 0


def solve_n_queens(n):
    # Create an empty board
    board = [[0 for _ in range(n)] for _ in range(n)]

    # Initialize an empty list to hold the solutions
    solutions = []

    # Call the utility function to solve the problem
    solve_n_queens_util(board, 0, n, solutions)

    # Return the list of solutions
    return solutions



solutions = solve_n_queens(4)
for i, solution in enumerate(solutions):
    print(f"Solution {i+1}:")
    for row in solution:
        print(row)
    print()
