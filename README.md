# ggbernie
A ggplot2 geom for adding Bernie Sandners

This is a package inspired by a [tweet](https://twitter.com/samuelmehr/status/1352348108013895693) by [@samuelmehr](https://twitter.com/samuelmehr)


## Example 1
```r
ggplot(mtcars) +
  geom_bernie(aes(mpg, wt), bernie = "bernie1")
```
![imagen](https://user-images.githubusercontent.com/67192157/105496237-80897b00-5cbd-11eb-996a-b77e89011b31.png)


## Example 2


```r
ggplot(mtcars) +
  geom_bernie(aes(mpg, wt), bernie = "bernie2")
```

![imagen](https://user-images.githubusercontent.com/67192157/105496133-5cc63500-5cbd-11eb-8343-aae625f2ca21.png)
