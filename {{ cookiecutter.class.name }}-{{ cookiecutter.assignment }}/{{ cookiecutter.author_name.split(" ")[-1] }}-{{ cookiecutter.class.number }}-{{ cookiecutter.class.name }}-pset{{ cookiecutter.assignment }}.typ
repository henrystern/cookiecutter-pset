#import "pset.typ": problem, pset, solution

#show: pset.with(
  class: "ECON{{ cookiecutter.class.number }} – {{ cookiecutter.class.name }}",
  assignment: "Problem Set {{ cookiecutter.assignment }}",
  author: "{{cookiecutter.author_name}}",
  date: toml(bytes("date = 2026-02-04")).date,
)

#problem[

  #solution[

  ]
]

