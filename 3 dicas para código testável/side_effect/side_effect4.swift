struct IntContentsOfFile: ContentsOfFileProtocol {
    static func from(contentsOfFile file: String) throws -> String {
        return "123"
    }
}
struct NonIntContentsOfFile: ContentsOfFileProtocol {
    static func from(contentsOfFile file: String) throws -> String {
        return "asdf"
    }
}
struct ThrowingContentsOfFile: ContentsOfFileProtocol {
    static func from(contentsOfFile file: String) throws -> String {
        throw SomeError()
    }
}