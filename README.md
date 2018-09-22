XKCD passphrase generator
===

Simply run **`./generate.sh`** to generate a passphrase based on the XKCD method: [![Password Strength comic by Randall Munroe](https://imgs.xkcd.com/comics/password_strength.png)](https://xkcd.com/936/)

The word list is based on [another repository](https://github.com/first20hours/google-10000-english). [Many thanks](CREDITS.md) to Josh Kaufman, Peter Norvig and Google for contributing this.

Notes:

- The original comic quoted “~44 bits of entropy” for a four word passphrase like “correct horse battery staple”, making it simple to assume that the dictionary contained 2,048 words (2^(44/4)). The dictionary used is unknown, but even though the first three words are all in [the word list](words.txt), “staple” is actually word number *333,333* in [Peter Norvig’s list](http://norvig.com/ngrams/count_1w.txt).
- [The security of this approach has been discussed elsewhere](https://security.stackexchange.com/q/6095/1220). User beware.

License
---

The code is licensed under the [GNU Affero GPL v3+](LICENSE).
