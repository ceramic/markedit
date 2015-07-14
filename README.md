# MarkEdit

![Screenshot](https://raw.githubusercontent.com/ceramic/markedit/master/markedit.png)

A Markdown editor example with [Ceramic][ceramic]. For an explanation of the
source code, see the [documentation][docs].

## Building

Run:

```lisp
(ql:quickload :ceramic)

(ceramic.bundler:bundle :markedit)
```

# License

Copyright (c) 2015 Fernando Borretti

Licensed under the MIT License.

[ceramic]: http://ceramic.github.io/
[docs]: http://ceramic.github.io/docs/examples.html
