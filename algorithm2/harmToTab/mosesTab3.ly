\version "2.24" 
% \include "lilypond-book-preamble.ly"
    
% color = #(define-music-function (parser location color) (string?) % #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "Untitled score"   
  
  } 
 
\score  { 
 
      <<\new TabStaff = "Guitar Tab" {
\clef "tab" % Clef for tab staff
} 
             < d''  b'  a'  > 4   
             < d''  a'  > 4   
             < f'  b'  d''  > 4   
             < f'  b'  d''  > 4   
             \bar "|"  %{ end measure 2 %} 
             < c''  a'  e''  > 4   
             < e'  b'  c'  > 4   
             < e'  a'  cis'  > 4   
             < d'  e'  g'  > 4   
             \bar "|"  %{ end measure 3 %} 
             \break
             < e'  c'  > 4   
             < b'  fis''  e''  > 4   
             < d''  a'  > 4   
             < g''  a'  > 4   
             \bar "|"  %{ end measure 4 %} 
             < b'  g'  e''  > 4   
             < g'  e''  > 4   
             < d''  b'  g'  e''  > 4   
             < b'  g'  > 4   
             \bar "|"  %{ end measure 5 %} 
             \pageBreak
             \break
             < d''  e'  fis'  a'  > 4   
             < e'  a'  > 4   
             < a'  fis'  c'  > 4   
             < a'  fis'  c'  > 4   
             \bar "|"  %{ end measure 6 %} 
             < e'  b'  g'  > 4   
             < b'  fis''  g'  dis''  > 4   
             < b'  f''  gis'  e''  > 4   
             < d''  b'  fis''  a'  > 4   
             \bar "|"  %{ end measure 7 %} 
             \break
             < b'  fis''  g'  > 4   
             < b'  cis''  fis'  g'  > 4   
             < e'  b'  a'  > 4   
             < e'  d''  > 4   
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             < a'  c'  > 4   
             < e'  c'  a'  > 4   
             < e'  g'  > 4   
             \bar "|"  %{ end measure 9 %} 
             \pageBreak
             \break
             < d''  b'  a''  f''  > 4   
             < d''  a'  f''  > 4   
             < d''  b'  a''  f''  > 4   
             < d''  b'  a''  f''  > 4   
             \bar "|"  %{ end measure 10 %} 
             < e'  c'  a'  > 4   
             < a''  b'  c''  e''  > 4   
             < cis''  a'  e''  > 4   
             < d''  g'  a'  e''  > 4   
             \bar "|"  %{ end measure 11 %} 
             \break
             < e'  c''  > 4   
             < d''  b'  fis'  e''  > 4   
             < d''  a'  e''  > 4   
             < d''  f'  a'  > 4   
             \bar "|"  %{ end measure 12 %} 
             < e'  g'  > 4   
             < e'  cis''  g'  > 4   
             < e'  b'  g'  > 4   
             < e'  b'  g'  > 4   
             \bar "|"  %{ end measure 13 %} 
             \pageBreak
             \break
             < fis''  c''  a'  e''  > 4   
             < c''  a'  e''  > 4   
             < fis''  c''  a'  > 4   
             < fis''  c''  a'  > 4   
             \bar "|"  %{ end measure 14 %} 
             < d''  b'  g''  > 4   
             < d''  b'  fis''  > 4   
             < d''  b'  gis''  e''  > 4   
             < d''  b'  a''  e''  > 4   
             \bar "|"  %{ end measure 15 %} 
             \break
             < b'  g''  e''  > 4   
             < b'  cis''  fis''  dis''  > 4   
             < d''  a'  e''  > 4   
             < e'  b'  d''  > 4   
             \bar "|"  %{ end measure 16 %} 
             < e'  b'  gis'  > 4   
             < e'  b'  gis'  > 4   
             < b'  cis''  eis'  gis'  > 4   
             < cis''  eis'  a'  > 4   
             \bar "|"  %{ end measure 17 %} 
             \pageBreak
             \break
             < cis''  fis'  a'  > 4   
             < e'  cis''  gis'  > 4   
             < cis''  dis'  fisis'  > 4   
             < b'  cis''  dis'  fisis'  > 4   
             \bar "|"  %{ end measure 18 %} 
             < b'  gis''  dis''  > 4   
             < b'  ais''  dis''  eis''  > 4   
             < b'  fis''  dis''  a'  > 4   
             < cis''  fis''  dis''  a'  > 4   
             \bar "|"  %{ end measure 19 %} 
             \break
             < e'  a'  cis'  > 4   
             < e'  fis'  b'  c'  > 4   
             < g''  bes'  c''  e''  > 4   
             < d''  g''  bes'  e''  > 4   
             \bar "|"  %{ end measure 20 %} 
             < g''  ais'  cis''  ees''  > 4   
             < d''  b'  gis''  e''  > 4   
             < f'  a'  ees'  c'  > 4   
             < ais'  e'  fis'  cis'  > 4   
             \bar "|"  %{ end measure 21 %} 
             \pageBreak
             \break
             < f'  d'  b'  g'  > 4   
             < d''  b'  g''  f''  > 4   
             < d''  b'  g'  > 4   
             < e'  b'  g'  > 4   
             \bar "|"  %{ end measure 22 %} 
             < e'  c'  > 4   
             < e'  c'  > 4   
             < bes'  c''  e''  > 4   
             < c''  a'  e''  > 4   
             \bar "|"  %{ end measure 23 %} 
             \break
             < d''  fis''  a'  > 4   
             < d''  fis'  c''  a'  > 4   
             < d''  fis''  c''  a'  > 4   
             < d''  g''  bes'  > 4   
             \bar "|"  %{ end measure 24 %} 
             \pageBreak
             \break
             < d''  b'  gis''  > 4   
             < c''  gis'  f''  > 4   
             < f'  b'  d''  a'  > 4   
             < e'  b'  c''  > 4   
             \bar "|"  %{ end measure 25 %} 
             \break
             < d''  e'  b'  a'  > 4   
             < d''  c''  gis'  f''  > 4   
             < d''  c''  a'  f''  > 4   
             < f'  d'  gis'  > 4   
             \bar "|"  %{ end measure 26 %} 
             < f'  e'  d''  b'  > 4   
             < f'  d'  aes'  b'  > 4   
             < d''  b'  a''  f''  > 4   
             < f'  b'  d''  > 4   
             \bar "|"  %{ end measure 27 %} 
             \pageBreak
             \break
             < f'  c''  a'  > 4   
             < aes'  ees'  c''  ges'  > 4   
             < f'  d'  bes'  c''  > 4   
             < f'  des'  bes'  g'  > 4   
             \bar "|"  %{ end measure 28 %} 
             < ais'  cis''  fis'  > 4   
             < e'  cis''  g'  a'  > 4   
             < b'  cis''  fis'  dis'  > 4   
             < b'  fis'  dis'  gis'  > 4   
             \bar "|"  %{ end measure 29 %} 
             \break
             < d''  b'  g'  > 4   
             < c''  g'  e''  > 4   
             < d''  b'  g'  > 4   
             g' 4  
             \bar "|"  %{ end measure 30 %} 
             < d'  fis'  c'  a'  > 4   
             < e'  g'  c'  > 4   
             < d'  fis'  c'  a'  > 4   
             < fis'  dis'  > 4   
             \bar "|"  %{ end measure 31 %} 
             \pageBreak
             \break
             < a''  b'  c''  e''  > 4   
             < b'  g''  c''  e''  > 4   
             < g''  b'  cis''  ais''  > 4   
             < fis'  c''  dis''  > 4   
             \bar "|"  %{ end measure 32 %} 
             \break
             < e'  b'  g'  > 4   
             < e'  c''  a'  > 4   
             < e'  f'  d''  gis'  > 4   
             < e'  a'  fis'  dis''  > 4   
             \bar "|"  %{ end measure 33 %} 
             < e'  cis''  g'  ais'  > 4   
             < e'  cis''  g'  ais'  > 4   
             < e'  b'  g'  > 4   
             < e'  b'  g'  > 4   
             \bar "|"  %{ end measure 34 %} 
             \pageBreak
             \break
             < d''  e'  bes'  g'  > 4   
             < c''  e'  bes'  g'  > 4   
             < f'  e'  c''  g'  > 4   
             < c''  e'  bes'  g'  > 4   
             \bar "|"  %{ end measure 35 %} 
             < f'  a'  > 4   
             < f'  a'  c'  > 4   
             < a'  f''  > 4   
             < a'  g'  > 4   
             \bar "|"  %{ end measure 36 %} 
             \break
             < f'  d''  bes'  > 4   
             < d'  bes'  c'  > 4   
             < d'  bes'  > 4   
             < d''  g'  > 4   
             \bar "|"  %{ end measure 37 %} 
             < a'  c'  > 4   
             < c''  a'  > 4   
             < g''  bes'  c''  > 4   
             < c''  f'  g'  > 4   
             \bar "|"  %{ end measure 38 %} 
             \pageBreak
             \break
             < c''  a'  f''  > 4   
             < c''  g'  e''  > 4   
             < f'  d''  bes'  > 4   
             < f'  d'  > 4   
             \bar "|"  %{ end measure 39 %} 
             < d''  g'  f''  > 4   
             bes' 4  
             d' 4  
             d' 4  
             \bar "|"  %{ end measure 40 %} 
             < f'  a'  c'  > 4   
             < f'  a'  c'  > 4   
             < a''  bes'  c''  f''  > 4   
             < f'  c'  > 4   
             \bar "|"  %{ end measure 41 %} 
             \break
             < f'  d'  b'  c'  > 4   
             < f'  d'  b'  c'  > 4   
             < d'  b'  c'  a'  > 4   
             < d'  b'  c'  > 4   
             \bar "|"  %{ end measure 42 %} 
             < e'  bes'  c'  a'  > 4   
             s 4  
             < e'  bes'  g'  c'  > 4   
             s 4  
             \bar "|"  %{ end measure 43 %} 
             < f'  e'  c'  a'  > 4   
             < f'  e'  c'  a'  > 4   
             < f'  d'  c'  a'  > 4   
             < f'  a'  c'  > 4   
             \bar "|"  %{ end measure 44 %} 
             < e'  bes'  c'  > 4   
             < e'  bes'  c'  a'  > 4   
             < d'  bes'  c'  a'  > 4   
             < e'  bes'  c'  a'  > 4   
             \bar "|"  %{ end measure 45 %} 
             < f'  a'  c'  > 4   
             < d'  c'  a'  > 4   
             < f'  d'  c'  a'  > 4   
             < f'  a'  c'  > 4   
             \bar "|"  %{ end measure 46 %} 
             \pageBreak
             \break
             < f'  d'  bes'  c'  > 4   
             < f'  d'  bes'  c'  > 4   
             < e'  bes'  g'  c'  > 4   
             s 4  
             \bar "|"  %{ end measure 47 %} 
             < c''  a'  > 4   
             < c''  a'  > 4   
             s 4  
             < c''  a'  > 4   
             \bar "|"  %{ end measure 48 %} 
             < d'  c''  a'  > 4   
             < d'  c''  a'  > 4   
             s 2  
             \bar "|"  %{ end measure 49 %} 
             < c''  a'  e''  > 4   
             < c''  a'  e''  > 4   
             < c''  a'  e''  > 4   
             < e'  c''  a'  > 4   
             \bar "|"  %{ end measure 50 %} 
             < d'  e'  c''  a'  > 4   
             < d'  e'  c''  a'  > 4   
             < d'  c''  a'  > 4   
             < d'  c''  a'  > 4   
             \bar "|"  %{ end measure 51 %} 
             \break
             < e'  c''  a'  > 4   
             < e'  c''  a'  > 4   
             < e'  c''  a'  > 4   
             s 4  
             \bar "|"  %{ end measure 52 %} 
             < e'  c''  a'  > 4   
             < e'  c''  a'  > 4   
             < d'  e'  a'  > 4   
             < a'  e''  > 4   
             \bar "|"  %{ end measure 53 %} 
             < b'  g'  a'  e''  > 4   
             < d''  e'  b'  g'  > 4   
             < d''  b'  g''  > 4   
             < b'  e''  > 4   
             \bar "|"  %{ end measure 54 %} 
             \pageBreak
             \break
             < b'  g''  e''  > 4   
             < a''  b'  fis''  dis''  > 4   
             < b'  gis''  f''  d''  > 4   
             < b'  gis''  f''  > 4   
             \bar "|"  %{ end measure 55 %} 
             < a''  b'  fis''  c''  > 4   
             < b'  gis''  f''  > 4   
             < b'  g''  bes''  e''  > 4   
             < g''  b'  cis''  bes''  > 4   
             \bar "|"  %{ end measure 56 %} 
             < d''  b'  gis''  > 4   
             < b'  cis''  bes''  g''  > 4   
             < b'  c''  fis''  a''  > 4   
             < a''  b'  c''  ees''  > 4   
             \bar "|"  %{ end measure 57 %} 
             < b'  cis''  e''  ais''  > 4   
             < g''  b'  cis''  ais''  > 4   
             < b'  g''  ais''  e''  > 4   
             < g''  b'  cis''  e''  > 4   
             \bar "|"  %{ end measure 58 %} 
             < b'  g''  ais''  e''  > 4   
             < g''  b'  cis''  e''  > 4   
             < b'  cis''  ais''  e''  > 4   
             < g''  b'  cis''  ais''  > 4   
             \bar "|"  %{ end measure 59 %} 
             \break
             < b'  gis''  > 4   
             < b'  gis''  > 4   
             s 4  
             < b'  gis''  > 4   
             \bar "|"  %{ end measure 60 %} 
             < b'  gis''  e''  > 4   
             < b'  gis''  e''  > 4   
             s 2  
             \bar "|"  %{ end measure 61 %} 
             < b'  gis''  fis''  > 4   
             s 4  
             < b'  gis''  fis''  > 4   
             s 4  
             \bar "|"  %{ end measure 62 %} 
             < b'  gis''  e''  > 4   
             < b'  gis''  e''  > 4   
             < b'  gis''  fis''  > 4   
             < b'  cis''  gis''  > 4   
             \bar "|"  %{ end measure 63 %} 
             < b'  gis''  e''  > 4   
             < b'  cis''  gis''  > 4   
             s 2  
             \bar "|"  %{ end measure 64 %} 
             \pageBreak
             \break
             < b'  gis''  e''  > 4   
             < b'  cis''  gis''  > 4   
             < b'  gis''  > 4   
             s 4  
             \bar "|"  %{ end measure 65 %} 
             < b'  gis''  > 4   
             < b'  gis''  > 4   
             < b'  gis''  dis''  > 4   
             s 4  
             \bar "|"  %{ end measure 66 %} 
             < b'  g''  d''  > 4   
             < d''  b'  g''  > 4   
             < d''  b'  f''  > 4   
             s 4  
             \bar "|"  %{ end measure 67 %} 
             < b'  fis''  dis''  > 4   
             < b'  fis''  dis''  > 4   
             < b'  fis''  dis''  > 4   
             s 4  
             \bar "|"  %{ end measure 68 %} 
             \break
             < e'  gis'  > 4   
             < e'  gis'  > 4   
             < gis'  e''  > 4   
             < cis''  a'  e''  > 4   
             \bar "|"  %{ end measure 69 %} 
             < b'  gis''  e''  > 4   
             s 4  
             < b'  gis''  e''  > 4   
             s 4  
             \bar "|"  %{ end measure 70 %} 
             \pageBreak
             \break
             < b'  gis''  e''  > 4   
             < b'  cis''  a''  e''  > 4   
             < b'  cis''  fis''  a''  > 4   
             < ais'  cis''  fisis''  e''  > 4   
             \bar "|"  %{ end measure 71 %} 
             < a'  fis''  c''  e''  > 4   
             < a'  f''  c''  > 4   
             < b'  a'  f''  dis''  > 4   
             < b'  dis''  gis'  e''  > 4   
             \bar "|"  %{ end measure 72 %} 
             < d''  bes'  g'  e''  > 4   
             < bes'  g'  ees''  > 4   
             < ees''  cis''  g'  a'  > 4   
             < d''  cis''  fis'  a'  > 4   
             \bar "|"  %{ end measure 73 %} 
             \break
             < f'  d'  bes'  > 4   
             < f'  d'  bes'  > 4   
             < f'  d'  bes'  > 4   
             < d'  bes'  > 4   
             \bar "|"  %{ end measure 74 %} 
             d' 4  
             < d'  bes'  > 4   
             < f'  d'  bes'  > 4   
             < f'  d'  bes'  > 4   
             \bar "|"  %{ end measure 75 %} 
             \pageBreak
             \break
             a' 4  
             < c''  a'  e''  > 4   
             a' 4  
             < c''  a'  e''  > 4   
             \bar "|"  %{ end measure 76 %} 
             < d''  a'  > 4   
             < d''  a'  f''  > 4   
             < d''  a'  > 4   
             < d''  a'  f''  > 4   
             \bar "|"  %{ end measure 77 %} 
             \break
             < a'  e''  > 4   
             < a'  e''  > 4   
             < a'  e''  > 4   
             < gis''  a'  e''  > 4   
             \bar "|"  %{ end measure 78 %} 
             \pageBreak
             \break
             < a'  e''  > 4   
             < a'  e''  > 4   
             < d''  a'  > 4   
             < c''  a'  e''  > 4   
             \bar "|"  %{ end measure 79 %} 
             \break
             < c''  a'  > 4   
             < c''  a'  e''  > 4   
             a' 4  
             < dis''  c''  a'  > 4   
             \bar "|"  %{ end measure 80 %} 
             \pageBreak
             \break
             < c''  a'  > 4   
             < c''  a'  e''  > 4   
             < a'  e''  > 4   
             < c''  a'  e''  > 4   
             \bar "|"  %{ end measure 81 %} 
             < e'  c'  a'  > 4   
             < e'  b'  g'  c'  > 4   
             < e'  gis'  c'  > 4   
             < d'  gis'  e'  c'  > 4   
             \bar "|"  %{ end measure 82 %} 
             \break
             < f'  dis'  c''  a'  > 4   
             < f'  dis'  a'  des''  > 4   
             < f'  b'  dis'  a'  > 4   
             < f'  b'  dis'  a'  > 4   
             \bar "|"  %{ end measure 83 %} 
             bes' 4  
             g' 4  
             d' 4  
             bes' 4  
             \bar "|"  %{ end measure 84 %} 
             \pageBreak
             \break
             < e'  c''  a'  > 4   
             < e'  c''  a'  > 4   
             s 2  
             \bar "|"  %{ end measure 85 %} 
             < d''  e'  b'  gis'  > 4   
             < d''  e'  b'  gis'  > 4   
             s 2  
             \bar "|"  %{ end measure 86 %} 
             < c''  a'  > 4   
             c' 4  
             e' 4  
             e' 4  
             \bar "|"  %{ end measure 87 %} 
             \break
             a' 4  
             c' 4  
             e' 4  
             e' 4  
             \bar "|"  %{ end measure 88 %} 
             \pageBreak
             \break
             a' 4  
             fis' 4  
             a' 4  
             fis' 4  
             \bar "|"  %{ end measure 89 %} 
             \break
             a' 4  
             fis' 4  
             a' 4  
             fis' 4  
             \bar "|"  %{ end measure 90 %} 
             \pageBreak
             \break
             < c''  a'  e''  > 4   
             < fis''  c''  a'  e''  > 4   
             < c''  a'  e''  > 4   
             < d''  c''  a'  e''  > 4   
             \bar "|"  %{ end measure 91 %} 
             < c''  a'  e''  > 4   
             < fis''  c''  a'  e''  > 4   
             < c''  a'  e''  > 4   
             < d''  c''  a'  e''  > 4   
             \bar "|"  %{ end measure 92 %} 
             \break
             < c''  a'  e''  > 4   
             < fis''  c''  a'  e''  > 4   
             < c''  a'  e''  > 4   
             < d''  c''  a'  e''  > 4   
             \bar "|"  %{ end measure 93 %} 
             e' 4  
             e' 4  
             e' 4  
             e' 4  
             \bar "|"  %{ end measure 94 %} 
             \pageBreak
             \break
             e' 4  
             e' 4  
             a' 4  
             c' 4  
             \bar "|"  %{ end measure 95 %} 
             a' 4  
             < c''  a'  e''  > 4   
             < f'  d'  a'  > 4   
             < f'  d'  b'  a'  > 4   
             \bar "|"  %{ end measure 96 %} 
             < c''  a'  e''  > 4   
             s 2.  
             \bar "|"  %{ end measure 97 %} 
             a' 4  
             s 2.  
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
              "i6" 
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
              "i" 
              "i" 
              "v" 
              "iiø7" 
              "iv64" 
              "iiø7" 
              "iiø7" 
              "i" 
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
              "IV+#64" 
              "iv" 
              "i6" 
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
              "vi#8b7b53" 
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
              "vi6" 
              "II64" 
              "II75#3" 
              "II75#3" 
              "v" 
              "#vo6" 
              "iv#874" 
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
              "vii#83" 
              "iv742" 
              "bVI7" 
              "#iv7b62" 
              "vii#65" 
              "i" 
              "iv64" 
              "I7#3b2" 
              "viio#742" 
              "#ivo64b3" 
              "#ivo64b3" 
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
              "I" 
              "V6" 
              "IV6" 
              "vi6" 
              "ii43" 
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
              "vi7" 
              "vi7" 
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
              "iv74" 
              "i5" 
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
              "ib8b64" 
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
              "#ivo7b4b2" 
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
              "bIII6" 
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
              "I" 
              "I" 
              "I" 
              "I6" 
              "iii" 
              "I6" 
              "I" 
              "I" 
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
              "i" 
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
              "i543" 
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
 
