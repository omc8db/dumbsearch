# Dumbsearch, a simple file search tool for Linux similar to Everything Search

Everything file search for Windows is wonderful - instant search as you type for filenames.

There are a few similar projects for Linux.
https://old.reddit.com/r/software/comments/t5n3cm/everything_for_linux/

My big complaint with these is that they're way too complicated. They weren't in my package repos and I didn't want to deal with setting up the tools to build them from source. I wanted to demonstrate that you could make this functionality easily in a short script with only tools you probably already have installed. This whole project was written in about 30 minutes.

It is a theoretically less efficient tool than the properly engineered ones listed in that thread. But for 99% of users it doesn't matter, this will still feel instant.

Depedencies
* Python
* Ripgrep

# Installation

```
git clone https://github.com/omc8db/dumbsearch.git
cd dumbsearch
./install.sh
```

Optionally add a desktop launcher or a keyboard shortcut if you want.

# FAQ

**Q:** Is this literally just dumping a list of every filename in my system into a text file and running ripgrep on it?

**A:** Yes.

**Q:** But isn't using a real data structure and incremental search more efficient?

**A:** That's actually not guaranteed on modern hardware. Searching a continuous block of memory is very friendly to CPU cache, the branch predictor and vectorization. Pointer chasing around a data structure is not. Subjectively this program has felt faster than any other search tool on every machine I've tested it on.

**Q:** Why did you use ugly old TK instead of a modern framework like QT / GTK / Electron?

**A:** They're not in the standard library and they're not happening in 100 lines of python.

**Q:** Is this a *good* tool?

**A:** It's an effective tool.