# Author Response Letters

LaTeX template to quickly write author response letters to review comments.
Based on @mschroen's [review_response_letter][1] as modified by @zhangks98
[here][2]

## Example

See the example `Einstein1905.tex`. Please ensure the class file
`response.cls` is in the same directory.


### LaTeX
```  
\section{Reviewer \#1}

\begin{reviewer}
  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
  eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
  voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita
  kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem
  ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
  tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At
  vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd
  gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
\end{reviewer}

\begin{reviewer}
  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
  eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
  voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita
  kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem
  ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
  tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At
  vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd
  gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
\end{reviewer}

begin{quote} The cat in the box is \DIFdelbegin \DIFdel{dead}\DIFdelend \DIFaddbegin \DIFadd{alive}\DIFaddend . \end{quote}
```

## Changelog
- Uses shaded boxes to differentiate between reviewer comments and the
  responses below.

## Additional features
- Supports latexdiff commands
- Supports text highlighting with `\hl{}`
- Supports tables and figures,

[1]: https://github.com/mschroen/review_response_letter
[2]: https://github.com/zhangks98/author-response-letter
