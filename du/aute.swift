struct CustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .background(Color.yellow)
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .modifier(CustomModifier())
    }
}
