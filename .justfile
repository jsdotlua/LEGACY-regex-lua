alias p := install-packages

analyze: install-packages
    rojo sourcemap build.project.json --output sourcemap.json
    curl -O https://raw.githubusercontent.com/JohnnyMorganz/luau-lsp/main/scripts/globalTypes.d.lua
    luau-lsp analyze --definitions=globalTypes.d.lua --base-luaurc=.luaurc --sourcemap=sourcemap.json src/

# Installs packages and proxies their type information with `wally-package-types` tool
install-packages:
    wally install

    rojo sourcemap build.project.json --output sourcemap.json
    wally-package-types --sourcemap sourcemap.json Packages/
