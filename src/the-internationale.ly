\version "2.25.27"

\header {
  title = "L'Internationale"
  composer = \markup \right-column {
    "Paroles d'Eugène Pottier"
    "Musique de Pierre De Geyter"
  }
}

global = {
  \time 4/4
  \key a \major
  \tempo "Alla marcia" 4 = 120
  \tempo 4 = 120
  \partial 8
}

melody = \relative c' {
  \global
  \clef treble
  \p
  e8 | a4. gis8 b a e cis | fis2 d4. fis8 | b4. a8 gis fis e d | cis2. r8 e |
  a4. gis8 b a e cis | fis2 d4. a'16 16 | gis4 8 b d4 gis, | a2. cis8 b8 |
  gis4. 8 fis gis a fis | gis2 e4. 16 16 | fis4 8 8 b4 a | gis2. r8 b |
  b4. gis8 e8 8 dis e | cis'2 e,8 fis gis a | gis4 b a4 fis | e2 cis'4. b8 |
  a2 e4 fis | fis2 d4 b'8. a16 | gis4 4 fis e | 2. 4 | cis'4. 8 b4 e, |
  a2 gis4. 8 | fis4. eis8 fis4 b | b2 cis4. b8 | a2 e4 fis | fis2 d4 b'8. a16 |
  gis4 4 fis4. e8 | cis'2. 4 | e4. 8 d4 cis | b cis d4. 8 | cis4. 8 b4. a8 |
  a2. \fine
}

upper = \relative c' {
  \global
  \clef treble
  e8 |
  <<
    {
      \voiceOne
      a4. gis8 b a e cis | fis2 d4. fis8 | b4. a8 gis fis e d | cis2 fis4. e8 |
      a4. gis8 b a e cis | fis2 d4. a'16 16 | gis4 b d gis, | a2. cis8 b |
      gis4. 8 fis gis a fis | gis2 e4. 8 | e4. 8 b'4 a | <e gis>2 b'4. 8 |
      b4. gis8 e e dis e | cis2 a8 fis gis a | gis'4 b a fis | e2 cis'4. b8
    }

    \new Voice {
      \voiceTwo
      cis2 e4 r | <a, d> <ais cis> a2 | d2 d4 r | a2 <a d>4 <gis d'> |
      cis2 e4 r | <a, d> <ais cis> a2 | d2 2 | <cis e>4 <b d> <a cis>2 |
      <e' b>2 e4 dis | <e b> <dis a> gis,2 | e' dis | b e4 dis
    }
  >>
}

lower = {
  \clef bass
  r8 |
  <a, e>2 <a c> | d4 c b, a, | <e, g>2 <e g,> | <a, e> b,4 e, |
  <a, e>2 <a c> | d4 c b, a, | <e g,>2 <e, g> | <a, e>1 |
}

chordNames = \chordmode {
  r8 |
  a1 | d | e:maj7 | a2 e:maj7 |
  a1 | d | e:maj7 | a | e2 b:maj7 | e1 | b1:maj7 |
  \repeat unfold 2 { e2 b:maj7 | e2 e:maj7 | a1 } |
  d | e:maj7 | a2 e:maj7 | a2 e:maj7 | fis:min cis:maj7 | d b:maj7 | e e:maj7 |
  a1 | d | e:maj7 | a2 a:maj7 | fis1:maj7 | b2:min7 e:maj7 | a e:maj7 | a1 |
}

text = \lyricmode {
  % TODO
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff \context Voice = "vocal" \melody
    \new Lyrics \lyricsto "vocal" \text
    \new PianoStaff <<
      \new Staff = "left" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout { }
  \midi { }
}