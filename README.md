# Minimal test case for Textual SwiftUI Layout Bug

## Trigger

Rendering markdown containing a **fenced code block** (triple backticks) triggers SwiftUI layout cycle warnings.

## Observed Behavior

In this simple, minimal case, the example text produces the following console warning:

```console
onChange(of: Layout) action tried to update multiple times per frame.
```

The same text in a more complex view hierarchy (nested ScrollViews, custom `MarkupParser`) produces a different but presumably related warning:

```console
Bound preference OverflowFrameKey tried to update multiple times per frame.
```

**Note:** The content renders correctly in both cases - this is a console warning only, not a functional bug.

## Environment

- **Textual:** 0.1.1
- **macOS:** 15.7.1
- **Xcode:** 26.2 (Build 17C52)
- **Swift:** 6.2.3

## To Reproduce

1. Open `Package.swift` in Xcode
2. Run the target (⌘R)
3. Observe the warning in the Xcode console
