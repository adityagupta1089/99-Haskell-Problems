gray 1 = ["0", "1"]
gray n =
    map ("0"++) old ++
    map ("1"++) (reverse old)
        where old = gray (n - 1)
