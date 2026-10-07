package chessboard

// Declare a type named File which stores if a square is occupied by a piece - this will be a slice of bools
type File []bool

// Declare a type named Chessboard which contains a map of eight Files, accessed with keys from "A" to "H"
type Chessboard map[string]File

// CountInFile returns how many squares are occupied in the chessboard,
// within the given file.
func CountInFile(cb Chessboard, file string) int {
	sum := 0
    for _, square := range cb[file] {
        if (square) {
            sum++
        }
    }
    return sum
}

// CountInRank returns how many squares are occupied in the chessboard,
// within the given rank.
func CountInRank(cb Chessboard, rank int) int {
    if (rank < 1 || rank > 8) {
        return 0
    }
    sum := 0
    for _, file := range cb {
        if (file[rank-1]) {
            sum++
        }
    }
    return sum
}

// CountAll should count how many squares are present in the chessboard.
func CountAll(cb Chessboard) int {
	sum := 0
    for _, file := range cb {
        sum += len(file)
    }
    return sum
}

// CountOccupied returns how many squares are occupied in the chessboard.
func CountOccupied(cb Chessboard) int {
	sum := 0
    for _, file := range cb {
        for _, square := range file {
            if (square) {
                sum++
            }
        }
    }
    return sum
}
