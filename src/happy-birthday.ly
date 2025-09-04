\version "2.25.27"

\header {
  title = "Happy Birthday To You"
  composer = "Patty and Mildred J. Hill"
}

global = {
  \time 3/4
  \key g \major
  \partial 4
}

melody = \relative {
  \global
  \clef treble
  d'8 d | e4 d g | fis2 d8 d | e4 d a' | g2 d8 d | d'4 b g |
  fis e\fermata c'8 c | b4 g a | g2 \bar "|."
}

harmony = \chordmode {
  \global
  r4 | g2. | d:maj7 | r | g | r | c | g2 d4:maj7 | g
}

text = \lyricmode {
  Hap -- py | birth -- day to | you.  Hap -- py | birth -- day to |
  you.  Hap -- py | birth -- day dear | - -.  Hap -- py | birth -- day to | you.
}

\score {
  <<
    \new ChordNames \transpose g f \harmony
    \new Staff \context Voice = "vocal" \transpose g f \melody
    \new Lyrics \lyricsto "vocal" \text
  >>
}