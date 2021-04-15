# ggbernie

<p align="center">
      <a href="https://twitter.com/RCoderWeb" alt="Twitter Badgee">
        <img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white" /></a>
      <a href="https://www.facebook.com/RCODERweb" alt="Facebook Badge">
        <img src="https://img.shields.io/badge/Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white" /></a>
</p>

A ggplot2 geom for adding Bernie Sanders. This is a core package of the memeverse. Check also [ggcats](https://github.com/R-CoderDotCom/ggcats).

This is a package inspired by a [tweet](https://twitter.com/samuelmehr/status/1352348108013895693) by [@samuelmehr](https://twitter.com/samuelmehr)

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



## Featured memes made by the community

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Not the plot I wanted, but the plot I **needed**. We have a new activity in the office, called plotcrastinating. <a href="https://twitter.com/hashtag/aRt?src=hash&amp;ref_src=twsrc%5Etfw">#aRt</a> <a href="https://twitter.com/hashtag/geom_bernie?src=hash&amp;ref_src=twsrc%5Etfw">#geom_bernie</a> <a href="https://twitter.com/hashtag/ggbernie?src=hash&amp;ref_src=twsrc%5Etfw">#ggbernie</a> <a href="https://twitter.com/hashtag/ggplot2?src=hash&amp;ref_src=twsrc%5Etfw">#ggplot2</a> <a href="https://twitter.com/hashtag/Rladies?src=hash&amp;ref_src=twsrc%5Etfw">#Rladies</a> <a href="https://t.co/4j6jWo1nEW">pic.twitter.com/4j6jWo1nEW</a></p>&mdash; Chloe Fouilloux (@ChloeFouilloux) <a href="https://twitter.com/ChloeFouilloux/status/1353694206221578241?ref_src=twsrc%5Etfw">January 25, 2021</a></blockquote>

<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105769340-f7dd3a00-5f5d-11eb-9a25-942a5ed8444f.png">
</p>





<blockquote class="twitter-tweet"><p lang="en" dir="ltr">We had to know this was coming <a href="https://twitter.com/RCoderWeb?ref_src=twsrc%5Etfw">@RCoderWeb</a> <a href="https://t.co/6H5bQ0yIYa">https://t.co/6H5bQ0yIYa</a> <a href="https://t.co/yvT3Lfg5qH">pic.twitter.com/yvT3Lfg5qH</a></p>&mdash; Jonathan Hersh (@DogmaticPrior) <a href="https://twitter.com/DogmaticPrior/status/1353598291993190400?ref_src=twsrc%5Etfw">January 25, 2021</a></blockquote>


<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105769778-a1bcc680-5f5e-11eb-9c43-31b813a42747.gif">
</p>




<blockquote class="twitter-tweet"><p lang="und" dir="ltr"><a href="https://t.co/ps3x4u5lDZ">pic.twitter.com/ps3x4u5lDZ</a></p>&mdash; Julius Lehtinen (@Julleht) <a href="https://twitter.com/Julleht/status/1353773011233603584?ref_src=twsrc%5Etfw">January 25, 2021</a></blockquote> 



<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105770010-f8c29b80-5f5e-11eb-9824-218bc2c2fda7.png">
</p>


<blockquote class="twitter-tweet"><p lang="und" dir="ltr"><a href="https://t.co/spQNAvQii4">pic.twitter.com/spQNAvQii4</a></p>&mdash; Travis Gerke (@travisgerke) <a href="https://twitter.com/travisgerke/status/1353807894362411009?ref_src=twsrc%5Etfw">January 25, 2021</a></blockquote>

<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105770121-1263e300-5f5f-11eb-8b32-9a2f64cef412.png">
</p>




<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Bernie shows us health inequalities among Chicago Community Areas <a href="https://twitter.com/hashtag/rstats?src=hash&amp;ref_src=twsrc%5Etfw">#rstats</a> <a href="https://t.co/IhswP476DG">pic.twitter.com/IhswP476DG</a></p>&mdash; hughbartling (@hughbartling) <a href="https://twitter.com/hughbartling/status/1353462290142519296?ref_src=twsrc%5Etfw">January 24, 2021</a></blockquote>


<p align="center">
 <img src="https://user-images.githubusercontent.com/67192157/105770301-4b03bc80-5f5f-11eb-8984-2b78ebc171c0.png">
</p>



