<img src="https://raw.githubusercontent.com/jsdotlua/branding/main/Logo.png" align="right" height="128"/>

<h1>RegEx Lua</h1>
<h3>A runtime-agnostic RegEx interface for Lua.</h3>

<a href="https://github.com/jsdotlua/regex-lua/blob/main/LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="license" height="18"></a>

---

This library provides a standard RegEx interface (mirroring the JavaScript API) and attempts to call out to native RegEx APIs if provided by the Lua runtime. If no native RegEx API is provided, it will fall back to an in-Lua RegEx implementation.

## API

The API mirrors JavaScript (docs for which can be found [here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions)).

```lua
local RegEx = require(...)

-- NOTE: The multi-line string syntax is required to support the `\` syntax!
local myRe = RegEx.new([[/d(b+)d/]], "g");
local myArray = myRe:exec("cdbbdbsbz");
```

## API Status

The following table shows which JavaScript RegExp features are supported in each runtime. If you require a specific RegEx feature and it is not supported then please submit and issue or make a pull request!

| Runtime  | `exec()` | `test()` | `match()` | `matchAll()` | `search()` | `replace()` | `replaceAll()` | `split()` |
| -------- | -------- | -------- | --------- | ------------ | ---------- | ----------- | -------------- | --------- |
| Fallback | ✅        | ✅        | ❌         | ❌            | ❌          | ❌           | ❌              | ❌         |
