#let delimiter = " | "
#let array-to-str(a, delimiter: delimiter) = {
  a.join(delimiter)
}
#let resume-contacts(contact) = {
  set align(center)
  array-to-str(contact)
}

// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", author: (), contacts: (), body) = {
  // Set the document's basic properties.
  set document(author: author.name, title: title)
  set page(
    paper: "a4",
    /// Margins of the page
    margin: (x: 0.5cm, y: 0.5cm),
  )

  set text(font: (
    //  "New Computer Modern",
    "Libertinus Serif",
    // "Times New Roman",
    // 黑体
    // "Alibaba Health Font 2.0",
    // "FZLanTingHeiS-R-GB",
    // "Source Han Sans",
    // 宋体
    // "FlyFlowerSong",
    "LXGW Neo ZhiSong",
    // "LXGW ZhiSong CL",
    // "Source Han Serif",
    // "LXGW Neo ZhiSong",
    // 楷体
    // "ChillKai",
    // "FZKai-Z03S",
    // "JyunsaiKaai",
    // "TsangerJinKai05 W05",
  ), fallback: true, lang: "zh", region: "CN")
  // Title row.
  align(center)[
    #block(text(weight: 700, 1.7em, author.name))
  ]
  resume-contacts(contacts)
  // Main body.
  set par(justify: true)
  body
}

#let format-date(date) = {
  if type(date) == datetime [date.display()] else if type(date) == str and date.len() == 0 [今] else if (type(date) == str) {
    date
  } else {
    // todo panic
  }
}

#let resume-date(start, end: "") = {
  if start == "" and end == "" {
    ""
  } else {
    format-date(start) + " " + $dash.en$ + " " + format-date(end)
  }
}

#let resume-item(left: "", right: "", text-size: 12pt, body) = {
  // 如果左右都为空，则增加行间距
  if right == "" and left == "" {
    v(05pt)
  } else {
    v(-3pt)
  }
  if right != "" {
    text(size: text-size, place(end, right))
  }
  if left != "" {
    text(size: text-size, left)
  }
  // 如果body不为空，则增加行间距
  if body != [] {
    v(-5pt)
    body
    v(-5pt)
  }
}

#let resume-education(university: "", degree: "", school: "", start: "", end: "", body) = {
  let left = (strong(university), school, degree)
  let right = resume-date(start, end: end)
  resume-item(left: array-to-str(left), right: right, body)
}

#let resume-work(company: "", duty: "", start: "", end: "", body) = {
  let left = (strong(company), text(font: ("Libertinus Serif", "FZKai-Z03S",), duty))
  let right = resume-date(start, end: end)
  resume-item(left: array-to-str(left), right: right, body)
}

#let resume-project(title: "", duty: "", start: "", end: "", body) = {
  let left = (strong(title), text(font: ("Libertinus Serif", "FZKai-Z03S",), duty))
  let right = resume-date(start, end: end)
  resume-item(left: array-to-str(left), right: right, body)
}

#let resume-section(title) = {
  v(-05pt)
  heading(level: 1, title)
  v(-04pt)
  line(length: 100%)
  v(-05pt)
}
