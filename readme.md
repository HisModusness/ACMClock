## Features
* Tells the time
* Tells the time in colors

## Compatibility
* *Any* 3.5-inch or 4-inch iPhone

## Secret Sauce
The time is updated using a timer:
```objc
timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime:) userInfo:nil repeats:YES];
```