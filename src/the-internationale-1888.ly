%% SPDX-FileCopyrightText: 2026 Yiyu Zhou <yiyu@yiyuzhou.io>
%%
%% SPDX-License-Identifier: 0BSD OR CC0-1.0

\version "2.25.27"

\header {
  title = "L'INTERNATIONALE"
  poet = "Musique de Degeyter."
  composer = "Paroles d'Eugène Pottier"
  pdfcomposer = "Pierre Degeyter"
}

global = {
  \time 2/4
  \key c \major
  \tempo \markup \normal-weight \italic "Marche"
}

dimText = -\tweak DynamicTextSpanner.text "Dim."
          -\tweak DynamicTextSpanner.style #'none \dim

melody = \relative c'' {
  \global
  \clef treble
  \dynamicUp
  \autoBeamOff
  \segnoMark 1
  r4 r8 g8\p | c4. b8 | d8 c g e | a2( | f4) r8 a8 | \break
  d4. c8 | b8[ a g f] | e2 | r4 r8 g8 | c4. b8 | d8[ c] g[ e] | \break
  a2 | f4 d'8[ c] | b4. d8 | f4.\f b,8 | c2 | r4 e8\p[ d] | b2 | \break
  a8[ b] c[ a] | b2 | g4 f8[ g] | a4. a8 | d4. c8 | \break
  b2 | r4 r8 d8 | d4.\f b8 | g8[ g] f[ g] | e'2 | r8 a,[ b c] | \break
  b4 d | c4 a | g2 | r4\ff e'8.[^\markup \italic "Refrain plus gai" d16] |
  c2 | g4. f8 | a2( | \break
  f4) d'8.[ c16] | b2 | a4 aes | g2\p | r4 g4 | e'2\f | d4. a8 | \break
  c2 | b4 r8 b8 | a4. g8 | a4. d8 | d2 | r4 e8.[ d16] | c2 | \break
  g4. f8 | a2 | f8 r d'[ c] | b2 | a4. g8 | e'2\p | r4 r8 e8\f\dimText |
  g2 | \break
  f4 e | a,4_( b8 c) | e4 f | e4 a, | d4. c8 | c2\!
  \textEndMark \markup \musicglyph "scripts.segno"
  \bar "|."
}

text = \lyricmode {
  De -- bout, les dam -- nés de la ter -- re.
  De -- bout, les for -- çats de la faim.
  La rai -- son tonne en son cra -- tè -- re_;
  c'est l'é -- rup -- tion de la fin.
  Du pas -- sé, fai -- sons ta -- ble ra -- se.
  Foule es -- clave, de -- bout, de -- bout_!
  Le mon -- de va chan -- ger, de ba-se,
  nous ne som -- mes rien Soy -- ons tout.

  C'est la lut -- te fi -- na -- le,
  Grou -- pons -- nous et de -- main
  l'In -- ter -- na -- tio -- na -- le
  se -- ra le genre hu -- main.

  C'est la lut -- te fi -- na -- le.
  Grou -- pons -- nous et de -- main
  l'In -- ter -- na -- tio -- na -- a -- a -- le
  se -- ra le genre hu -- main.
}

\score {
  <<
    \new Staff \context Voice = "vocal" \melody
    \new Lyrics \with { ignoreMelismata = ##t } \lyricsto "vocal" \text
  >>
  \layout {
    \context {
      \Lyrics
      \override LyricHyphen.minimum-distance = #1
    }
  }
  \midi { \tempo 4 = 112 }
}

\pageBreak

\markup \fill-line {
  \center-column {
    "REFRAIN"
    \vspace #1
    \line {
      \vcenter \column {
        "C'est la lutte finale :"
        "Groupons-nous, et demain,"
        "L'Internationale"
        "Sera le genre humain."
      }
      \hspace #6
      \vcenter \right-brace #55
      \hspace #2
      \vcenter \italic "bis."
    }
  }
}

\markup \vspace #2

\markup \fill-line {
  \center-column {
    "DEUXIÈME COUPLET."
    \vspace #1
    \column {
      "Il n'est pas de sauveurs suprêmes :"
      "Ni Dieu, ni César, ni tribun,"
      "Producteurs, sauvons-nous nous-mêmes !"
      "Décrétons le salut commun !"
      "Pour que le voleur rende gorge,"
      "Pour tirer l'esprit du cachot,"
      "Soufflons nous-mêmes notre forge,"
      "Battons le fer quand il est chaud !"
    }
  }
  \center-column {
    "TROISIÈME COUPLET."
    \vspace #1
    \column {
      "L'Etat comprime et la loi triche ;"
      "L'impôt saigne le malheureux ;"
      "Nul devoir ne s'impose au riche ;"
      "Le droit du pauvre est un mot creux."
      "C'est assez languir en tutelle,"
      "L'Egalité veut d'autres lois ;"
      "« Pas de droits sans devoirs, dit-elle,"
      "« Egaux, pas de devoirs sans droits ! »"
    }
  }
}

\markup \vspace #2

\markup \fill-line {
  \center-column {
    "QUATRIÈME COUPLET."
    \vspace #1
    \column {
      "Hideux dans leur apothéose,"
      "Les rois de la mine et du rail"
      "Ont-ils jamais fait autre chose"
      "Que dévaliser le travail ?"
      "Dans les coffres-forts de la bande"
      "Ce qu'il a créé s'est fondu."
      "En décrétant qu'on le lui rende"
      "Le peuple ne veut que son dû."
    }
  }
  \center-column {
    "CINQUIÈME COUPLET"
    \vspace #1
    \column {
      "Les Rois nous soulaient de fumées,"
      "Paix entre nous, guerre aux tyrans !"
      "Appliquons la grève aux armées,"
      "Crosse en l'air et rompons les rangs !"
      "S'ils s'obstinent, ces cannibales,"
      "A faire de nous des héros,"
      "Ils sauront bientôt que nos balles"
      "Sont pour nos propres généraux."
    }
  }
}

\markup \vspace #2

\markup \fill-line {
  \center-column {
    "SIXIÈME COUPLET"
    \vspace #1
    \column {
      "Ouvriers, paysans, nous sommes"
      "Le grand parti des travailleurs ;"
      "La terre n'appartient qu'aux hommes,"
      "L'oisif ira loger ailleurs."
      "Combien de nos chairs se repaissent !"
      "Mais, si les corbeaux, les vautours,"
      "Un de ces matins disparaissent,"
      "Le soleil brillera toujours !"
    }
  }
}
