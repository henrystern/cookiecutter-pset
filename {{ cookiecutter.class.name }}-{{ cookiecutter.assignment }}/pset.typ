#import "@preview/ctheorems:1.1.3": *
#show: thmrules

#let problem = thmenv(
  "problem",
  "problem",
  0,
  (name, number, body, color: black) => [
    #text(color)[*Problem #number#if name != none [ -- #name]*.]
    #h(0.2em)
    #body
    #v(0.2em)
  ]
)
#let solution = thmproof(
  "solution", 
  "Solution",
  bodyfmt: body => [
      #body #h(1fr) $square.stroked.medium$
  ],
  inset: (top: 0em, left: 0em, right: 0em),
)

#let psst(
  class: "ECON9604 – Macro",
  assignment: "Problem set 1",
  author: "Henry Stern",
  date: datetime.today(),
  body,
) = {
  set page(
    "us-letter",
    margin: (x: 1.3in, y: 1in),
    footer: context {
      let abspage = locate(here()).page();
      if abspage < 2 {
      } else {
        align(center)[— #counter(page).display() —]
      }
    }
  )

  // Default fonts are more reliable for spacing and weight matching.
  set text(
    // font: "Source Serif 4",
    size: 11pt
  )

  // show math.equation: set text(font: "STIX Math")

  set par(
    justify: true,
    leading: .75em
  )

  set heading(numbering: "1.")
  show heading: set block(below: 1.4em, above: 1.4em)
  show heading.where(level: 1): set text(size: .8em)
  show heading.where(level: 2): set text(
    size: .9em,
    weight: "semibold",
    style: "italic"
  )

  set list(spacing: 1.2em)
  set enum(spacing: 1.2em)

  set document(
    title: "#class — #assignment",
    author: author,
    date: date,
  )

  align(center)[
    #v(5em)
    #text(size:1.3em, weight: "bold")[
      #class \
      #assignment
    ]

    #text(size:1.2em)[
      #author

      #date.display("[month repr:long] [day], [year]")
    ]
  ]

  v(2em)

  body
}
