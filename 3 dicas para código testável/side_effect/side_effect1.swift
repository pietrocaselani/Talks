func compute(file: String) -> (Int, String) {
	let result = Bundle.main.path(forResource: file, ofType: "txt")
		.flatMap { try? String(contentsOfFile: $0) }
		.flatMap { Int($0) ?? 0 } ?? 0

	return (result, "Computed value is \(result)")
}