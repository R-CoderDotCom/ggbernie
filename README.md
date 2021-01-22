# ggbernie
A ggplot2 geom for adding Bernie Sandners

This is a package inspired by a [tweet](https://twitter.com/samuelmehr/status/1352348108013895693) by [@samuelmehr](https://twitter.com/samuelmehr)


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
