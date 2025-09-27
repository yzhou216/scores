\version "2.25.27"

\header {
  title = "Bodyguard"
  composer = \markup \right-column {
    "Words and Music by"
    "BEYONCÉ KNOWLES, RYAN KEVIN BEATTY,"
    "RAPHAEL SAADIQ, SHAWNTONI NICHOLS"
    "and ELIZABETH BOLAND"
  }
}

global = {
  \time 4/4
  \tempo "Allegretto" 4 = 116-120
}

melody = \relative c'' {
  \global
  \key e \minor
  \clef treble
  b2 fis'4. cis8~ | 2 cis,8 (d cis b) | b'2 fis'4. cis8~ | 2 r \bar "||"
  b,4 g r2 | r8 a a g a g a g | b4 g r2 | r8 a a g a g a a | cis4 a2 r4 |
  r8 a8 8 8 8 8 8 8 | b4 g r4 b | a2 r8 a b fis'~ | 8 e e d e b b4 |
  r r8 a8 b a b d | b a a4 r8 b4 a8~ | 2 r8 a a b | fis' e e d e b b4 |
  r b8 a b a b d | b a a4 r8 b16 (cis e8) a,~ |
  (a4. \slashedGrace b8 cis~ 4. \slashedGrace d8 e~ |
  4. \slashedGrace g8 a~ a g fis e~ \bar "||" 4) g fis8 d4 e8~ |
  8 fis4. cis8 (d cis b) | r8 b g'4 fis8 d4 e8~ | 4 r4 r2 |
  r8 b g'4 fis8 d4 e8~ | 8 cis4 e8~ e cis4 d8~ | 8 b4 d8~ 8 b4 cis8~ |
  4 r cis8 (d cis b) | r4 g' fis8 d4 e8~ | 8 fis4. r2 |
  b,4 fis' fis8 e (cis) e~ (| 2\glissando cis) | r4 g' fis8 d4 e8~ |
  8 cis4 e8~ 8 cis4 d8~ | 8 b4 d8~ 8 b4 \tuplet 3/2 { b16 (cis b } |
  a4.) cis8~ cis4. \slashedGrace b8 e~ (|
  4. \slashedGrace g8 a8~ 8 \slashedGrace b eis4.) \bar "||" b8~ a8 8 g (e) 4. |
  r4 e8 d e (d) e4 | e8 d8 4~\glissando b \xNotesOn b' \xNotesOff |
  r2 r8 d (e4) | b8 (a) 8 g (e) 4. | r4 e8 d e~ d e4 |
  e8 (d) 4 (b) \xNotesOn b' \xNotesOff | r2 r8 d, (e4) \bar "||"
  b'8 (a) 8 g (fis) g (fis e) | r4 e8 d e (d) e4 |
  4 d\glissando (b) \xNotesOn b' \xNotesOff | r4 r8 d8 (e2) |
  b8 (a) 8 g (e) 4. | r4 e8 d e d e4 | e d\glissando (b8) r8 e4 |
  cis4. e8~ 4. \slashedGrace g8 a~ (|
  4. \slashedGrace b8 cis~ 4) a,8 g \bar "||" b4 g r2 | r4 a8 g a g a g |
  b4 g r2 | r8 a8 8 g a g a g | cis4 a2 r4 | r8 g a g a g a g | b4 g r8 8 cis4 |
  a2 r8 a b fis'~ | 8 e8 8 d e b8 8 a~ | 2 b8 a b d |
  b a8 4 r8 b (cis16 e) a,8~ | 2 r8 a b e (| fis) e d e b8 8 a b (|
  fis) 4 g8 fis8 a8 8 g | a8 8 8 fis a8. b16~ 8 fis | 8 (e4.~ 2) \bar "||"
  r4 g' fis8 d4 e8~ | 8 fis4. cis8 (d cis b) | r8 b g'4 fis8 d4 cis8~ | 4 r r2 |
  r8 b g'4 fis8 d4 e8~ | 8 cis4 e8~ 8 cis4 d8~ | 8 b4 d8~ 8 b4 cis16 (b |
  a4) r cis8 (d cis b) | r4 g' fis8 d4 e8~ | 8 fis4. r8 a, d4 |
  b8 8 fis'4 8 d (cis) d (| cis b16 a~ 4) r8 a (d cis | b) 8 g'4 fis8 d4 e8~ |
  8 cis4 e8~ 8 cis4 d8~ |
  8 b a d~ 8 e4 16 (cis~ 8 b16 a~ 8) cis~ 4. \slashedGrace d8 e~ (|
  4. \slashedGrace g8 a~ 8 \slashedGrace c cis4.) \bar "||" b4 a8 g~ 8 e4. |
  r4 e8 d e~ d e4 | e8 d8 4 (b) \xNotesOn b' \xNotesOff | r2 r8 d, (e4) |
  b'8 (a) 8 g (e) 4. | r4 e8 d e d e4 | 4 d (b8) r e4 |
  cis4. e8~ 4. \slashedGrace g8 a~ (| a4. \slashedGrace b8 cis~ 4. b8~ \bar "||"
  2) r | r8 d (cis b~ 8 a4 b8~ | 2) r2 | r8 d8 (cis b16 cis b8 a4 cis8~ |
  8 a fis e~ 4) r | r8 d' (cis b16 cis b8 a4 b8~ | 8 g4 e8~ 4) r |
  r8 d' (cis b16 cis b8 a4 \slashedGrace b8 cis8~ | cis2 e b4) r4 r2 |
  r4 a8 fis a (fis) a (fis) | a fis8 8 (e~ 4) r4 |
  r8 b' a fis a (fis) a (fis) | a (fis) 8 (e~ 4) r4 |
  r8 a16 16 8 fis a (b) a (b) | cis (a8) 8 (fis e4) r | r a8 fis a b a (fis) |
  \slashedGrace a fis4 8 (e) r4 \slashedGrace a8 e4 |
  4. a8 (4.) \slashedGrace b8 cis8~ (|
  4. \slashedGrace d8 e~ 4. d16 cis | b2) r \fine
}

%upper = {
%  \global
%  \clef bass
%  \mf
%  r8 c <e g> c <e g> c <e g b> c
%   \repeat unfold 5 {
%     <f a c'> c <f a c'> c <f a c'> c <f a>16 ais b8 |
%     <e g> c <e g> c <e g> c <e g b> c
%  }
%  <f a> c <f a> c <f a> c <f a> c | <a c'> f <a c'> f <a c'> e <a c'> e |
%  <f a c'> d <f a c'> d <f a c'> c <f a c'> c |
%  <b d'> g <b d'> g <b d'> g <c' e'> g | <g d' f'>1 |
%  \repeat unfold 3 {
%    <a c'>8 f <a c'>8 f  | <g b> d <g b> d |
%    <c' g> e <b g> e <b gis> e <d' gis> e
%  }
%  <a c'>8 f <a c'>8 f  | <b d'> g <b d'> g | <c' e g>1 \bar "||" <c' e g>1 \fine
%}

lower = \relative c, {
  \global
  \clef bass
  \key b \minor
  <e e'>4 4 d'8 8 r e~ | 8 8 r 8~ 8 8 8 8 d
  <e, e'>4 4 d'8 8 r e~ | 8 4 8~ 4. 8
  e,8 8 fis g b8 8 a fis |
  \repeat unfold 5 { a8 8 fis e a8 8 fis8 8 | e8 8 fis g g8 8 a fis }
  \repeat unfold 2 { a8 8 fis e a8 8 fis8 8 | e8 8 fis g b8 8 a fis }
  a8 8 fis e a8 8 fis8 8 |
  \repeat unfold 8 { a8 8 fis e a8 8 fis8 8 | e8 8 fis g b8 8 a fis }
  a8 8 fis e a8 8 fis8 8 |
  \repeat unfold 4 { a8 8 fis e a8 8 fis8 8 | e8 8 fis g b8 8 a fis }
  a8 8 fis e a8 8 8 r |
  e r e eis fis r fis b | a r a fis a ais b fis |
  e r e eis fis r fis g | a r a fis a fis a r |
  e r e eis fis r fis b | a r a fis a ais b fis |
  e r e eis fis r fis b | a8 8 fis e a8 8 fis8 8 |
  a8 8 fis e a8 8 fis f | e8 8 fis g b8 8 a fis |
  \repeat unfold 6 { a8 8 fis e a8 8 fis8 8 | e8 8 fis g b8 8 a fis }
  a8 8 fis e a8 8 fis8 8 | e8 8 fis g r2 | r1 |
  \repeat unfold 8 { e8 8 fis g b8 8 a fis | a8 8 fis e a8 8 fis8 8 }
  a8 8 fis e a8 8 fis e | e8 r e eis fis r fis b |
  a r a fis a ais b fis | e r e eis fis r fis b |
  a r a fis a fis a r | e r e eis fis r fis b |
  a r a fis a ais b fis | e r e eis fis r fis b |
  a8 8 fis e a8 8 fis8 8 | a8 8 fis e a8 8 fis8 8 |
  \repeat unfold 4 { e8 8 fis g b8 8 a fis | a8 8 fis e a8 8 fis8 8 }
  a8 8 fis e a8 8 fis e | e8 8 fis g b8 8 a fis |
  \repeat unfold 4 { a8 8 fis e a8 8 fis8 8 | e8 8 fis g b8 8 a fis }
  a8 8 fis e a8 8 fis8 8 | \repeat unfold 2 { a8 8 fis e } | r1 |
}

                    % 1.3.5.9
chExceptionMusic = { <c e g d'>1-\markup { \super "add9" } }

chordNames = \chordmode {
  \set chordNameExceptions =
  #(append
    (sequential-music-to-chord-exceptions chExceptionMusic #t)
    ignatzekExceptions)

  \repeat unfold 2 { e2:min d4. a8:maj9^7/e | s4. | a8/e s2 }
  \repeat unfold 21 { e:min b4.:min7 a2:maj9^7 | a8 s2 }
  e:min d4./fis a8 | s1
  e2:min d4./fis a8:maj9^7 | s1
  \repeat unfold 2 { e2:min d4./fis a8 | s1 }
  s1 | e2:min b4.:min7 a2
  \repeat unfold 6 {a8 s2 e2:min b4.:min7 a2:maj9^7 }
  a8 s2 e2:min r2 | s1
  \repeat unfold 7 { e2:min b4.:min7 a8:maj9^7 s2 a2 }
  e2:min b4.:min7 a8:maj9^7 | s4. a2 a8:maj9^7 | s4. a4 s4.
  \repeat unfold 3 { e2:min d4./fis a8 | s1 }
  e2:min d4./fis a8 | s4. a2 a8:maj9^7 | s4. a2 s8 |
  e2:min b4.:min7 a8:maj9^7 | s4. a2 a8:maj9^7 |
  e2:min b4:min7 a4:maj9^7 | a4.:maj9^7 a8 s2
  e2:min b4:min7 a4:maj9^7 | s4. a2 s8 |
  e2:min b4.:min7 a8:maj9^7 | s1 | s4. a8 s2 |
  \repeat unfold 4 {e2:min b4.:min7 a8:maj9^7 | s4. a8 s2}
  e2:min b4.:min7 a8:maj9^7 | s4. a8 s4. | a8:maj9^7  | s4. a2 s8 | r1
}

text = \lyricmode {
  Ooh ee ooh | Ah | ooh ee ooh | So sweet. | I give you kiss -- es in the |
  back -- seat. | I whis -- per se -- crets in the | back -- beat. |
  You make me cry, you make me | hap -- py Hap | py. Leave my lip |
  stick on the cig -- a -- rette. | Just toss it, and you |
  tomp it out oh, oh. | In -- hal -- in' | wis -- key when you kiss my neck. |
  we've been hurt -- in', but it's | hap -- py hour.  Oh, oh |
  They could -- n't have | me, ah. | and they nev -- er will. |
  And some -- times I hold | you clos -- er just | to know you're real |
  Ah. | Wheels in the grav | el. | Da -- vis in my bones. |
  Some -- times I take | the day off just | to turn you on. | On, on |
  Hon -- ey, hon -- ey, | I could be your | bod -- y -- guard.  Hey | Oh, |
  hon -- ey, hon -- ey | I could be your | Kev -- lar.  Huh | Oh, |
  hon -- ey, hon -- ey | I could be your | life guard.  Huh | Ooh, |
  hon -- ey, hon -- ey, | you should let me ride | shot -- gun shot |
  gun.  Oh, oh | Be your | best friend. | I pro -- tect you in the | mosh pit. |
  And I'll de -- fend you in the | gos -- sip, |
  You know how peo -- ple like to | start shit and pop | shit.  I don't like |
  the way she's look -- in' at you. | Some -- one bet -- ter |
  hold me back, oh oh | Charg -- in' ten | for a dou -- ble and I'm talk |
  in'.  I'm 'bout to lose it. | turn a -- round and John Wayne that | ass. |
  They could -- n't catch | you.  Ah. | And they nev -- er will. |
  And some -- times I hold | you clos -- er just | to know you're real. | Ah. |
  Tell me your prob | lems.  I got | you.  I take how you feel. | Mm. |
  I show you an ex | it when you're rest | less I take the wheel. | Ooh. oh |
  Hon -- ey, hon -- ey, | You could be my | bod -- y -- guard.  Huh | Ooh, |
  hon -- ey, hon -- ey | Will you let me ride |
  shot -- gun, shot | gun.  Oh, oh | Oh | Oh | Oh | Oh | I could be your |
  bod -- y -- guard. | Please let me be your | Kev -- lar. |
  Ba -- by, let me be your | life guard. | Would you let me ride |
  shot -- gun, shot | gun. Oh, oh |
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff \context Voice = "vocal" \melody
    \new Lyrics \lyricsto "vocal" \text
    \new PianoStaff <<
      %\new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout { }
  \midi { }
}
