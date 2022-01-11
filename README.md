# hunalign-dict-muse
Dictionaries for [hunalign](https://github.com/danielvarga/hunalign) generated from [Facebook MUSE dictionaries](https://github.com/facebookresearch/MUSE#ground-truth-bilingual-dictionaries).

Last updated: 11 Jan 2022

# How to manually update the files

In `bash` run `update.sh` to trigger a new download and conversion of the Facebook dictionaries. 

What happens during conversion:

* Removes the test and train subset files.
* Will rename `*.txt` to `*.dict`
* Will put the required delimiter `<space>@<space` into the files
* Reverse the order of the words, because `hunalign` expects the order to be `<target language> @ <source language>` (the reverse from the way the API and command line utility expect it)

**NOTE** The filename is `<source language>-<target language>.dict`

# License

Facebook MUSE dictionaries are [Creative Commons Attribution-NonCommercial 4.0 International](https://github.com/facebookresearch/MUSE/blob/main/LICENSE). This repository is just a reformatting of this data and thus has no own license terms.

Please reference the original authors as follows:

[1] A. Conneau, G. Lample, L. Denoyer, MA. Ranzato, H. Jégou, Word Translation Without Parallel Data

```bibtex
@article{conneau2017word,
  title={Word Translation Without Parallel Data},
  author={Conneau, Alexis and Lample, Guillaume and Ranzato, Marc'Aurelio and Denoyer, Ludovic and J{\'e}gou, Herv{\'e}},
  journal={arXiv preprint arXiv:1710.04087},
  year={2017}
}
```


# Related

Other hunalign dictionaries:

* [hunapertium](https://github.com/aoliverg/hunapertium) - Hunalign dictionaries generated from Google's [Apertium](https://wiki.apertium.org/wiki/Main_Page)
