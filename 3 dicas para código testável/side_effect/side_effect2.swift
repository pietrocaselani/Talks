protocol BundleProtocol {
    func path(forResource name: String?, ofType ext: String?) -> String?
}

protocol ContentsOfFileProtocol {
    static func from(contentsOfFile file: String) throws -> String
}

extension Bundle: BundleProtocol {}

extension String: ContentsOfFileProtocol {
    static func from(contentsOfFile file: String) throws -> String {
        return try String(contentsOfFile: file)
    }
}

func compute(file: String,
             bundle: BundleProtocol = Bundle.main,
             contentsOfFileProtocol: ContentsOfFileProtocol.Type = String.self) -> (Int, String) {
    let result = bundle.path(forResource: file, ofType: nil)
                .flatMap { try? contentsOfFileProtocol.from(contentsOfFile: $0) }
                .flatMap { Int($0) } ?? 0
                
    return (result, "Computed: \(result)")
}