import CXX
import std.string_view

"42".withCString { cstring in
    let view = std.__1.string_view(cstring)
    assert(is_str_42(view))
}

"32".withCString { cstring in
    let view = std.__1.string_view(cstring)
    assert(!is_str_42(view))
}

let view = std.__1.string_view("42")
let a = is_str_42(view)

cxx_f(42)

var MS = MyStruct()
var MS1 = MS[0]

var MS2 = MyStructValType()
var MS3 = MS2[0]

print("Done.")