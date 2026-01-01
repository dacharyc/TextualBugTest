import SwiftUI
import Textual

struct ContentView: View {
    // This markdown contains a fenced code block that triggers the warning
    let markdown = """
    Here's some CSS:

    ```css
    p > code {
      color: #b86e6e;
      background-color: #f3f3f3;
      padding-left: 0.3em;
      padding-right: 0.3em;
      font-family: monospace;
    }
    ```
    """

    var body: some View {
        ScrollView {
            StructuredText(markdown: markdown)
                .padding()
        }
        .frame(width: 500, height: 400)
    }
}

struct TextualBugTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

TextualBugTestApp.main()
