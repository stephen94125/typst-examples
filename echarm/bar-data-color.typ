#import "@preview/echarm:0.3.1"

#echarm.render(
  width: 100%,
  height: 40%,
  options: (
    xAxis: (
      type: "category",
      data: ("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
    ),
    yAxis: (
      type: "value"
    ),
    series: (
      (
        data: (
          120,
          (
            value: 200,
            itemStyle: (
              color: "#505372"
            )
          ),
          150,
          80,
          70,
          110,
          130
        ),
        type: "bar"
      )
    )
  )
)
