\version "2.24" % Ensure this matches your installed version

\header { 
  title = "Untitled score"   
}

\score { 
  <<
    \new TabStaff = "Guitar Tab" { 
      \clef "tab"  % Clef for tab staff
      \key c \major 
      \time 4/4
      
      % Tablature notes with duration indicated properly
      a'4 
      a'4 
      <e' a'>4   
      d'4  
      \bar "|"  % End measure 1
      <d'' b' a'>4   
      <d'' a'>4   
      <f' b' d''>4   
      <f' b' d''>4   
      \bar "|"  % End measure 2
      <c'' a' e''>4   
      <e' b' c'>4   
      <e' a' cis'>4   
      <d' e' g'>4   
      \bar "|"  % End measure 3
    } 
  >>
  
  \paper { }
  
  \layout {
    \context {
      \RemoveEmptyStaffContext
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
}


