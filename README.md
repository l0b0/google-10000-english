XKCD passphrase generator
===

Simply run **`./generate.sh`** to generate a passphrase based on the XKCD method: [![Password Strength comic by Randall Munroe](https://imgs.xkcd.com/comics/password_strength.png)](https://xkcd.com/936/)

By default this uses the **2,048** most popular words in the English language. To use the *N* (between 4 and **10,000**) most popular words instead simply run `./generate.sh N`. For example, `./generate.sh 10000` prints the strongest password this can generate.

The word list is based on [another repository](https://github.com/first20hours/google-10000-english). [Many thanks](CREDITS.md) to Josh Kaufman, Peter Norvig and Google for contributing this. If anyone knows of a list of most popular *contemporary* English words which is definitely Creative Commons licensed or in the public domain, please let me know.

Using your own word list is easy - simply replace words.txt with your own file.

Adapting this to *other languages* would be easy. If you can provide a list of at least the 2,048 most popular words in a language (sorted by decreasing popularity) I can adapt this program for your language. Please file an issue and include a link to the word list.

Notes:

- The original comic quoted “~44 bits of entropy” for a four word passphrase like “correct horse battery staple”, making it simple to assume that the dictionary contained 2,048 words (2^(44/4)). The dictionary used is unknown, but even though the first three words are all in [the word list](words.txt), “staple” is actually word number *333,333* in [Peter Norvig’s list](http://norvig.com/ngrams/count_1w.txt).
- [The security of this approach has been discussed elsewhere](https://security.stackexchange.com/q/6095/1220). User beware.

License
---

The code is licensed under the [GNU Affero GPL v3+](LICENSE).
