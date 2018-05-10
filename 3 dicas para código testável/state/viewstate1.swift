class MovieListView {
    func show(newState: MovieListState) {
        switch newState {
        case .empty:
            showEmptyView()
        case .loading:
            showLoadingView()
        case .showing(let movies):
            showMovieListView(movies)
        case .error(let error):
            showErrorView(error)
        }
    }
}