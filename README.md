# ggbernie
A ggplot2 geom for adding Bernie Sanders

This is a package inspired by a [tweet](https://twitter.com/samuelmehr/status/1352348108013895693) by [@samuelmehr](https://twitter.com/samuelmehr)

+ Follow me on [Twitter](https://twitter.com/RCoderWeb)
+ Follow me on [Facebook](https://www.facebook.com/RCODERweb)
+ Visit my [R programming site](https://r-coder.com/)


## Installation
```r
# install.packages("remotes")
remotes::install_github("R-CoderDotCom/ggbernie@main")
```

## Bernie sitting
```r
ggplot(mtcars) +
  geom_bernie(aes(mpg, wt), bernie = "sitting")
```
<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105496237-80897b00-5cbd-11eb-996a-b77e89011b31.png">
</p>


## Bernie stand

```r
ggplot(mtcars) +
  geom_bernie(aes(mpg, wt), bernie = "stand")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105496133-5cc63500-5cbd-11eb-8343-aae625f2ca21.png">
</p>



## Bernie head

```r
ggplot(mtcars) +
  geom_bernie(aes(mpg, wt), bernie = "head")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105522490-9d35ab00-5cdd-11eb-94a5-6cfc48e5ed04.png">
</p>


## Bernie young

```r
ggplot(mtcars) +
  geom_bernie(aes(mpg, wt), bernie = "young")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105522466-9149e900-5cdd-11eb-9661-5faa3fcf810b.png">
</p>


## Bernie arms

```r
ggplot(mtcars) +
  geom_bernie(aes(mpg, wt), bernie = "arms")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105522421-8000dc80-5cdd-11eb-83b9-6c5c38627ae2.png">
</p>


## Bernie eyebrows

```r
ggplot(mtcars) +
  geom_bernie(aes(mpg, wt), bernie = "eyebrows")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105522372-711a2a00-5cdd-11eb-9b15-c490bbf1f5ad.png">
</p>


## Bernie asking

```r
ggplot(mtcars) +
  geom_bernie(aes(mpg, wt), bernie = "asking")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105522716-dec65600-5cdd-11eb-844f-62b530bdd8ea.png">
</p>


## Bernie plane
```r
library(ggplot2)

plane <- "https://user-images.githubusercontent.com/67192157/105575266-b173b980-5d6a-11eb-90e3-a7ddea0fe52b.png"

data <- data.frame(x = c(-0.1, 0, 0.05, 0.1, 0.15, 0.2,
                         0.3, 0.35, 0.4, 0.43, 0.52, 0.56, 0.6, 0.65,
                         0.3, 0.35, 0.38, 0.42, 0.5, 0.46, 0.44, 0.5, 0.51, 0.45, 0.6, 0.56, 0.63,
                         0.8, 0.85, 0.9, 0.75, 0.95),
                   y = c(0.61, 0.6, 0.65, 0.62, 0.67, 0.61,
                         0, 0.05, 0.02, 0.01, 0.033, 0.021, 0, 0.018,
                         0.65, 0.55, 0.6, 0.53, 0.42, 0.48, 0.43, 0.54, 0.6, 0.58, 0.55, 0.57, 0.65,
                         0.62, 0.64, 0.625, 0.67, 0.665))

p <- ggplot(data, aes(x, y)) +
    geom_bernie(bernie = "sitting") +
    xlim(c(0, 1)) +
    ylim(c(0, 1)) + 
    theme(panel.grid = element_line(color = "transparent"),
          axis.title = element_text(color = "transparent"),
          axis.text = element_text(color = "transparent"),
          axis.ticks = element_blank())
   
library(ggimage)
ggbackground(p, plane)
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105576624-59da4b80-5d74-11eb-9bf7-e3f73c9aebd6.png">
</p>


The `draw_key_bernie` function was inspired by `draw_key_lime` from `geom_lime`.
