import SwiftUI
import AppModule

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text(AppModule.text)
   }
    .padding()
  }
}

#Preview{
  ContentView()
}
