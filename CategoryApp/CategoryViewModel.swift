import Foundation

class CategoryViewModel: ObservableObject {
    
    @Published var CategoryMODEL = [CategoryModel]()
    
    func categoryList() {
        AFHttp.get(url: AFHttp.API_Category_List, params: AFHttp.paramsEmpty(), handler: { response in
            switch response.result {
            case .success:
                let posts = try? JSONDecoder().decode(CategoryModel.self, from: response.data!)
                //self.CategoryMODEL = posts
                print(posts)
            case let .failure(error):
                print(error)
            }
        })
    }
}
