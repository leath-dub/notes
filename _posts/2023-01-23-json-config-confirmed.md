---
layout: post
author: Cathal O'Grady
tag: Projects
---

# Json config for static site generator
The idea is simple, we have unique keys of form `:<text>:` which `muss`
will try to run the rhs as a asyncronous process, the stdout of this program
is piped back to `muss` and parsed by `cJSON` to then finally be substituted for the
reference that was previously on the rhs.
