%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in B♭ major"
  opus   = "K.229"
  source = "https://s9.imslp.org/files/imglnks/usimg/b/bd/IMSLP915035-PMLP499814-E4468_33-36-Scarlatti_-_Keyboard_Sonatas,_L.191-200.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.2 . 2.75) (0.2 . 2.75) (0.2 . 2.75) (0.2 . 2.75))
                      ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (-0.2 . 0) (-0.2 . 0)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (-0.2 . 0) (-0.2 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeI = \shape #'((0 . 0) (0 . -2.5) (0 . 0) (0 . 2)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc
slurShapeK = \shape #'((0 . -2) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0 . -3) (0 . 0) (0 . 2.5)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 0) (-0.2 . 0) (-0.2 . 0)) \etc

%
% Music
%

global = {
  \time 2/4
  \key bf \major
  \beamEighths.24
  % \set Staff.printKeyCancellation = ##f
  % \override Timing.TimeSignature.style = #'numbered
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \acciaccatura { c''8 } bf16( a bf c  d8 ef) |
    d8( c bf a) |
    \acciaccatura { c8 } bf16( a bf c  d8 ef) |
    d8( c bf a) |
    \acciaccatura { c8 } bf16( a bf c  d8 ef) |
    d16( c bf a  bf8-.) r |
    f16( g32 a bf c d ef f4->)~ |
    f8 bf,-\slurShapeA ( a bf |
    
    \barNumberCheck 9
    c8. d32 ef  d8-.) r |
    f,16( g32 a bf c d ef f4->)~ |
    f8 bf,( a bf |
    c8. d32 ef  d8-.) c-. |
    \acciaccatura { c8 } \tuplet 3/2 { bf16( a g } <ef' g>8-.)[ <d fs>-.
      <ef g>-.] |
    r8 <c ef>( <b d>) <c ef>-. |
    r8 <bf! d>( <a cs>) <bf d>-. |
    r8 <f' a>( <e g>) <f a>-\slurShapeC (~ |
    
    \barNumberCheck 17
    a16 c bf a  g f e f |
    \appoggiatura { d16 } cs8.\prall b16 a8-.) r |
    << { e'4 s } \\ { e16^( g, f g  d'8^.) cs^. } >> |
    << { f4 s } \\ { f16^( a, g a  e'8^.) d^. } >> |
    << { g4 s } \\ { g16^( b, a b  cs8^.) d^. } >> |
    e8-. gs4->( a8) |
    << { e4^\aTempo s } \\ { e16^( g, f g  d'8^.) cs^. } >> |
    << { f4 s } \\ { f16^( a, g a  e'8^.) d^. } >> |
    
    \barNumberCheck 25
    << { g4 s } \\ { g16^( b, a b  cs8^.) d^. } >> |
    e8-. gs4->( a8) |
    \clef bass d,,,4~^\aTempo d16 e32-\slurShapeE ( f g a b cs |
    \clef treble d4)~ d16 e32_( f g a b cs |
    d4)~ d16 e32-\slurShapeF ( f g a b cs |
    d4)(~ d16 c! bf! a32 g |
    \set subdivideBeams = ##t \omit TupletBracket
    \tuplet 3/2 8 { a16 g a  bf a g } f8-.) e-. |
    \set subdivideBeams = ##f
    \clef bass d,,4~ d16 e32( f g a b cs |
    
    \barNumberCheck 33
    \clef treble d4)~ d16 e32_( f g a b cs |
    d4)~ d16 e32-\slurShapeG ( f g a b cs |
    d4)(~ d16 c! bf! a32 g |
    \set subdivideBeams = ##t \omit TupletBracket
    \tuplet 3/2 8 { a16 g a  bf a g } f8-.) e-. |
    \set subdivideBeams = ##f
    d'16( a bf e,  a d, g cs,) |
    d16( a bf e,  a d, g cs,) |
    \clef bass d16( a bf e,  a d, g cs, |
    \alternative {
      { d8) r r4 | }
      {  
        \barNumberCheck 41
        \clef bass d2\repeatTie \clef treble |
      }
    }
  }
  \repeat volta 2 {
    d'16( e32 fs g a bf c d4)~ |
    d8 g,( fs g |
    a8. bf32 c  bf8-.) r |
    g16( a32 b c d ef! f g4)~ |
    g8 c,( b c |
    d8. ef32 f  ef8-.) d-. |
    \osp #'(-0.5 . 0) c16( f ef d  c8-.) b-. |
    
    \barNumberCheck 49
    \osp #'(-0.5 . 0) c16( f ef d  c8-.) b-. |
    \osp #'(-1.5 . -1.5) c16( g' f ef  d c b c) |
    \osp #'(-2 . 0) \afterGrace 15/16 c4(\trill { b32 c } b8) r |
    << { d4 s } \\ { d16^( f, ef f  c'8^.) b^. } >> |
    << { ef4 s } \\ { ef16^( g, f g  d'8^.) c^. } >> |
    << { f4 s } \\ { f16^( af, g af  b8^.) c^. } >> |
    d8-. fs4->( g8) |
    c,,4~^\aTempo c16 d32-\slurShapeI ( ef f g a! b |
    
    \barNumberCheck 57
    c4)~ c16 d32( ef f g a b |
    c4)(~ c16 bf! af g32 f |
    \set subdivideBeams = ##t
    \tuplet 3/2 8 { g16 f g  af g f } <c ef>8-.) <bf df>-. |
    \tupletOff \tuplet 3/2 8 { <bf c>16( df ef  df c bf } <bf df>8-.) <a! c>-. |
    \tuplet 3/2 8 { bf16-\slurShapeJ ( c df  c bf af } <af c>8-.) <g bf>-. |
    \tuplet 3/2 8 { af16( bf c  bf af g } <g bf>8-.) <f af>-. |
    \tuplet 3/2 8 { g16( af bf  af g f } <f af>8-.) <ef gf>-. |
    f8-. c'(~ \tuplet 3/2 8 { c16 df ef  df c bf } |
    
    \barNumberCheck 65
    a!8-.) bf-. \tuplet 3/2 8 { c16( df ef  df c bf) } |
    \afterGrace 15/16 bf4-\slurShapeK \(\trill { a32( bf } a8)\) r |
    << { c4 s } \\ { c16^( ef, df ef  bf'8^.) a^. } >> |
    << { df4 s } \\ { df16^( f, ef f  c'8^.) bf^. } >> |
    << { ef4 s } \\ { ef16^( g,! f g  a8^.) bf^. } >> |
    c8-. e4->( f8) |
    << { c4 s } \\ { c16^( ef,! df ef  bf'8^.) a^. } >> |
    << { df4 s } \\ { df16^( f, ef f  c'8^.) bf^. } >> |
    
    \barNumberCheck 73
    << { ef4 s } \\ { ef16^( g,! f g  a8^.) bf^. } >> |
    c8-. e4->( f8) |
    \set subdivideBeams = ##f
    bf,,4~^\aTempo bf16 c32( d! ef f g a |
    bf4)~ bf16 c32-\slurShapeM ( d ef f g a |
    bf4)(~ bf16 a g f32 ef |
    \set subdivideBeams = ##t \tupletNumberOn 
    \tuplet 3/2 8 { f16 ef f  g f ef } d8-.) c-. |
    \set subdivideBeams = ##f
    bf,4~ bf16 c32( d ef f g a |
    bf4)~ bf16 c32-\slurShapeM ( d ef f g a |
    
    \barNumberCheck 81
    bf4)(~ bf16 a g f32 ef |
    \set subdivideBeams = ##t 
    \tuplet 3/2 8 { f16 ef f  g f ef } d8-.) c-. |
    \set subdivideBeams = ##f
    bf'16( f g c,  f bf, ef a,) |
    bf16( f g c,  f bf, ef a,) |
    \set subdivideBeams = ##t 
    \tuplet 3/2 8 { bf16( c d  c d ef } <bf d>8-.) <a c>-. |
    bf4->\prallprall r |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \override Parentheses.font-size = #-2
  \repeat volta 2 {
    \grace { s8 } \parenthesize bf,4 r |
    \acciaccatura { c'8 } bf16( a bf c  d8 ef) |
    d8( c bf a) |
    \acciaccatura { c8 } bf16( a bf c  d8 ef) |
    d8( c bf a) |
    \osp #'(0 . 2.5) bf8( f bf,-.)\noBeam r |
    r4 f'16( g32 a bf c d ef |
    f8-.) d-\slurShapeB ( c bf |
    
    \barNumberCheck 9
    a8 f bf,-.)\noBeam r |
    r4 f'16( g32 a bf c d ef |
    f8-.) d( c bf |
    a8 g fs-.) d-. |
    <g, g'>2 |
    q2 |
    q2 |
    <f f'>2 |
    
    \barNumberCheck 17
    bf'4.-\slurShapeD ( g8 |
    a4 a,8-.) r |
    \clef treble << { a'16( e' d e  f8-.) e-. } \\ { a,2 } >> |
    << { a16( f' e f  g8-.) f-. } \\ { a,2 } >> |
    << { a16( g' f g  a8-.) bf!-. } \\ { a,2 } >> |
    a'4( a,) |
    << { a16( e' d e  f8-.) e-. } \\ { a,2 } >> |
    << { a16( f' e f  g8-.) f-. } \\ { a,2 } >> |
    
    \barNumberCheck 25
    << { a16( g' f g  a8-.) bf!-. } \\ { a,2 } >> |
    a'4( a,) |
    \clef bass d,,16_( e32 f g a b cs d4)~ |
    d16 e32( f g a b cs \clef treble d4)~ |
    d16 e32( f g a b cs d4)(~ |
    d16 c! bf! a g4 |
    f8 g a-.) a,-. |
    \clef bass d,,16_( e32 f g a b cs d4)~ |
    
    \barNumberCheck 33
    d16 e32( f g a b cs \clef treble d4)~ |
    d16 e32( f g a b cs d4)(~ |
    d16 c! bf! a g4 |
    f8-.) g-. a-. a,-. |
    r8 g'( a-.) a,-. |
    \clef bass r8 g( a-.) a,-. |
    r8 g( a-.) a,-. |
    \alternative {
      { d8-. d'16(\> ef!  d c bf a)\! | }
      {  
        \barNumberCheck 41
        d,2 |
      }
    }
  }
  \repeat volta 2 {
    <d d'>4->~ d'16 e32( fs g a bf c |
    d8-.) bf( a g |
    fs8 d g,8-.)\noBeam r |
    r4 g'16( a32 b c d ef! f |
    g8-.) ef( d c |
    b8 g c-.) d-. |
    \clef treble << { ef16( af g f  <ef g>8-.) <d f>-. } \\ { c4 s } >> |
    
    \barNumberCheck 49
    << { ef16( af g f  <ef g>8-.) <d f>-. } \\ { c4 s } >> |
    <c ef>4 \clef bass f,8-\slurShapeH ( af |
    g4 g,8) r |
    \clef treble << { g'16( d' c d  ef8-.) d-. } \\ { g,2 } >> |
    << { g16( ef' d ef  f8-.) ef-. } \\ { g,2 } >> |
    << { g16( f' ef f  g8-.) af-. } \\ { g,2 } >> |
    g'4( g,) |
    \clef bass c,16( d32 ef f g a! b \clef treble c4)~ |
    
    \barNumberCheck 57
    c16 d32_( ef f g a b c4~ |
    c16 bf! af g f4 |
    ef8 f g-.) f-. |
    e8( f f-.) ef-. |
    df8( ef ef-.) df-. |
    c8( df df-.) c-. |
    bf8( c c-.) bf-. |
    \clef bass <a! c>8-. f-. << { gf( ef') } \\ { gf,4 } >> |
    
    \barNumberCheck 65
    \addStaccato { <f ef'>8 <f df'> <f c'> <f bf> } |
    f4( f,) |
    \clef treble << { f'16( c' bf c  df8-.) c-. } \\ { f,2 } >> |
    << { f16( df' c df  ef8-.) df-. } \\ { f,2 } >> |
    << { f16( ef' df ef  f8-.) gf-. } \\ { f,2 } >> |
    f'4( f,) |
    << { f16( c' bf c  df8-.) c-. } \\ { f,2 } >> |
    << { f16( df' c df  ef8-.) df-. } \\ { f,2 } >> |
    
    \barNumberCheck 73
    << { f16( ef' df ef  f8-.) gf-. } \\ { f,2 } >> |
    f'4( f,) |
    \clef bass bf,16-\slurShapeL ( c32 d! ef f g a \clef treble bf4)~ |
    bf16_( c32 d ef f g a bf4~ |
    bf16 a g f ef4 |
    d8 ef f-.) f,-. |
    \clef bass bf,16-\slurShapeL ( c32 d ef f g a \clef treble bf4)~ |
    bf16_( c32 d ef f g a bf4~ |
    
    \barNumberCheck 81
    bf16 a g f ef4 |
    d8 ef f-.) f,-. |
    \clef bass d8( ef f-.) ef-. |
    d8( ef f-.) ef-. |
    d8( ef f-.) f,-. |
    bf4-> r |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \grace { s8 } s2-\tweak Y-offset #-1 \p |
    s2*5 |
    s2-\tweak Y-offset #-2 \f |
    s8 s4.\p |
    
    \barNumberCheck 9
    s2 |
    s2-\tweak Y-offset #-2 \f |
    s8 s4.\p |
    s4\< s8\f\> s\! |
    s4\f s8\> s\! |
    s8 s4.\p |
    s2 |
    s8 s4\mf s8\f |
    
    \barNumberCheck 17
    s2*2 |
    s4\f\> s\p |
    s4\f\> s\p |
    s4\f\> s\p |
    \override DynamicLineSpanner.Y-offset = #1
    s8 s4\f\>_\rit s8\! |
    s4\f\> s\p |
    s4\f\> s\p |
    
    \barNumberCheck 25
    s4\f\> s\p |
    s8 s4\f\>_\rit s8\! |
    s2\f |
    s2*5 |
    
    \barNumberCheck 33
    s2*4 |
    s2\p\cresc |
    s2 |
    s2-\tweak Y-offset #-1 \f |
    \alternative {
      { s2 | }
      {  
        \barNumberCheck 41
        s2 |
      }
    }
  }
  \repeat volta 2 {
    s2\f |
    s8 s4.-\tweak Y-offset #0 \p |
    s2 |
    s2-\tweak Y-offset #-2 \f |
    s8 s4.\p\< |
    s4\! s8\> s\! |
    s2-\tweak Y-offset #-1.5 \p |
    
    \barNumberCheck 49
    s2 |
    s2-\tweak Y-offset #-2 \cresc |
    s2\mf |
    s4\f\> s\p |
    s4\f\> s\p |
    s4\f\> s\p |
    \override DynamicLineSpanner.Y-offset = #1.5
    s8 s4\f\>_\rit s8\! |
    s2-\tweak Y-offset #-3 \f |
    
    \barNumberCheck 57
    s2*3 |
    s4\f\> s\p |
    s4\f\> s\p |
    s4\f\> s\p |
    s4\f\> s\p |
    s2\f |
    
    \barNumberCheck 65
    s2*2 |
    s4\f\> s\p |
    s4\f\> s\p |
    s4\f\> s\p |
    s8 s4\f\>_\rit s8\! |
    s4\f\> s\p |
    s4\f\> s\p |
    
    \barNumberCheck 73
    s4\f\> s\p |
    s8 s4\f\>_\rit s8\! |
    s2-\tweak Y-offset #-1.5 \f |
    s2*5 |
    
    \barNumberCheck 81
    s2*2 |
    s2-\tweak Y-offset #1 \p-\tweak Y-offset #1.5 \cresc |
    s2 |
    s8.\f s16-\tweak Y-offset #1 ^\rit s4 |
    s2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro vivo" 4 = 108
    \grace { s8 } s2*16 |
    
    \barNumberCheck 17
    s2*5 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4 = 92 s4 \tempo 4 = 80 s8 |
    \tempo 4 = 108 
    s2*2 |

    \barNumberCheck 25
    s2 |
    s8 \tempo 4 = 92 s4 \tempo 4 = 80 s8 |
    \tempo 4 = 108 
    s2*6 |

    \barNumberCheck 33
    s2*7 |
    \alternative {
      { s8 \tempo 4 = 100 s \tempo 4 = 92 s \tempo 4 = 84 s | }
      {  
        \barNumberCheck 41
        s2 |
      }
    }
  }
  \repeat volta 2 {
    \tempo 4 = 108
    s2*7 |
    
    \barNumberCheck 49
    s2*6 |
    s8 \tempo 4 = 92 s4 \tempo 4 = 80 s8 |
    \tempo 4 = 108 
    s2 |
    
    \barNumberCheck 57
    s2*8 |
    
    \barNumberCheck 65
    s2*5 |
    s8 \tempo 4 = 92 s4 \tempo 4 = 80 s8 |
    \tempo 4 = 108 
    s2*2 |
    
    \barNumberCheck 73
    s2 |
    s8 \tempo 4 = 92 s4 \tempo 4 = 80 s8 |
    \tempo 4 = 108 
    s2*6 |
    
    \barNumberCheck 81
    s2*4 |
    \tag layout { s2*2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4 = 100 s \tempo 4 = 92 s \tempo 4 = 84 s |
          s2 |
        }
        {
          s8 \tempo 4 = 96 s \tempo 4 = 84 s \tempo 4 = 72 s |
          \tempo 4 = 40 s2 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  \grace { s8 } s2*4 \break
  \grace { s8 } s2*4 \break
  s2*4 \break
  \grace { s8 } s2*5 \break
  \grace { s16 } s2*5 \pageBreak
  
  % page 2
  s2*5 \break
  s2*3 \break
  s2*3 \break
  s2*3 \break
  s2*4 \pageBreak
  
  % page 3
  s2*5 \break
  s2*5 \break
  s2*5 \break
  s2*3 \break
  s2*4 \pageBreak
  
  % page 4
  s2*5 \break
  s2*6 \break
  s2*4 \break
  s2*4 \break
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

% Can't use articulate.ly because of the initial grace problem, see README.md
% \include "articulate.ly"

\score {
  \keepWithTag midi
  \unfoldRepeats <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
