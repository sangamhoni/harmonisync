\version "2.24" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "愈"   
  
  } 
 
\score  { 
 
      << \new Staff  = Soprano { \break
             \clef "treble" 
             \key d \major 
             \time 4/4
             \once \override Stem #'direction = #UP 
             a' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \bar "|"  %{ end measure 1 %} 
             \once \override Stem #'direction = #DOWN 
             e'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \bar "|"  %{ end measure 2 %} 
             \once \override Stem #'direction = #UP 
             a' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \bar "|"  %{ end measure 3 %} 
             \once \override Stem #'direction = #DOWN 
             e'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \bar "|"  %{ end measure 4 %} 
             \once \override Stem #'direction = #UP 
             a' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \bar "|"  %{ end measure 5 %} 
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             e'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \once \override Stem #'direction = #DOWN 
             fis'' 4  
             \bar "|"  %{ end measure 6 %} 
             \once \override Stem #'direction = #DOWN 
             e'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \bar "|"  %{ end measure 7 %} 
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \once \override Stem #'direction = #UP 
             e' 4  
             \bar "|"  %{ end measure 8 %} 
             \break
             \once \override Stem #'direction = #UP 
             a' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \bar "|"  %{ end measure 9 %} 
             \once \override Stem #'direction = #DOWN 
             e'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \bar "|"  %{ end measure 10 %} 
             \once \override Stem #'direction = #UP 
             a' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \bar "|"  %{ end measure 11 %} 
             \once \override Stem #'direction = #DOWN 
             e'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \bar "|"  %{ end measure 12 %} 
             \once \override Stem #'direction = #UP 
             a' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \bar "|"  %{ end measure 13 %} 
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             e'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \once \override Stem #'direction = #DOWN 
             fis'' 4  
             \bar "|"  %{ end measure 14 %} 
             \once \override Stem #'direction = #DOWN 
             e'' 4  
             \once \override Stem #'direction = #DOWN 
             d'' 4  
             \once \override Stem #'direction = #DOWN 
             cis'' 4  
             \once \override Stem #'direction = #DOWN 
             b' 4  
             \bar "|"  %{ end measure 15 %} 
             \once \override Stem #'direction = #UP 
             a' 4  
             \once \override Stem #'direction = #UP 
             g' 4  
             \once \override Stem #'direction = #UP 
             fis' 4  
             \once \override Stem #'direction = #UP 
             e' 4  
             \bar "|."  %{ end measure 16 %} 
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
 
