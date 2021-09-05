mode: user.typescript
mode: command
and code.language: typescript
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic

## my commands

type array: "Array"
type promise: "Promise"
type string: "string"
type any: "any"
type object: "Object"
type boolean: "boolean"
type number: "number"
type no: "null"

type no (id | eighty): "string | null | undefined"

is type no: "== null"
[is] not type no: "!= null"

mark to do: "// @todo - "
mark flow: "// @flow"
type doc:
  "/***/"
  key(left)
  key(left)
  key(space)
  key(space)
  key(left)
comment:
  key(cmd-/)
(multi-comment | document more):
  "/*  */"
  key(left)
  key(left)
  key(left)
  key(enter)
  key(enter)
  key(up)
  key(tab)


const: "const "
import: "import "
return: "return "
true: "true"
false: "false"

(asink | a sink): "async "
(await | a weight | a wait): "await "

self: "this"
on click: "onClick"
on action: "onAction"
on change: "onChange"

dot length: ".length"
dot map: ".map((item) => {});"
dot reduce: ".reduce((result, current) => {});"

dot filter: ".filter((item) => {});"

dot includes:
  ".includes()"
  key(left)

use store:
  key(cmd-x)
  "useStateFromStores([], () => , [])"
  key(left)
  key(left)
  key(left)
  key(left)
  key(left)
  key(cmd-v)
  key(cmd-s)

import react:
  "import * as React from 'react'"

import styled:
  "import styled from 'styled-components'"

import local (funk | function):
  "import {}"
  key(left)
  edit.paste()
  key(right)
  " from ''"
  key(left)
  "./"
  edit.paste()

import local [default]:
  "import "
  edit.paste()
  " from ''"
  key(left)
  "./"
  edit.paste()

export default:
  "export default "

export function:
  "export function() {}"

debugger:
  "console.log('[JANK]', JSON.parse(JSON.stringify({})))"
  key(left)
  key(left)
  key(left)
  key(left)

iffy:
  "if () {}"
  key(left)

funk:
  "function () {}"
  key(left)
  key(left)
  key(left)
  key(left)
  key(left)

arrow (function | funk):
  "() => {}"

bookmark:
  key(cmd-alt-k)

prop (style | styles) <phrase>:
  "style={styles."
  user.insert_formatted(phrase, "PRIVATE_CAMEL_CASE")
  "}"
  key(left)

prop (style | styles):
  "style={styles."
  "}"
  key(left)

prop <phrase>:
  user.insert_formatted(phrase, "PRIVATE_CAMEL_CASE")
  "={"
  user.insert_formatted(phrase, "PRIVATE_CAMEL_CASE")
  "}"
  key(left)

component <phrase>:
  "<"
  user.insert_formatted(phrase, "PUBLIC_CAMEL_CASE")
  " />"
  key(left)
  key(left)
  key(left)

