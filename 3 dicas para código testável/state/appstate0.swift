struct AppState {
    let logingState: LoginState
    let showSpoilers: Bool
    let showSpecialEpisodes: Bool
}

protocol AppStateObservable {
    func observe() -> Observable<AppState>
}

protocol AppStateNotifier {
    func newAppStateAvailable(newAppState: AppState)
}

class AppStateStore: AppStateObservable, AppStateNotifier {
    let subject = BehaviorSubject(AppState.initialState)

    func observe() -> Observable<AppState> {
        return subject
    }

    func newAppStateAvailable(newAppState: AppState) {
        subject.next(newAppState)
    }
}