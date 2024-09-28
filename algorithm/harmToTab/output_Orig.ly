\version "2.24" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "Untitled score"   
  
  } 
 
\score  { 
 
      << \new Staff  = ViolingI { \break
             \clef "treble" 
             \key c \major 
             \time 4/4
             a' 4  
             s 4  
             a' 4  
             s 4  
             < a'  e'  > 4   
             s 4  
             e' 4  
             \bar "|"  %{ end measure 1 %} 
             < d''  a'  b'  > 4   
             s 4  
             < d''  a'  > 4   
             s 4  
             < d''  f''  b'  > 4   
             s 4  
             < d''  f''  b'  > 4   
             \bar "|"  %{ end measure 2 %} 
             < a'  e''  c''  > 4   
             s 4  
             < e'  b'  c'  > 4   
             s 4  
             < cis''  e''  a'  > 4   
             s 4  
             < g'  d''  e'  > 4   
             \bar "|"  %{ end measure 3 %} 
             \break
             < c'  e'  > 4   
             s 4  
             < b'  e''  fis'  > 4   
             s 4  
             < d''  a'  > 4   
             s 4  
             < g''  a'  > 4   
             \bar "|"  %{ end measure 4 %} 
             < g'  b'  e'  > 4   
             s 4  
             < g'  e'  > 4   
             s 4  
             < g'  b'  d''  e'  > 4   
             s 4  
             < b'  g'  > 4   
             \bar "|"  %{ end measure 5 %} 
             < d''  a'  fis'  e'  > 4   
             s 4  
             < a'  e'  > 4   
             s 4  
             < a'  c''  fis'  > 4   
             s 4  
             < a'  c''  fis'  > 4   
             \bar "|"  %{ end measure 6 %} 
             \break
             < b'  g'  e'  > 4   
             s 4  
             < b'  dis''  fis''  g'  > 4   
             s 4  
             < gis'  b'  e''  f'  > 4   
             s 4  
             < d''  fis''  a''  b'  > 4   
             \bar "|"  %{ end measure 7 %} 
             < b'  fis''  g'  > 4   
             s 4  
             < fis'  b'  g'  cis''  > 4   
             s 4  
             < e''  a''  b'  > 4   
             s 4  
             < d''  e'  > 4   
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             s 4  
             < c'  a'  > 4   
             s 4  
             < c'  a'  e'  > 4   
             s 4  
             < g'  e'  > 4   
             \bar "|"  %{ end measure 9 %} 
             \pageBreak
             \break
             < d''  f''  a''  b'  > 4   
             s 4  
             < d''  a'  f''  > 4   
             s 4  
             < d''  f''  a''  b'  > 4   
             s 4  
             < d''  f''  a''  b'  > 4   
             \bar "|"  %{ end measure 10 %} 
             < c'  a'  e'  > 4   
             s 4  
             < a''  e''  b'  c''  > 4   
             s 4  
             < a'  e''  cis''  > 4   
             s 4  
             < d''  a'  e''  g'  > 4   
             \bar "|"  %{ end measure 11 %} 
             < e'  c'  > 4   
             s 4  
             < d''  e''  fis'  b'  > 4   
             s 4  
             < a'  d''  e'  > 4   
             s 4  
             < d''  a'  f'  > 4   
             \bar "|"  %{ end measure 12 %} 
             \break
             < e''  g'  > 4   
             s 4  
             < cis''  g'  e'  > 4   
             s 4  
             < b'  g'  e'  > 4   
             s 4  
             < b'  g'  e'  > 4   
             \bar "|"  %{ end measure 13 %} 
             < a'  c''  e''  fis'  > 4   
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             < a'  c''  fis'  > 4   
             s 4  
             < a'  c''  fis'  > 4   
             \bar "|"  %{ end measure 14 %} 
             < b'  d''  g'  > 4   
             s 4  
             < d''  fis''  b'  > 4   
             s 4  
             < gis'  b'  d''  e'  > 4   
             s 4  
             < d''  e''  b'  a''  > 4   
             \bar "|"  %{ end measure 15 %} 
             \break
             < b'  e''  g'  > 4   
             s 4  
             < dis''  fis''  b'  cis''  > 4   
             s 4  
             < a'  d''  e'  > 4   
             s 4  
             < b'  d''  e'  > 4   
             \bar "|"  %{ end measure 16 %} 
             < gis'  b'  e'  > 4   
             s 4  
             < gis'  b'  e'  > 4   
             s 4  
             < eis'  gis'  b'  cis'  > 4   
             s 4  
             < a'  eis'  cis''  > 4   
             \bar "|"  %{ end measure 17 %} 
             \pageBreak
             \break
             < a'  fis'  cis''  > 4   
             s 4  
             < e'  gis'  cis'  > 4   
             s 4  
             < fisis'  cis''  dis'  > 4   
             s 4  
             < dis'  cis''  b'  fisis'  > 4   
             \bar "|"  %{ end measure 18 %} 
             < b'  dis''  gis'  > 4   
             s 4  
             < dis''  ais''  b'  eis''  > 4   
             s 4  
             < dis''  fis''  a''  b'  > 4   
             s 4  
             < fis'  a'  cis''  dis'  > 4   
             \bar "|"  %{ end measure 19 %} 
             < a'  cis'  e'  > 4   
             s 4  
             < c'  fis'  b'  e'  > 4   
             s 4  
             < e''  g''  bes''  c''  > 4   
             s 4  
             < g'  bes'  d''  e'  > 4   
             \bar "|"  %{ end measure 20 %} 
             \break
             < ais'  ees''  g''  cis''  > 4   
             s 4  
             < gis'  b'  d''  e'  > 4   
             s 4  
             < a'  c''  ees''  f'  > 4   
             s 4  
             < ais'  cis''  e''  fis'  > 4   
             \bar "|"  %{ end measure 21 %} 
             < d''  f''  g''  b'  > 4   
             s 4  
             < b'  d''  f''  g'  > 4   
             s 4  
             < d''  b'  g'  > 4   
             s 4  
             < b'  e''  g'  > 4   
             \bar "|"  %{ end measure 22 %} 
             \break
             < c''  e'  > 4   
             s 4  
             < c''  e'  > 4   
             s 4  
             < e''  bes''  c''  > 4   
             s 4  
             < a'  e''  c''  > 4   
             \bar "|"  %{ end measure 23 %} 
             < d''  a'  fis''  > 4   
             s 4  
             < fis'  a'  c''  d'  > 4   
             s 4  
             < fis'  a'  c''  d'  > 4   
             s 4  
             < bes'  d''  g'  > 4   
             \bar "|"  %{ end measure 24 %} 
             \pageBreak
             \break
             < d''  b'  gis''  > 4   
             s 4  
             < gis'  f''  c''  > 4   
             s 4  
             < d''  f''  a''  b'  > 4   
             s 4  
             < e''  b''  c''  > 4   
             \bar "|"  %{ end measure 25 %} 
             < d''  a'  b'  e'  > 4   
             s 4  
             < f'  gis'  c''  d'  > 4   
             s 4  
             < f'  a'  c''  d'  > 4   
             s 4  
             < gis'  d'  f'  > 4   
             \bar "|"  %{ end measure 26 %} 
             \break
             < d''  b'  f'  e'  > 4   
             s 4  
             < aes'  d'  b'  f'  > 4   
             s 4  
             < d''  f''  a''  b'  > 4   
             s 4  
             < d''  b'  f'  > 4   
             \bar "|"  %{ end measure 27 %} 
             < a'  c''  f'  > 4   
             s 4  
             < c''  ees''  ges''  aes'  > 4   
             s 4  
             < d'  c''  bes'  f'  > 4   
             s 4  
             < bes'  des''  f''  g'  > 4   
             \bar "|"  %{ end measure 28 %} 
             < fis'  ais'  cis'  > 4   
             s 4  
             < e'  g'  a'  cis'  > 4   
             s 4  
             < dis'  fis'  b'  cis''  > 4   
             s 4  
             < b'  dis''  fis''  gis'  > 4   
             \bar "|"  %{ end measure 29 %} 
             \break
             < d''  b'  g'  > 4   
             s 4  
             < c''  g'  e''  > 4   
             s 4  
             < d''  b'  g'  > 4   
             s 4  
             g' 4  
             \bar "|"  %{ end measure 30 %} 
             < fis'  a'  c''  d'  > 4   
             s 4  
             < c'  g'  e'  > 4   
             s 4  
             < fis'  a'  c''  d'  > 4   
             s 4  
             < dis'  fis'  > 4   
             \bar "|"  %{ end measure 31 %} 
             \pageBreak
             \break
             < a''  e''  b'  c''  > 4   
             s 4  
             < e''  g''  b''  c''  > 4   
             s 4  
             < ais''  g''  b'  cis''  > 4   
             s 4  
             < dis''  fis'  c''  > 4   
             \bar "|"  %{ end measure 32 %} 
             < b'  g'  e'  > 4   
             s 4  
             < a'  c''  e'  > 4   
             s 4  
             < d''  gis'  f'  e'  > 4   
             s 4  
             < a'  dis''  fis'  e'  > 4   
             \bar "|"  %{ end measure 33 %} 
             \break
             < ais'  cis''  g'  e'  > 4   
             s 4  
             < ais'  cis''  g'  e'  > 4   
             s 4  
             < b'  g'  e'  > 4   
             s 4  
             < b'  g'  e'  > 4   
             \bar "|"  %{ end measure 34 %} 
             < g'  bes'  d''  e'  > 4   
             s 4  
             < e''  g''  bes''  c''  > 4   
             s 4  
             < g'  c''  f'  e'  > 4   
             s 4  
             < e''  g''  bes''  c''  > 4   
             \bar "|"  %{ end measure 35 %} 
             \break
             < a'  f'  > 4   
             s 4  
             < a'  c''  f'  > 4   
             s 4  
             < a'  f'  > 4   
             s 4  
             < g''  a'  > 4   
             \bar "|"  %{ end measure 36 %} 
             < d''  bes'  f'  > 4   
             s 4  
             < c'  d'  bes'  > 4   
             s 4  
             < d'  bes'  > 4   
             s 4  
             < d''  g'  > 4   
             \bar "|"  %{ end measure 37 %} 
             \pageBreak
             \break
             < c''  a'  > 4   
             s 4  
             < a'  c'  > 4   
             s 4  
             < g''  bes''  c''  > 4   
             s 4  
             < c''  f''  g'  > 4   
             \bar "|"  %{ end measure 38 %} 
             < a'  f''  c''  > 4   
             s 4  
             < g'  c''  e'  > 4   
             s 4  
             < f''  bes''  c''  > 4   
             s 4  
             < f'  c''  d'  > 4   
             \bar "|"  %{ end measure 39 %} 
             \break
             < c''  f''  g'  > 4   
             s 4  
             bes' 4  
             s 4  
             d' 4  
             s 4  
             d' 4  
             \bar "|"  %{ end measure 40 %} 
             < c'  a'  f'  > 4   
             s 4  
             < c'  a'  f'  > 4   
             s 4  
             < a''  bes'  f''  c''  > 4   
             s 4  
             < c'  f'  > 4   
             \bar "|"  %{ end measure 41 %} 
             < c'  d'  b'  f'  > 4   
             s 4  
             < c'  d'  b'  f'  > 4   
             s 4  
             < c'  d'  a'  b'  > 4   
             s 4  
             < c'  d'  b'  > 4   
             \bar "|"  %{ end measure 42 %} 
             < c'  a'  bes'  e'  > 4   
             s 4  
             s 4  
             < c''  e''  g''  bes'  > 4   
             s 4  
             \bar "|"  %{ end measure 43 %} 
             \break
             < a'  c''  e''  f'  > 4   
             s 4  
             < a'  c''  e''  f'  > 4   
             s 4  
             < f'  a'  c''  d'  > 4   
             s 4  
             < c'  a'  f'  > 4   
             \bar "|"  %{ end measure 44 %} 
             < c''  e''  bes'  > 4   
             s 4  
             < c'  a'  bes'  e'  > 4   
             s 4  
             < c'  bes'  d'  a'  > 4   
             s 4  
             < c'  a'  bes'  e'  > 4   
             \bar "|"  %{ end measure 45 %} 
             < c'  a'  f'  > 4   
             s 4  
             < a'  c''  d'  > 4   
             s 4  
             < f'  a'  c''  d'  > 4   
             s 4  
             < c'  a'  f'  > 4   
             \bar "|"  %{ end measure 46 %} 
             < c'  d'  bes'  f'  > 4   
             s 4  
             < c'  d'  bes'  f'  > 4   
             s 4  
             < c''  e''  g''  bes'  > 4   
             s 4  
             \bar "|"  %{ end measure 47 %} 
             < a'  c'  > 4   
             s 4  
             < a'  c'  > 4   
             s 4  
             s 4  
             < a'  c'  > 4   
             \bar "|"  %{ end measure 48 %} 
             < a'  c''  d'  > 4   
             s 4  
             < a'  c''  d'  > 4   
             s 4  
             s 4  
             \bar "|"  %{ end measure 49 %} 
             \pageBreak
             \break
             < a'  e''  c''  > 4   
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             < e'  a'  c'  > 4   
             \bar "|"  %{ end measure 50 %} 
             < d'  a'  c''  e'  > 4   
             s 4  
             < d'  a'  c''  e'  > 4   
             s 4  
             < a'  c''  d'  > 4   
             s 4  
             < a'  c''  d'  > 4   
             \bar "|"  %{ end measure 51 %} 
             < e'  a'  c'  > 4   
             s 4  
             < e'  a'  c'  > 4   
             s 4  
             < e'  a'  c'  > 4   
             s 4  
             \bar "|"  %{ end measure 52 %} 
             < e'  a'  c'  > 4   
             s 4  
             < e'  a'  c'  > 4   
             s 4  
             < d'  a'  c''  e'  > 4   
             s 4  
             < a'  e''  c''  > 4   
             \bar "|"  %{ end measure 53 %} 
             \break
             < a'  e''  b'  g'  > 4   
             s 4  
             < g'  b'  d''  e'  > 4   
             s 4  
             < b'  d''  g'  > 4   
             s 4  
             < e''  b'  > 4   
             \bar "|"  %{ end measure 54 %} 
             < g'  b'  e'  > 4   
             s 4  
             < b'  dis''  fis''  a'  > 4   
             s 4  
             < d''  f''  b'  gis''  > 4   
             s 4  
             < f''  b'  gis''  > 4   
             \bar "|"  %{ end measure 55 %} 
             < a''  fis''  b'  c''  > 4   
             s 4  
             < f''  b'  gis''  > 4   
             s 4  
             < g''  e''  b'  bes''  > 4   
             s 4  
             < g'  bes'  b'  cis'  > 4   
             \bar "|"  %{ end measure 56 %} 
             < d''  b'  gis''  > 4   
             s 4  
             < g'  bes'  b'  cis'  > 4   
             s 4  
             < a''  c''  fis''  b'  > 4   
             s 4  
             < a''  b'  c''  ees''  > 4   
             \bar "|"  %{ end measure 57 %} 
             < e''  ais''  b'  cis''  > 4   
             s 4  
             < ais''  g''  b'  cis''  > 4   
             s 4  
             < e''  g''  ais''  b'  > 4   
             s 4  
             < e'  g'  b'  cis'  > 4   
             \bar "|"  %{ end measure 58 %} 
             \break
             < e''  g''  ais''  b'  > 4   
             s 4  
             < e'  g'  b'  cis'  > 4   
             s 4  
             < ais''  e''  b'  cis''  > 4   
             s 4  
             < ais''  g''  b'  cis''  > 4   
             \bar "|"  %{ end measure 59 %} 
             < b'  gis'  > 4   
             s 4  
             < b'  gis'  > 4   
             s 4  
             s 4  
             < b'  gis'  > 4   
             \bar "|"  %{ end measure 60 %} 
             < e''  b'  gis''  > 4   
             s 4  
             < e''  b'  gis''  > 4   
             s 4  
             s 4  
             \bar "|"  %{ end measure 61 %} 
             < b'  fis''  gis'  > 4   
             s 4  
             s 4  
             < b'  fis''  gis'  > 4   
             s 4  
             \bar "|"  %{ end measure 62 %} 
             < e''  b'  gis''  > 4   
             s 4  
             < e''  b'  gis''  > 4   
             s 4  
             < b'  fis''  gis'  > 4   
             s 4  
             < gis'  b'  cis'  > 4   
             \bar "|"  %{ end measure 63 %} 
             < e''  b'  gis''  > 4   
             s 4  
             < gis'  b'  cis'  > 4   
             s 4  
             s 4  
             \bar "|"  %{ end measure 64 %} 
             \pageBreak
             \break
             < e''  b'  gis''  > 4   
             s 4  
             < gis'  b'  cis'  > 4   
             s 4  
             < b'  gis'  > 4   
             s 4  
             \bar "|"  %{ end measure 65 %} 
             < b'  gis'  > 4   
             s 4  
             < b'  gis'  > 4   
             s 4  
             < b'  dis''  gis'  > 4   
             s 4  
             \bar "|"  %{ end measure 66 %} 
             < d''  g''  b'  > 4   
             s 4  
             < d''  g''  b'  > 4   
             s 4  
             < d''  f''  b'  > 4   
             s 4  
             \bar "|"  %{ end measure 67 %} 
             < dis''  fis''  b'  > 4   
             s 4  
             < dis''  fis''  b'  > 4   
             s 4  
             < dis''  fis''  b'  > 4   
             s 4  
             \bar "|"  %{ end measure 68 %} 
             \break
             < e''  gis'  > 4   
             s 4  
             < e''  gis'  > 4   
             s 4  
             < gis'  e''  > 4   
             s 4  
             < a'  e''  cis''  > 4   
             \bar "|"  %{ end measure 69 %} 
             < e''  b'  gis''  > 4   
             s 4  
             s 4  
             < e''  b'  gis''  > 4   
             s 4  
             \bar "|"  %{ end measure 70 %} 
             < e''  b'  gis''  > 4   
             s 4  
             < a''  e''  b'  cis''  > 4   
             s 4  
             < a''  fis''  b'  cis''  > 4   
             s 4  
             < ais'  e''  fisis''  cis''  > 4   
             \bar "|"  %{ end measure 71 %} 
             < a'  c''  e''  fis'  > 4   
             s 4  
             < a'  f''  c''  > 4   
             s 4  
             < dis''  f''  a''  b'  > 4   
             s 4  
             < gis'  b'  dis''  e'  > 4   
             \bar "|"  %{ end measure 72 %} 
             \break
             < g'  bes'  d''  e'  > 4   
             s 4  
             < bes'  g'  ees''  > 4   
             s 4  
             < cis''  ees''  g''  a'  > 4   
             s 4  
             < fis'  a'  cis''  d'  > 4   
             \bar "|"  %{ end measure 73 %} 
             < d'  bes'  f'  > 4   
             s 4  
             < d'  bes'  f'  > 4   
             s 4  
             < d'  bes'  f'  > 4   
             s 4  
             < d'  bes'  > 4   
             \bar "|"  %{ end measure 74 %} 
             d' 4  
             s 4  
             < d'  bes'  > 4   
             s 4  
             < d'  bes'  f'  > 4   
             s 4  
             < d'  bes'  f'  > 4   
             \bar "|"  %{ end measure 75 %} 
             \pageBreak
             \break
             a' 4  
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             a' 4  
             s 4  
             < a'  e''  c''  > 4   
             \bar "|"  %{ end measure 76 %} 
             < d''  a'  > 4   
             s 4  
             < a'  d''  f'  > 4   
             s 4  
             < d''  a'  > 4   
             s 4  
             < a'  d''  f'  > 4   
             \bar "|"  %{ end measure 77 %} 
             \break
             < a'  e''  > 4   
             s 4  
             < a'  e''  > 4   
             s 4  
             < a'  e''  > 4   
             s 4  
             < e''  gis''  a'  > 4   
             \bar "|"  %{ end measure 78 %} 
             < a'  e''  > 4   
             s 4  
             < a'  e''  > 4   
             s 4  
             < d''  a'  > 4   
             s 4  
             < a'  e''  c''  > 4   
             \bar "|"  %{ end measure 79 %} 
             \break
             < a'  c'  > 4   
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             a' 4  
             s 4  
             < dis''  a'  c''  > 4   
             \bar "|"  %{ end measure 80 %} 
             < a'  c'  > 4   
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             < a'  e''  > 4   
             s 4  
             < a'  e''  c''  > 4   
             \bar "|"  %{ end measure 81 %} 
             < c'  a'  e'  > 4   
             s 4  
             < e'  g'  b'  c'  > 4   
             s 4  
             < c'  gis'  e'  > 4   
             s 4  
             < c'  gis'  d'  e'  > 4   
             \bar "|"  %{ end measure 82 %} 
             \pageBreak
             \break
             < a'  c''  dis''  f'  > 4   
             s 4  
             < dis'  a'  des''  f'  > 4   
             s 4  
             < a'  b'  dis''  f'  > 4   
             s 4  
             < a'  b'  dis''  f'  > 4   
             \bar "|"  %{ end measure 83 %} 
             bes' 4  
             s 4  
             g' 4  
             s 4  
             d' 4  
             s 4  
             bes' 4  
             \bar "|"  %{ end measure 84 %} 
             < e'  a'  c'  > 4   
             s 4  
             < e'  a'  c'  > 4   
             s 4  
             s 4  
             \bar "|"  %{ end measure 85 %} 
             < e'  gis'  b'  d'  > 4   
             s 4  
             < e'  gis'  b'  d'  > 4   
             s 4  
             s 4  
             \bar "|"  %{ end measure 86 %} 
             \break
             < a'  c'  > 4   
             s 4  
             c' 4  
             s 4  
             e' 4  
             s 4  
             e' 4  
             \bar "|"  %{ end measure 87 %} 
             a' 4  
             s 4  
             c' 4  
             s 4  
             e' 4  
             s 4  
             e' 4  
             \bar "|"  %{ end measure 88 %} 
             \break
             a' 4  
             s 4  
             fis' 4  
             s 4  
             a' 4  
             s 4  
             fis' 4  
             \bar "|"  %{ end measure 89 %} 
             a' 4  
             s 4  
             fis' 4  
             s 4  
             a' 4  
             s 4  
             fis' 4  
             \bar "|"  %{ end measure 90 %} 
             \pageBreak
             \break
             < a'  e''  c''  > 4   
             s 4  
             < a'  c''  e''  fis'  > 4   
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             < d''  a'  e''  c''  > 4   
             \bar "|"  %{ end measure 91 %} 
             < a'  e''  c''  > 4   
             s 4  
             < a'  c''  e''  fis'  > 4   
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             < d''  a'  e''  c''  > 4   
             \bar "|"  %{ end measure 92 %} 
             \break
             < a'  e''  c''  > 4   
             s 4  
             < a'  c''  e''  fis'  > 4   
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             < a'  e''  c''  > 4   
             \bar "|"  %{ end measure 93 %} 
             e' 4  
             s 4  
             e' 4  
             s 4  
             e' 4  
             s 4  
             e' 4  
             \bar "|"  %{ end measure 94 %} 
             \break
             e' 4  
             s 4  
             e' 4  
             s 4  
             a' 4  
             s 4  
             c' 4  
             \bar "|"  %{ end measure 95 %} 
             a' 4  
             s 4  
             < a'  e''  c''  > 4   
             s 4  
             < d'  a'  f'  > 4   
             s 4  
             < d''  f''  a''  b'  > 4   
             \bar "|"  %{ end measure 96 %} 
             < a'  e''  c''  > 4   
             s 4  
             s 4  
             s 4  
             \bar "|"  %{ end measure 97 %} 
             a' 4  
             s 4  
             s 4  
             \bar "|."  %{ end measure 98 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"ViolingI"  
              "i" 
              "i" 
              "i4" 
              "v" 
              "ii42" 
              "iv4" 
              "iio" 
              "iio" 
              "i" 
              "III7" 
              "I" 
              "v7" 
              "III" 
              "v#874" 
              "iv4" 
              "i7" 
              "i" 
              "i" 
              "i7" 
              "III" 
              "bVII742" 
              "iv4" 
              "iio" 
              "iio" 
              "i" 
              "III+7#53" 
              "Ib874#2" 
              "v7" 
              "III7" 
              "III#542" 
              "iv74" 
              "i7" 
              "i" 
              "i6" 
              "i6" 
              "v" 
              "iiø7" 
              "iv64" 
              "iiø7" 
              "iiø7" 
              "i6" 
              "i742" 
              "I" 
              "v652" 
              "III" 
              "ii#8764" 
              "iv74" 
              "iv6" 
              "i6" 
              "vio#63" 
              "i" 
              "i" 
              "iiø7" 
              "iv" 
              "iio" 
              "iio" 
              "III" 
              "v" 
              "I75#3" 
              "v743" 
              "i6" 
              "V5#3#2" 
              "bvii74" 
              "i7" 
              "I" 
              "I" 
              "VI7#5#3" 
              "IV+#8#64" 
              "iv" 
              "i" 
              "II7#3" 
              "bVII+76#3" 
              "v" 
              "bVII#7#43" 
              "bVII7" 
              "iiø7" 
              "bVI6" 
              "bI#7#4#3" 
              "bI75#3" 
              "iiiø7" 
              "viø7" 
              "IIIb753" 
              "bIV75#3" 
              "IV75#3" 
              "V65" 
              "V7" 
              "V" 
              "iii6" 
              "I6" 
              "I6" 
              "Ib73" 
              "vi" 
              "II64" 
              "II75#3" 
              "II75#3" 
              "v" 
              "#vo6" 
              "iv74" 
              "viiø7" 
              "I7" 
              "iii754" 
              "v7#4b3" 
              "v75b3" 
              "#iob84bb3" 
              "vio7#52" 
              "vio#6b53" 
              "viø#8753" 
              "vio6#4" 
              "III" 
              "bV75#3" 
              "bVI763" 
              "ivø7b53" 
              "#III64" 
              "V#8653" 
              "VI#7#6#3" 
              "#iv7" 
              "III" 
              "bVI64" 
              "III" 
              "iii" 
              "bVII7" 
              "bVI" 
              "bVII7" 
              "vii" 
              "iv742" 
              "bVI7" 
              "#ivb87b62" 
              "vii#65" 
              "i" 
              "iv64" 
              "I7#3b2" 
              "viio#742" 
              "#ivob864b3" 
              "#ivob864b3" 
              "i" 
              "i" 
              "iiiø7b53" 
              "Ib753" 
              "I632" 
              "Ib753" 
              "III" 
              "III" 
              "III" 
              "v7" 
              "bVI64" 
              "bVI72" 
              "bVI6" 
              "iv5" 
              "iii" 
              "iii6" 
              "v7" 
              "i74" 
              "I6" 
              "V6" 
              "iv74" 
              "vi7" 
              "i74" 
              "iv" 
              "vi" 
              "vi" 
              "I64" 
              "I64" 
              "I752" 
              "i4" 
              "#ivo7b4b2" 
              "#ivo7b4b2" 
              "#iv7b6b2" 
              "#iv7b2" 
              "iii763" 
              "V42" 
              "I7" 
              "I7" 
              "vi7" 
              "I64" 
              "V42" 
              "iii763" 
              "IV762" 
              "iii763" 
              "I64" 
              "vi7" 
              "vi7" 
              "I64" 
              "IV742" 
              "IV742" 
              "V42" 
              "iii6" 
              "iii6" 
              "iii6" 
              "iv7" 
              "iv7" 
              "i" 
              "i" 
              "i" 
              "i6" 
              "i752" 
              "i752" 
              "iv7" 
              "iv7" 
              "i6" 
              "i6" 
              "i6" 
              "i6" 
              "i6" 
              "i752" 
              "i" 
              "i632" 
              "i7" 
              "III" 
              "i4" 
              "i" 
              "V42" 
              "iiio6b5b3" 
              "iii6b5" 
              "iio75b2" 
              "iii6b5" 
              "ib64" 
              "viob77b5" 
              "iiio6" 
              "viob77b5" 
              "iio75b2" 
              "ivo7b4b2" 
              "#ivo7b4b2" 
              "#ivb87bb6b2" 
              "i#7b64" 
              "viø7b53" 
              "i#7b64" 
              "viø7b53" 
              "#ivob87b4b2" 
              "#ivb87bb6b2" 
              "iii" 
              "iii" 
              "iii" 
              "I64" 
              "I64" 
              "iii7" 
              "iii7" 
              "I64" 
              "I64" 
              "iii7" 
              "vi7" 
              "I64" 
              "vi7" 
              "I64" 
              "vi7" 
              "iii" 
              "iii" 
              "iii" 
              "iii" 
              "bIII#863" 
              "bIII#863" 
              "vo5b3" 
              "V" 
              "V" 
              "V" 
              "I6" 
              "I6" 
              "I6" 
              "IV" 
              "I64" 
              "I64" 
              "I64" 
              "IV742" 
              "ii752" 
              "#iio6b5b3" 
              "iiø7b53" 
              "bII6" 
              "Vø7b53" 
              "I7" 
              "iø7" 
              "bI6" 
              "IVø7" 
              "bVII#7#5#3" 
              "I6" 
              "I6" 
              "I6" 
              "I6" 
              "iii" 
              "I6" 
              "I6" 
              "I6" 
              "vii" 
              "vii" 
              "vii" 
              "vii" 
              "i4" 
              "i6" 
              "i4" 
              "i6" 
              "i5" 
              "i5" 
              "i5" 
              "i#75" 
              "i5" 
              "i5" 
              "iv4" 
              "i" 
              "i6" 
              "i" 
              "i" 
              "#ivob84b3" 
              "i6" 
              "i" 
              "i5" 
              "i" 
              "i6" 
              "III7" 
              "III+" 
              "III+#532" 
              "Ger65" 
              "#ivobb8b5b3" 
              "Fr43" 
              "Fr43" 
              "bii" 
              "bvii" 
              "iv" 
              "bii" 
              "i6" 
              "i6" 
              "V6#42" 
              "V6#42" 
              "i6" 
              "iii" 
              "v" 
              "v" 
              "i" 
              "iii" 
              "v" 
              "v" 
              "i" 
              "vi" 
              "i" 
              "vi" 
              "i" 
              "vi" 
              "i" 
              "vi" 
              "i" 
              "viø#8753" 
              "i" 
              "i543" 
              "i" 
              "viø#8753" 
              "i" 
              "i543" 
              "i" 
              "viø#8753" 
              "i" 
              "i" 
              "v" 
              "v" 
              "v" 
              "v" 
              "v" 
              "v" 
              "i" 
              "iii" 
              "i" 
              "i" 
              "iv" 
              "iiø7" 
              "i" 
              "i" 
               } 
              
        >>
      
  } 
 
\paper { }
\layout {
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t
  }
 }
 
