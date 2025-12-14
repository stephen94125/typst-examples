#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": plot, chart 

#cetz.canvas({
  plot.plot(
    size: (10, 4),
    axis-style: "school-book",
    {
      plot.add(
        ((0, 0), (1, 2), (2, 1), (3, 4)), 
        label: "Server A",
        style: (stroke: blue + 2pt) 
      )

      plot.add(
        ((0, 1), (1, 3), (2, 2), (3, 5)), 
        label: "Server B",
        style: (stroke: (paint: red, thickness: 1pt, dash: "dashed"))
      )
    }
  )
})
