# ExecuTorch iPad Swift Playground package test

Minimal remote Swift Package test for iPad Swift Playground.

## Repository root must contain
- `Package.swift`
- `Frameworks/executorch.xcframework/`
- `Sources/executorch_with_dependencies/dummy.swift`

In Swift Playground, add the **public GitHub repository URL** as a Swift Package and select the `executorch` product.

This test contains only the ExecuTorch 1.4.1 core runtime. Backends/kernels and model files are not included yet.
