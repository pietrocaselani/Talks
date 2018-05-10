func compute(file: String) -> Int {
	let result = Bundle.main.path(forResource: file, ofType: "txt")
		.flatMap { try? String(contentsOfFile: $0) }
		.flatMap { Int($0) ?? 0 } ?? 0

	print("Computed value is \(result)")

	return result
}