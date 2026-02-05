#import "config/style.typ": vu_template_style_config
#import "config/titlepage.typ": vu_template_title_page

#let lang-lt = false

#show: vu_template_style_config(lang-lt)

#vu_template_title_page(
  "First exercise of multidimensional data visualization",
  [ 
    Analysis of wine quality dataset
  ],
  "Arnas Vaicekauskas",
  "",
  in-lithuanian: lang-lt,
)

#outline(depth: 3, title: "Outline")

#pagebreak()

#include "chapters/analysis.typ"

#pagebreak(weak:true)

#bibliography("references.bib")