#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": plot, chart

// cetz-plot 的用法比較簡單，常用的圖都幫你包裝好了
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

// cetz 的用法比較原始
#cetz.canvas({
  import cetz.draw: *
  
  // 1. 自己畫座標軸 (從 0,0 到 0,5)
  line((0,0), (0,5), mark: (end: ">"), name: "y-axis")
  line((0,0), (6,0), mark: (end: ">"), name: "x-axis")
  
  // 2. 第一根柱子 (Rust) - 必須手算座標
  rect((0.5, 0), (1.5, 4.5), fill: red) 
  content((1, -0.5), "Rust")
  
  // 3. 第二根柱子 (Go)
  rect((2.5, 0), (3.5, 4.2), fill: blue)
  content((3, -0.5), "Go")
})
