# scarlatti-sonatas-k221-k230

[LilyPond](https://lilypond.org/) engraving input files used to create Scarlatti's sonatas K221 through K230.

## Creating the PDF and MIDI files

(I highly recommend the [Frescobaldi](https://github.com/frescobaldi/frescobaldi) IDE for LilyPond. It makes all the following much easier.)

PDF and MIDI files can be created by compiling an `ly` file with LilyPond, that is, for instance, issuing the following command (assuming you have `lilypond` in your PATH variable):

        lilypond sonata-k221.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click sonata-k221.ly

You can also [download the latest release](https://github.com/ksnortum/scarlatti-sonatas-k221-k230/releases/latest) to get the compiled PDF and MIDI files.

### Two-sided printing

The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding. If you don't want this, open the file `globals.ily`, find the `\paper` block (near the top) and set `two-sided = ##f`.

### Bar numbering

If you want to print bar numbers over the first measure of every system, open the file `globals.ily` and comment out or remove the line `\omit BarNumber`.

## Suppressed warning in K222

I have suppressed a bar check warning in sonata K222.  It happens because the first repeat is in the middle of a bar and there is no partial measure at the beginning of the piece.  It does not affect the output.

## Problems with articulate.ly in K229

Because if [this bug](https://gitlab.com/lilypond/lilypond/-/work_items/4391), `articulate.ly` cannot be used in a piece that starts with a grace note.  K229's MIDI output is affected by this.

## Thanks

Thanks to the folks at the [LilyPond user's mailing list](mailto://lilypond-user@gnu.org) for all the help getting LilyPond to do what I wanted.

## License

Copyright © 2026 by [Knute Snortum](https://github.com/ksnortum/), licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)![cc](https://mirrors.creativecommons.org/presskit/icons/cc.svg)![by](https://mirrors.creativecommons.org/presskit/icons/by.svg)![sa](https://mirrors.creativecommons.org/presskit/icons/sa.svg)

If you use this work, please attribute it to Knute Snortum (<https://github.com/ksnortum/>).
