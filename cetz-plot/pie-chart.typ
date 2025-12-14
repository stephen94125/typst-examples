#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": plot, chart 

#let data = (
  ("Rust", 30),
  ("Go", 20),
  ("Python", 15),
  ("Typst", 35),
)

#cetz.canvas({
  chart.piechart(
    data,
    
    // 2. 關鍵修正：告訴它數據在哪裡
    value-key: 1, // 數值在 tuple 的第 1 個位置 (0-based)
    label-key: 0, // 標籤在 tuple 的第 0 個位置
    
    // 3. 基礎設定
    radius:4,
    // 關鍵修正：不要用 Dictionary 對應顏色，改用 Array
    // 這樣 cetz-plot 就不用去比對 "Rust" == "Rust"，而是直接第1個切片用第1個顏色
    slice-style: (red, blue, yellow, orange),
    
    // 4. 顯示設定
    outer-label: (content: "%", radius: 120%), // 顯示百分比在外面
    inner-label: (content: none) // 裡面不顯示
  )
})

