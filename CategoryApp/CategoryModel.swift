import Foundation

// MARK: - Welcome7
struct CategoryModel: Decodable {
    var ok: Bool
    var data: [Datum]
}

// MARK: - Datum
struct Datum: Decodable {
    let id: Int
    let image: String
    let name: String
    let count: Int
    let lastUpdated: String
    let children: [DatumChild]
    
}
// MARK: - DatumChild
struct DatumChild: Decodable {
    let id: Int
    let image: String
    let name: String
    let count: Int
    let lastUpdated: String
    let children: [ChildChild]
}

// MARK: - ChildChild
struct ChildChild: Decodable {
    let id: Int
    let image: String
    let name: String
    let count: Int
    let lastUpdated: String
}
