using Documenter
using DiffPrivacy

makedocs(
    modules = [DiffPrivacy],
    sitename = "DiffPrivacy"
)

deploydocs(
    repo = "github.com/r0cketr1kky/DiffPrivacy.jl.git",
    deps = Deps.pip("pygments", "mkdocs", "mkdocs-material", "python-markdown-math"),
    make   = () -> run(`mkdocs build`),
    target = "site"
)
