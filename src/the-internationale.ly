%% SPDX-FileCopyrightText: 2025 Yiyu Zhou <yiyu@yiyuzhou.io>
%%
%% SPDX-License-Identifier: 0BSD OR CC0-1.0

\version "2.25.27"

\header {
  title = "The Internationale"
  poet = "Words by Eugene Pottier (1871)"
  meter = "Music by Pierre Degeyter (1888)"
  arranger = "Arranged by Jerry Engelbach, 2001"
  copyright =
    "This arrangement is not copyrighted and may be freely distributed."
}

global = {
  \time 4/4
  \key a \major
  \partial 8
}

melody = \relative c' {
  \global
  \clef treble
  e8 \bar "||" | a4. gis8 b a e cis | fis2 d4. fis8 |
  b4. a8 gis fis e d | \break
  cis2. r8 e | a4. gis8 b a e cis | fis2 d4. a'16 16 |
  gis4 8 b d4 gis, | a2. cis8 b \bar "||" | \break
  gis4. 8 fis gis a fis | gis2 e4. 16 16 | fis4 8 8 b4 a | gis2. r8 b | \break
  b4. gis8 e8 8 dis e | cis'2 e,8 fis gis a |
  gis4 b a4 fis | e2 cis'4. b8 \bar "||" | \pageBreak
  a2 e4 fis | fis2 d4 b'8. a16 | gis4 4 fis e | 2. 4 | \break
  cis'4. 8 b4 e, | a2 gis4. 8 | fis4. eis8 fis4 b |
  b2 cis4. b8 \bar "||" | \break
  a2 e4 fis | fis2 d4 b'8. a16 | gis4 4 fis4. e8 | cis'2. 4 | \break
  e4. 8 d4 cis | b cis d4. 8 | cis4. 8 b4. a8 | a2. \bar "|."
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
      gis4. 8 fis gis a fis | gis2 e4. 8 | fis4. 8 b4 a | gis2 b4. 8 |
      b4. gis8 e e dis e | cis'2 a8 fis gis a | gis4 b a fis | e2 cis'4. b8 |
      a4. e8 e4 fis | fis2 d4 b'8. a16 | gis4 4 fis e | 2. 4 |
      cis'4. 8 <gis b>4 e | a2 gis4. 8 | fis4. eis8 fis4 b | b2 cis4. b8 |
      a4. e8 e4 fis | fis2 d4 b'8. a16 | gis4 4 fis e |
      <cis a' cis>2. <cis g' cis>4 |
      e'4. 8 d4 cis | b cis d d | cis4. 8 b4. a8 | <cis, e a>2.
    }

    \new Voice {
      \voiceTwo
      \absolute {
        cis'2 e'4 r | <a d'>4 <ais cis'> a2 | d'2 d'4 r | a2 <a d'>4 <gis d'> |
        cis'2 e'4 r | <a d'>4 <ais cis'> a2 | d'2 2 |
        <cis' e'>4 <b d'> <a cis'>2 | <b e'>2 e'4 dis' | <b e'>4 <a dis'> gis2 |
        e'2 dis' | <b e'>2 e'4 dis' |
        <b e'>4 <b e'> <gis b>2 | <e' a'>4 <d' gis'> <cis' e'>2 |
        <b e'>2 e'4 dis' | <gis b>4 <a cis'> <d' fis'>2 |
        <cis' e'>4 <b d'> <a cis'>2 | <a d'>4 <ais cis'> a d' |
        d'2 <gis d'> | <a cis'>2 a4 gis |
        <cis' a'>2 d' | <a cis'>2 <gis cis'> | <a d'>2 <a dis'> |
        <d' a'>2 <d' fis'> |
        <cis' e'>4 <b d'> <a cis'>2 | <a d'>4 <ais cis'> a d' |
        d'2 <gis d'> | s1 |
        <fis' ais'>2 <d' fis' a'>4 <e' fis' ais'> |
        <d' fis'>4 <e' fis' ais'> <d' fis' a'> <d' f' a'> |
        <cis' e' a'>2 <d' e'>
      }
    }
  >>
}

lower = {
  \global
  \clef bass
  r8 |
  <a, e>2 <cis a> | d4 cis b, a, | <e, gis>2 <gis, e> | <a, e>2 b,4 e, |
  <a, e>2 <cis a> | d4 cis b, a, | <gis, e>2 <e, gis> | <a, e>1 |
  << { r2 a2 } \\ { e,2 b,4 b,, } >> | e,4 fis, gis,2 |
  << { a1 } \\ { b,2 b,, } >> | << { r2 a2 } \\ { e4 dis cis b, } >> |
  <e, gis>4 <dis, dis> <d, d>2 | <cis, cis>4 <b,, b,> <a,, a,>2 |
  <e, b,>2 <b, a> | <e, b,>2 <e, gis> |
  a,4 b, cis2 | d4 cis b, <a, fis> | <gis, e>2 <e, d> |
  << { e2 d } \\ { a,4 gis, fis, e, } >> |
  <a, e>2 <gis, e> | <fis, e>2 <f, cis> |
  <d, a,>2 <dis, b,> | <e, a>2 <e, gis> |
  a,4 b, cis2 | d4 cis b, <a, fis> | <gis, e>2 <e, d> |
  << { e1 } \\ { <a, a>2 <g, g> } >> |
  <fis, fis>2 <b,, b,>4 <cis, cis> | <d, d>4 <cis, cis> <b,, b,> <f, f> |
  << { r2 a4 gis } \\ { e4 e, e,2 } >> |
  << { <a, e a>2. } \\ { r2 a,,4 } >> \bar "|."
}

chordNames = \chordmode {
  s8 |
  a1 | d | e:7 | a2. e4:7 |
  a1 | d | e:7 | a | e2 b:7 | e1 | b:7 | e2. b4:7 |
  e2 e:7 | a1 | e2 b:7 | e e:7 |
  a1 | d | e:7 | a2 e:7 | a e:7 | fis:m cis:7 | d b:7 | e e:7 |
  a1 | d | e:7 | a2 a:7 | fis1:7 | b2:m7 e:7 | a e:7 | a2.
}

text = \lyricmode {
  A -- rise ye work -- ers from your slum -- bers,
  A -- rise ye pris -- on -- ers of want.
  For rea -- son in re -- volt now thun -- ders,
  and at last ends the age of cant.
  A -- _ way with all your su -- per -- sti -- tions,
  Ser -- vile mass -- es a -- rise, a -- rise.
  We’ll change hence -- forth the old tra -- di -- tion,
  And spurn the dust to win the prize.

  So __ _ com -- rades come ral -- ly,
  And the last fight let us face.
  The In -- ter -- na -- tion -- al -- e
  u -- nites the hu -- man race.

  So __ _ com -- rades let’s ral -- ly
  And the last fight let us face.
  The In -- ter -- na -- tion -- al -- _ e
  u -- nites the hu -- man race.
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
  \midi { \tempo 4 = 120 }
}
