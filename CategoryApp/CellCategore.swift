import SwiftUI

struct CellCategore: View {
    
    //@ObservedObject var viewModel = CategoryViewModel()
    var postCategory: CategoryModel
    @State var imageName = ""
    @State var text = ""
    
    var body: some View {
        HStack(){
            Image("postCategory.data[0].image")
                .resizable()
                .frame(width: 70, height: 90)
            
            VStack(alignment: .leading, spacing: 10){
                Text("postCategory.data[0].name")
                    .lineLimit(2)
                    .font(Font.system(size: 20).weight(.bold))
                
                Text("(postCategory.data[0].count)" + " книг")
                    .font(Font.system(size: 15).weight(.light))
            }.padding(.horizontal, 5)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(Font.system(size: 25).weight(.black))
                .foregroundColor(.gray.opacity(0.6))
            
        }.frame(maxWidth: .infinity)
    }
}

//struct CellCategore_Previews: PreviewProvider {
//    static var previews: some View {
//        CellCategore(postCategory: CategoryModel(ok: true, data: Datum ))
//    }
//}
