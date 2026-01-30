#import "pset.typ": psst, problem, solution
#import "@preview/ctheorems:1.1.3": *
#show: thmrules

#show: psst.with(
  class: "ECON{{ cookiecutter.class.number }} – {{ cookiecutter.class.name }}",
  assignment: "Problem Set {{ cookiecutter.assignment }}",
  author: "{{cookiecutter.author_name}}",
  date: toml(bytes("date = 2026-02-04")).date
)

#problem[

#solution[

]
]

