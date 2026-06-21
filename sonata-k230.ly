%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C minor"
  opus   = "K.230"
  source = "https://ks15.imslp.org/files/imglnks/usimg/1/11/IMSLP914182-PMLP500430-E4526_31-34-Scarlatti_-_Keyboard_Sonatas,_L.346-362.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 2.5)) \etc

%
% Music
%

global = {
  \time 4/4
  \key c \minor
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \partial 2. g''8( ef c4 g |
    c2.) d32( ef f8.) |
    ef32( d c8.) r4 r g'8( ef |
    c2. b4) |
    r4 c2( b4 |
    c4) ef8( c g4) \voiceOne f'4~ |
    f4 \oneVoice ef8( c g4-.) \voiceOne f'~ |
    f4 \oneVoice ef8( d c4)\prall \voiceOne c'~ |
    c4 \oneVoice bf8( g d4-.) \voiceOne c'~ |
    
    \barNumberCheck 9
    c4 \oneVoice bf8( a g4)\prall r |
    r4 a-- r g-- |
    r a-- r d( |
    fs,4-.) c'8( ef, d4-.) a'8( c, |
    bf4-.) ef8( g, fs4-.) g( |
    a4) c( d ef |
    d4 c bf a |
    g4-.) c8-\slurShapeB \( a \grace { g16( } g4.)-\insideSlur \trill fs16 g |
    
    \barNumberCheck 17
    \addStaccato {
      a4\) d, d d |
      d4 d d d |
    }
    d4( g) g-. g-. |
    \addStaccato { g4 g g g } |
    g4( c) c-. c-. |
    \addStaccato { c4 c c c } |
    c4( f) f-. f-. |
    \addStaccato { f4 f f f } |
    
    \barNumberCheck 25
    f4( bf) bf-. bf-. |
    \addStaccato {
      bf4 bf bf bf |
      bf4 bf r8 bf r bf |
    }
    bf8( a) r g-.  g( fs) r ef-. |
    ef8( d) r c-.  c( bf) r a-. |
    a8( g) r f!-.  f( ef) r d-. |
    d8 c ef d  c bf \voiceOne g'4 |
    \oneVoice \appoggiatura { \once \slurUp g8 } <a, fs'>4 r8 \addStaccato { 
      a16 r bf r c r d r e r |
      
      \barNumberCheck 33
      fs16 r g r a r bf r  c r a r bf r c r |
    }
    \appoggiatura { c8 } d4 r8 \addStaccato {
      a,16 r bf r c r d r e r |
      fs16 r g r a r bf r  c r a r bf r c r |
      d16 r fs r g r d r  ef r c r d r a r |
      bf16 r fs r g r d r  ef r c r d r a r |
    }
    bf4 d'8( bf \appoggiatura { a } g4) d'( |
    ef8 c bf a  g4-.) fs-. |
    \appoggiatura { fs8 } g4 r8 \addStaccato {
      a,16 r bf r c r d r e r |
      
      \barNumberCheck 41
      fs16 r g r a r bf r  c r a r bf r c r |
      d16 r fs r g r d r  ef r c r d r a r |
      bf16 r fs r g r d r  ef r c r d r a r |
    }
    bf4 d'8( bf \appoggiatura { a } g4) d'( |
    ef8 c bf a  g4-.) fs-. |
    \voiceOne g2 s4 \oneVoice <a, fs'>-. |
    \alternative {
      { <g g'>4-> }
      {  
        \repeat volta 2 {
          \once \override Score.VoltaBracket.musical-length = \musicLength 1
          g'4-> d'8( b  f d b d) |
          r4 ef'8( c  g ef c g') |
          
          \barNumberCheck 49
          r4 f'8( d  b f d b') |
          r4 g'8( ef  c g ef g) |
          <ef' g>8( <d f>) q( <c ef>)  q( <b d>) q( <a c>) |
          <b d>2. d4-. |
          \voiceOne ef2. s4 |
          f2. s4 |
          \oneVoice f8( d b g  f' ef) ef( d |
          \addStaccato {
            ef4) c, c c |
            
            \barNumberCheck 57
            c4 c c c |
          }
          c4( f) f-. f-. |
          \addStaccato { f4 f f f } |
          f4( bf) bf-. bf-. |
          \addStaccato { bf4 bf bf bf } |
          bf4( ef) ef-. ef-. |
          \addStaccato {
            ef4 ef ef ef |
            ef ef  r8 ef r ef |
          }
          
          \barNumberCheck 65
          ef8( d) r c-.  c( b) r af-. |
          af8( g) r f-.  f( ef) r d-. |
          d8( c) r bf!-.  bf( af) r g-. |
          c8 d ef f  f e \voiceOne fs4 |
          \oneVoice \appoggiatura { c8 } <b g'>4 r8 \addStaccato {
            d16 r ef r f r g r a r |
            b16 r c r d r ef r  f r d r ef r f r |
          }
          \appoggiatura { f8 } g4 r8 \addStaccato {
            d,16 r ef r f r g r a r |
            b16 r c r d r ef r  f r d r ef r f r |
            
            \barNumberCheck 73
            g16 r b r c r g r  af r f r g r d r |
            ef16 r b r c r g r  af r f r g r d r |
          }
          ef4 g'8( ef \appoggiatura { d } c4) g'( |
          af8 f ef d  c4-.) b-. |
          \appoggiatura { b8 } c4 r8 \addStaccato {
            d,16 r ef r f r g r a r |
            b16 r c r d r ef r  f r d r ef r f r |
            g16 r b r c r g r  af r f r g r d r |
            ef16 r b r c r g r  af r f r g r d r |
          }
          ef4 g'8( ef \appoggiatura { d8 } c4) g'( |
          af8 f ef d  c4-.) b-. |
          \voiceOne c2 \oneVoice <ef, c'>4-. <d b'>-. |
          \appoggiatura { b8 } <c c'>4 r r2 |
        }
      }
    }
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    \partial 2. s2. |
    s1*4 |
    s2. \voiceFour af'8( f |
    g4) s2 af8( f |
    g4) s2 ef'8( c |
    d4-.) s2 ef8( c |
    
    \barNumberCheck 9
    d4-.) s2. |
    s1*7 |
    
    \barNumberCheck 17
    s1*8 |
    
    \barNumberCheck 25
    s1*6 |
    \oneVoice \hideNoteHead \osp #'(1 . 0) d,8_( s s2 \voiceFour a8 g) |
    s1 |
    
    \barNumberCheck 33
    s1*8 |
    
    \barNumberCheck 41
    s1*5 |
    g'8( c, d ef \oneVoice <b g'>4-.) s |
    \alternative {
      { s4 }
      {  
        \repeat volta 2 {
          s1*2 |
          
          \barNumberCheck 49
          s1*4 |
          \voiceFour d'4( c) \oneVoice r ef-. |
          \override Parentheses.font-size = #-2
          \voiceFour ef4( d) \oneVoice r \parenthesize f-. |
          s1*2 |
          
          \barNumberCheck 57
          s1*8 |
          
          \barNumberCheck 65
          s1*3 |
          \hideNoteHead \osp #'(1 . 0) c,8_( s4. s4 \voiceFour d8 c) |
          s1*4 |
          
          \barNumberCheck 73
          s1*8 |
          
          \barNumberCheck 81
          s1*2 |
          c'8( f, g af  \oneVoice \hideNoteHead ef4-.) s |
          s1 |
        }
      }
    }
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    \partial 2. s2. |
    s1 |
    s4 \hideNoteHead g'8( s8 s2 |
    \voiceThree af,4) af'8( f ef4 d) |
    af4 af'8( f ef4 d) |
    s1*4 |
    
    \barNumberCheck 9
    s1*24 |
    
    \barNumberCheck 33
    s1*6 |
    g,2( bf4) a-. |
    s1 |
    
    \barNumberCheck 41
    s1*4 |
    g2( bf4) a-. |
    g2 s |
    \alternative {
      { s4 }
      {  
        \repeat volta 2 {
          s1*2 |
          
          \barNumberCheck 49
          s1*24 |
          
          \barNumberCheck 73
          s1*3 |
          \osp #'(-0.5 . 0) c2( ef4-.) d-. |
          s1*4 |
          
          \barNumberCheck 81
          s1 |
          \osp #'(-0.5 . 0) c2( ef4-.) d-. |
          c2 s |
          s1 |
        }
      }
    }
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    \partial 2. r4 r2 |
    r4 c'8( af f4 b |
    c4) g'8 ef c4 bf! |
    \voiceTwo af2( g) |
    af2( g) |
    \oneVoice <c, c'>2 r4 c'( |
    b4-.) c2.( |
    b4-.) c2 g'4( |
    fs4-.) g2.( |
    
    \barNumberCheck 9
    fs4-.) g2 \clef treble bf8( g |
    ef4) \stemUp c'8( a d,4) bf'8( g |
    ef4) c'8( a d,4) <d g bf>( |
    <d a' c>4-.) <d g>( <d fs>-.) <fs a>( |
    g4-.) \stemNeutral \clef bass c,( d-.) ef8( g, |
    fs4-.) c'8( ef, d4-.) a'8-\slurShapeA ( c, |
    bf4-.) g'8( a, g4-.) d'8( f,! |
    ef4-.) g4( c ef, |
    
    \barNumberCheck 17
    d2) r8 c''( bf a |
    bf8 c bf a  bf c bf a |
    bf8 a g fs  g) f'!( ef d |
    ef f ef d  ef f ef d |
    ef8 d c b  c) \clef treble bf'!( af! g |
    af8 bf af g  af bf af g |
    af8 g f e  f) ef'!( d c |
    d8 ef d c  d ef d c |
    
    \barNumberCheck 25
    d8 c bf a  bf) af'!( g f |
    g8 af g f  g af g f |
    g8 f ef d  ef4) <d f>-. |
    <c ef>4-- <bf d>-. <a c>-- <g c>-. |
    <fs c'>4-- <ef g>-. <d g>-- <c fs>-. |
    <bf d>-- \clef bass <a c>-. <g bf>-- <f a>-. |
    <ef g>2 q |
    <d, d'>4 r8 \addStaccato { 
      r16 fs' r g r a r bf r c |
      
      \barNumberCheck 33
      \clef treble r d r e r fs r g  r a r fs r g r a |
    }
    d,4-> r8 \clef bass \addStaccato {
      r16 fs, r g r a r bf r c |
      \clef treble r16 d r e r fs r g  r a r fs r g r a |
      r16 d, r a' r bf r g  r c r a r fs r d |
      r16 g r d r \clef bass bf r g  r c r a r fs r d |
    }
    <g, g'>2. <bf g'>4-. |
    \voiceTwo c4( ef d2) |
    \oneVoice g4-> r8 \addStaccato {
      r16 fs r g r a r bf r c |
      
      \barNumberCheck 41
      \clef treble r16 d r e r fs r g  r a r fs r g r a |
      % Second to last sixteenth, f in source, but see measure 37
      r16 d, r a' r bf r g  r c r a r fs r d |
      r16 g r d r \clef bass bf r g  r c r a r fs r d |
    }
    <g, g'>2. <bf g'>4-. |
    \voiceTwo c4( ef d2) |
    ef4( c \oneVoice d-.) d,-. |
    \alternative {
      { g4-> }
      {  
        \repeat volta 2 {
          <g g'>1-> |
          q1 |
          
          \barNumberCheck 49
          q1 |
          q1 |
          q1 |
          r4 d''8( b g4 f |
          ef4) ef'8( c af4 g |
          f4) \osp #'(0 . 2.5) f'8( d b4 af |
          g2 g, |
          c2) r8 bf'!8( af g |
          
          \barNumberCheck 57
          af8 bf af g  af bf af g |
          af8 g f e  f) ef'!( d c |
          d8 ef d c  d ef d c |
          d8 c bf a  bf) \clef treble af'!( g f |
          g8 af g f  g af g f |
          g8 f ef d  ef) df'( c bf |
          c8 df c bf  c df c bf |
          c8 bf af g  <af c>4-.) <g bf>-. |
          
          \barNumberCheck 65
          <f af>4-- <ef g>-. <d f>-- <c f>-. |
          <b f'>-- \clef bass <af c>-. <g c>-- <f b>-. |
          <ef g>4-- <d f>-. <c ef>-- <bf! d>-. |
          <af c>2 q |
          g4-> r8 \clef treble \addStaccato {
            r16 b' r c r d r ef r f |
            r16 g r a r b r c  r d r b r c r af |
          }
          g4-> r8 \addStaccato {
            r16 b, r c r d r ef r f |
            r16 g r a r b r c  r d r b r c r af |
            
            \barNumberCheck 73
            r16 g r d' r ef r c  r f r d r b r g |
            r16 c r g r ef r c  r f r d r \clef bass b r g |
          }
          <c, c'>2. <ef c'>4-. |
          \voiceTwo f4( af g2) |
          \oneVoice c4 r8 \clef treble \addStaccato {
            r16 b r c r d r ef r f |
            r16 g r a r b r c  r d r b r c r af |
            r16 g r d' r ef r c  r f r d r b r g |
            r16 c r g r ef r c  r f r d r \clef bass b r g |
          }
          
          \barNumberCheck 81
          <c, c'>2. <ef c'>4-. |
          \voiceTwo f4( af g2) |
          af4( f \oneVoice g-.) g,-. |
          <c, c'>4-> r r2 |
        }
      }
    }
  }
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 2. s2.-\tweak Y-offset #-6 \mf |
    s1*4 |
    s4 s2\p s4\f |
    s4 s2\p s4\f |
    s4 s2\p s4-\tweak Y-offset #0.5 \f |
    s4 s2-\tweak Y-offset #1 \p s4-\tweak Y-offset #1 \f |
    
    \barNumberCheck 9
    s4 s2.-\tweak Y-offset #1 \p |
    s1\cresc |
    s2. s4\mf |
    s1*2 |
    s4 s2.\p\cresc |
    s1 |
    s1\f |
    
    \barNumberCheck 17
    s4 s2.\p |
    s1 |
    s1\cresc |
    s1*5 |
    
    \barNumberCheck 25
    s1\f |
    s1*2 |
    s4. s8\dim s2 |
    s1 |
    s2.. s8\p |
    s1-\tweak Y-offset #-1 \cresc |
    s4.\mf s8\p s2\cresc |
    
    \barNumberCheck 33
    s1 |
    s4.\f s8\p s2\cresc |
    s1 |
    s8 s2..\f |
    s1 |
    s1\f |
    s1 |
    s4. s8\p s2\cresc |
    
    \barNumberCheck 41
    s1 |
    s8 s2..\f |
    s1 |
    s1\f |
    s1*2 |
    \alternative {
      { s4 }
      {  
        \repeat volta 2 {
          s4\f s2.\p |
          s1\cresc |
          
          \barNumberCheck 49
          s1*2 |
          s1\f |
          s2.\> s4\p |
          s1\cresc |
          s1*2 |
          s4\f s2.\p |
          
          \barNumberCheck 57
          s1 |
          s1\cresc |
          s1*3 |
          s1\f |
          s1*2 |
          
          \barNumberCheck 65
          s4. s8\dim s2 |
          s1 |
          s2.. s8\p |
          s1-\tweak Y-offset #-0.5 \cresc |
          s4.\mf s8-\tweak Y-offset #0.5 \p s2-\tweak Y-offset #1 \cresc |
          s1 |
          s4.\f s8\p s2\cresc |
          s1 |
          
          \barNumberCheck 73
          s8 s2..\f |
          s1 |
          s1\f |
          s1 |
          s4 s8 s\p s2\cresc |
          s1 |
          s8 s2..\f |
          s1 |
          
          \barNumberCheck 81
          s1-\tweak Y-offset #-5.5 \f |
          s1*3 |
        }
      }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 84
    \partial 2. s2. |
    s1*40 |
    
    \barNumberCheck 41
    s1*5 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 76 s \tempo 2 = 69 s \tempo 2 = 63 s |
    \alternative {
      { s4 }
      {  
        \repeat volta 2 {
          \tempo 2 = 84
          s1*2 |
          
          \barNumberCheck 49
          s1*32 |
          
          \barNumberCheck 81
          s1*2 |
          \tag layout { s1*2 | }
          \tag midi {
            \alternative {
              {
                s4 \tempo 2 = 76 s \tempo 2 = 69 s \tempo 2 = 63 s |
                \tempo 2 = 58 s1 |
              }
              {
                s4 \tempo 2 = 72 s \tempo 2 = 63 s \tempo 2 = 56 s |
                \tempo 2 = 20 s4 \tempo 2 = 84 s2. |
              }
            }
          }
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2. s1*4 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*4 \pageBreak
  
  % page 2
  s1*5 \break
  s1*4 \break
  s1*3 \break
  s1*4 \break
  \grace { s8 } s1*3 \pageBreak
  
  % page 3
  s1*4 s4 \break
  s1*5 \break
  s1*5 \break
  s1*4 \break
  s1*5 \pageBreak
  
  % page 4
  s1*4 \break
  s1*3 \break
  s1*4 \break
  \grace { s8 } s1*3 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
