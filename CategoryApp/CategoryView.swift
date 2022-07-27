import SwiftUI

struct CategoryView: View {
    
    @ObservedObject var viewModel = CategoryViewModel()
    
    var body: some View {
        VStack{
            ForEach(0..<viewModel.CategoryMODEL.count, id:\.self){ item in
                CellCategore(postCategory: viewModel.CategoryMODEL[item])
            }
        }
        .onAppear{
            viewModel.categoryList()
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
