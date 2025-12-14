#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": plot, chart 

#cetz.canvas({
  chart.columnchart(
    size: (10, 4),   // 畫布大小
    (
      ("Rust", 90),
      ("Go", 85),
      ("C++", 60),
    ),
    y-label: "Love", // Y軸標籤
    x-label: "Lang", // X軸標籤
  )
})
