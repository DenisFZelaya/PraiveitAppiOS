import SwiftUI


struct ContentView: View {
    
    var body: some View {
        VStack {
            ContactoList()
            Spacer()
        }
        
    }
}

struct ContactoList: View {
    let misContactos = [
        ContactosModel(nombre: "Denis", apellido: "Zelaya"),
        ContactosModel(nombre: "Melisa", apellido: "Zaldivar"),
        ContactosModel(nombre: "Elongo", apellido: "Muskon")
    ]

    var body: some View {
            NavigationView {
                List{
                        ForEach(misContactos, id: \.nombre){ contacto in
                            NavigationLink(contacto.nombre, destination: DetallesContacto(contacto: contacto))
                        }
                }
            }
            .font(.body)
            .navigationTitle(Text("Hola"))
        }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
