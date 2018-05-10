struct SuccessfulPathForResourceBundle: BundleProtocol {
    func path(forResource name: String?, ofType ext: String?) -> String? {
        return "a/path/to/a/file.txt"
    }
}
struct FailedPathForResourceBundle: BundleProtocol {
    func path(forResource name: String?, ofType ext: String?) -> String? {
        return nil
    }
}