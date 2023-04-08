# kanjistat.data

This repository collects additional datasets for use with the R package [kanjistat](https://github.com/dschuhmacher/kanjistat).

Currently the only dataset available is `kvecjoyo`. It consists of a list of 2136 `kanjivec` objects, one for each Jōyō kanji, in the usual enumeration of the package (the same as in the datasets `kbase` and `kmorph`). `kvecjoyo` has been produced by calling `kanjistat::kanjivec` with parameter `flatten="intelligent"` on these kanji using the phenomonal [KanjiVG data](https://kanjivg.tagaini.net/) by Ulrich Apel.



## License

The dataset `kvecjoyo` in this repository is licensed under a [Creative Commons BY-SA 4.0 International Licence](https://creativecommons.org/licenses/by-sa/4.0/). Please include a link either to this repository or the [kanjistat repository](https://github.com/dschuhmacher/kanjistat) if you publish any derived work.

The dataset is a (substantial) modification of the original [KanjiVG data](https://kanjivg.tagaini.net/), which is copyright &copy; 2009-2023 Ulrich Apel, licensed under [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/). This information must be retained in any derived work.


## How to use the data

`kvecjoyo` is an xz-compressed binary file, intended to be loaded into R with the command `load`. Since the data gives direct access to all Jōyō kanji in `kanjivec` format, it may be required a lot when working with the `kanjistat` package. To load it automatically when loading the `kanjistat` package, add the line

```
load("/path/to/file/kvecjoyo.rda", envir = topenv())
```

(replacing /path/to/file/ by the actual path) to your `.Rkanjistat-profile` file. This adds the data to the kanjistat namespace before it is sealed. To load it into the global environment instead, replace `topenv()` by `.GlobalEnv`.
