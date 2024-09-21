#import "@preview/touying:0.5.2": *
#import "_colors.typ": *

#let _over-title(self: none, title) = {
  let box1 = {
    box(fill: white, stroke: 1pt + self.store.colors.blue, inset: 8pt)[
      #set text(size: 16pt, font: "Crimson Pro", weight: "semibold", fill: self.store.colors.blue)
      #title.first()
    ]
  }

  let box2 = {
    box(fill: white, stroke: 1pt + self.store.colors.blue, inset: 8pt)[
      #set text(size: 16pt, font: "Crimson Pro", weight: "semibold", fill: self.store.colors.blue)
      #title.last()
    ]
  }

  context{
    let box1-size = measure(box1).width
    let box2-size = measure(box2).width
    let ratio = box1-size / box2-size

    box1
    if ratio > 1 {
      move(dx: ratio*box2-size/1.25, dy: -0.84cm, box2)
    } else {
      move(dx: ratio*box1-size/2.25, dy: -0.84cm, box2)
    }
  }
  v(1em)
}
#let over-title(title) = touying-fn-wrapper(_over-title.with(title))