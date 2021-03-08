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

print("Done.")