import SwiftUI

struct DetallesContacto: View {
    var contacto = ContactosModel(nombre: "DFZ", apellido: "DFZ")
    
    // @StateObject private var videoViewModel = VideoViewModel()
    var body: some View {
        VStack{
            Text("Nombre: " + contacto.nombre)
            Text("Apellido: " + contacto.apellido)
            Spacer()
        }
    }
}

struct DetallesContacto_Previews: PreviewProvider {
    static var previews: some View {
        DetallesContacto()
    }
}
