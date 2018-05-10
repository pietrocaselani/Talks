struct Environment {
    let appStateObservable: AppStateObservable
    let reachabilityObservable: ReachabilityObservable
    let mainBundle: BundleProtocol
    let apiClient: ServiceProtocol
    let userDefaults: UserDefaults
}