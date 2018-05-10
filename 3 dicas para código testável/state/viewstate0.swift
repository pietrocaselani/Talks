enum MovieListState {
    case empty
    case loading
    case showing(movies: [Movie])
    case error(error: Error)
}