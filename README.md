# @jvlk/rescript-htmx
JSX types and bindings to use ReScript and HTMX together.

https://htmx.org/

Requires Rescript 11+.

This is not meant to be a full implantation of HTMX with a server, it's just a starting point to build with HTMX and ReScript.

## Installation
```bash
npm i @jvlk/rescript-htmx
```
Update your project's `rescript.json` file.
```diff
{
    "bs-dependencies": [
+     "@jvlk/rescript-htmx"
    ],
}
```
## How to use
### JSX props
HTMX requires special HTML attributes that you will need to add to your [custom JSX transform](https://rescript-lang.org/docs/manual/latest/jsx#generic-jsx-transform-jsx-beyond-react-experimental).

```diff
module Elements = {
  type props = {
    ...JsxDOM.domProps,
+   ...Htmx.JsxProps.t,
  }
}
```
### JS Bindings
wip