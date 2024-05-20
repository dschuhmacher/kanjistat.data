# kanjistat.data

An R package containing additional datasets for use with the [kanjistat](https://github.com/dschuhmacher/kanjistat) package.

It currently contains the lists `kvecjoyo` and `kvecjinmei` of kanji in `kanjivec` format and a matrix of component-transport distances between Jōyō kanji. The datasets have been generated from the phenomonal [KanjiVG data](https://kanjivg.tagaini.net/) by Ulrich Apel by applying functions `kanjivec` and `kanjidist` in the kanjistat package.


## Installation

Install directly from GitHub by saying in R
```r
remotes::install_github("dschuhmacher/kanjistat.data")
```


## License

The datasets in this repository are licensed under a [Creative Commons BY-SA 4.0 International Licence](https://creativecommons.org/licenses/by-sa/4.0/). Please include a link either to this repository or the [kanjistat repository](https://github.com/dschuhmacher/kanjistat) if you publish any derived work.

The datasets `kvecjoyo` and `kvecjinmei` are (substantial) modifications of the original [KanjiVG data](https://kanjivg.tagaini.net/), which is copyright &copy; 2009-2023 Ulrich Apel, licensed under [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/). This information must be retained in any derived work.
