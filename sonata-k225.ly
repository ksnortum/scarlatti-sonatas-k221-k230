%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.225"
  source = "https://ks15.imslp.org/files/imglnks/usimg/2/27/IMSLP914090-PMLP496419-E4526_21-25-Scarlatti_-_Keyboard_Sonatas,_L.346-362.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.2 . 0) (0.2 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeD = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'(
                        ((0 . -1) (1 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (-1 . 1) (0 . -2))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 1) (0 . -1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 3)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeI = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'((0 . -2) (0 . 4) (0 . 1) (0 . -2)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 3) (0 . 2))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeL = \shape #'((0 . -1) (0 . 0) (0 . 0.5) (0 . -1)) \etc
slurShapeM = \shape #'((0 . -2) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeN = \shape #'((0 . -2.5) (0 . 1) (0 . 0.5) (0 . -1)) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0.5) (0 . 1))
                      ) \etc

moveGraceA = \once \override Score.GraceSpacing.spacing-increment = #5.2

%
% Music
%

global = {
  \time 3/4
  \key c \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    c''8( e16 d  e8 g16 f  g8 c16 b |
    c2) g4( |
    a16 g f e  d c b a  g) r r8 |
    r4 g'8( f16 e  d8 c) |
    \appoggiatura { c16 } b8-\slurShapeA ( a16 g)  g'8( f16 e  d8 c) |
    \appoggiatura { c16 } b8-\slurShapeA ( a16 g)  g'8( f16 e  d8 c) |
    g16-\slurShapeB ( fs' g d  e c d b  \stemDown c a d fs, |
    \stemNeutral g fs g d  e c d b  c a d fs, |
    
    \barNumberCheck 9
    g16) r r8 r4 r |
    r8 d''8-.[ d-. d-.]  d8.(\trill cs32 d |
    a'8-.) fs( \appoggiatura { e8 } d4. c8 |
    b8)[ d-. d-. d-.]  d8.(\trill cs32 d |
    a'8-.) fs( \appoggiatura { e8 } d4. c8 |
    b8)[ d-. d-. d]( f ef) |
    \appoggiatura { f16 } ef8( d16 c  ef8[) ef( g f]) |
    \appoggiatura { g16 } f8( ef16 d  f8[) f( af g]) |
    
    \barNumberCheck 17
    \appoggiatura { af16 } g8( f16 ef  g8) a16( bf  a8 g) |
    fs16-\slurShapeC ( g a d,  ef f g a,  bf c d g, |
    fs16) r r8 r4 r |
    R2. |
    r8 d'-.[ d-. d-. d-. d]-\slurShapeE \( |
    \voiceOne \grace { \once \slurDown ef32( } \afterGrace 15/16 
      ef2)-\insideSlur \trill { d32 ef} c'8 bf16 a |
    \appoggiatura { \moveGraceA g8 } fs2 \oneVoice <d g>4~ |
    g8 a16 bf \appoggiatura { c!32 } b4. a16 g\) |
    
    \barNumberCheck 25
    \appoggiatura { g16 } fs8( e!16 d) <d d'>4 q |
    \voiceOne d'8( c)  c16( bf) bf( a)  a( g fs g) |
    \appoggiatura { g8 } fs4 fs g |
    \oneVoice g,16( a bf c) \appoggiatura { c16 } bf8( a16 g 
      \appoggiatura { bf16 } a8 g16 fs |
    g8)[ d'-. d-. d-. d-. d]-\slurShapeE \( |
    \voiceOne \grace { \once \slurDown ef32( } \afterGrace 15/16 
      ef2)-\insideSlur \trill { d32 ef} c'8 bf16 a |
    \appoggiatura { \moveGraceA g8 } fs2 \oneVoice <d g>4~ |
    g8 a16 bf \appoggiatura { c!32 } b4. a16 g\) |
    
    \barNumberCheck 33
    \appoggiatura { g16 } fs8( e!16 d) <d d'>4 q |
    \voiceOne d'8( c)  c16( bf) bf( a)  a( g fs g) |
    \appoggiatura { g8 } fs4 fs g |
    \oneVoice g,16( a bf c) \appoggiatura { c16 } bf8( a16 g 
      \appoggiatura { bf16 } a8 g16 fs |
    g16) g'( b,! c  d b c a  b g d' fs, |
    g16) g-\slurShapeF ( b, c  d b c a  b g d' fs, |
    g16) r r8 r4 r |
    r8 g''([ d) d-.] \appoggiatura { e16 } d8( c16 b |
    
    \barNumberCheck 41
    a8)[ a'( fs c])  c8.(\trill b32 c |
    b8)[ b'( g d])  d8.(\trill c32 b |
    a8) e_(~  e16 fs g a  a8.\trill g32 a |
    g8)[ g'8( d) d-.] \appoggiatura { e16 } d8( c16 b |
    a8)[ a'( fs c])  c8.(\trill b32 c |
    b8)[ b'( g d])  d8.(\trill c32 b |
    a8) e(~  e16 fs g a  a8.\trill g32 a |
    \alternative {
      { g4) r r | }
      {  
        \barNumberCheck 49
        \stemDown g8_\repeatTie( b16 a  b8 d16 c  d8 g16 fs |
      }
    }
  }
  \repeat volta 2 {
    g2 f!4~ |
    f2 e4~ |
    e2) a16( g f e |
    f16 g f e  f e d c  d c b a |
    gs16) ds'-\slurShapeG ( e b \stemNeutral c gs a ds,  e b c gs |
    a16) r r8 r4 r8 b'8--( |
    b8-.) f'8-\slurShapeH (~  f8 e16 d  c b a gs |
    
    \barNumberCheck 57
    a8-.) a(~  a16 b c d) \appoggiatura { d16 } c8( b16 a) |
    a8-. a'(~  a16 b, c d) \appoggiatura { d16 } c8( b16 a) |
    a8-. a'(~  a16 b, c d) \appoggiatura { d16 } c8( b16 a) |
    a8-. a'\(~  a16 b, c d \grace { c16( } c8.)-\insideSlur \trill b32 c |
    b8-.\) b'\(~  b16 c, d e \grace { d16( } d8.)-\insideSlur \trill c32 d |
    c8-.\) c'(~  c16 c, d e  d8\prall c |
    d8-.) g->(~  g8 f!16 e  d8 c) |
    \appoggiatura { c16 } b8-\slurShapeI ( a16 g)  g'8( f16 e  d8 c) |
    
    \barNumberCheck 65
    \appoggiatura { c16 } b8-\slurShapeI ( a16 g)  g'8( f16 e  d8 c |
    b16) \osp #'(0 . -0.5) fs'( g d  e c d b  \stemDown c a d fs, |
    \stemNeutral g16 fs g d  e c d b  c a d fs, |
    g16) r r8 r4 r |
    r8 g''-. g-. g-. g-. g-\slurShapeJ \( |
    \voiceOne \grace { \once \slurDown af32( } \afterGrace 15/16
      af2)-\insideSlur \trill { g32 af } d8 c |
    b!2 \oneVoice <g c>4~ |
    c16 c, d ef \appoggiatura { f!32 } ef4.\trill d16 c\) |
    
    \barNumberCheck 73
    \appoggiatura { c16 } b8( a16 g  g'4) g-- |
    % under lower staff
    \voiceFour g8( f)  f16( ef) ef( d)  d( c b c) |
    \appoggiatura { c8 } b4~ \oneVoice b16 b'( a b  c g f g |
    \appoggiatura { bf16 } af8 g16 f)  \appoggiatura { f16 } ef8( d16 c
      \appoggiatura { ef16 } d8 c16 b! |
    c8) g'-. g-. g-. g-. g\( |
    \voiceOne \grace { \once \slurDown af32( } \afterGrace 15/16
      af2)-\insideSlur \trill { g32 af } d8 c |
    b!2 \oneVoice <g c>4~ |
    c16 c, d ef  \appoggiatura { f!32 } ef4.\trill d16 c\) |
    
    \barNumberCheck 81
    \appoggiatura { c16 } b8( a16 g  g'4) g-- |
    % under lower staff
    \voiceFour g8( f)  f16( ef) ef( d)  d( c b c) |
    \appoggiatura { c8 } b4~ \oneVoice b16 b'( a b  c g f g |
    % appoggiatura: source has a b natural
    \appoggiatura { bf16 } af8 g16 f)  \appoggiatura { f16 } ef8( d16 c
      \appoggiatura { ef16 } d8 c16 b! |
    % under lower staff
    c16-.) c'-\slurShapeK ( e,! f  g e f d \voiceFour e c d b |
    \oneVoice c16) \osp #'(0 . 2) e( e, f  g e f d \voiceFour e c d b |
    \oneVoice c16) r r8 r4 r |
    r4 r c''16( g e c |
    
    \barNumberCheck 89
    a'16 f c a)  a-\slurShapeL ( b c d  d8.-\insideSlur \trill c32 d) |
    c'16( g e c  a'f) a,32-\slurShapeM ( b c d  d8.-\insideSlur \trill c32 d) |
    c'16( g e c  a'f) a,32-\slurShapeN ( b c d  d,8.-\insideSlur \trill c32 d |
    \alternative {
      { 
        c4) r r |
        g'8( b16 a  b8 d16 c  d8 g16 fs) |
      }
      {  
        c,4^\repeatTie r r |
      }
    }
  }
  % Source has repeats after the 2nd volta
  \fine
}

rightHandLower = \relative {
  \repeat volta 2 {
    s2.*16 |
    
    \barNumberCheck 17
    s2.*5 |
    \voiceFour ef''2.~ |
    ef2 s4 |
    s2. |
    
    \barNumberCheck 25
    s2. |
    ef4 ef c |
    c4 ef16( d) d( c)  c( bf a g) |
    s2.*2 |
    ef'2.~ |
    ef2 s4 |
    s2. |
    
    \barNumberCheck 33
    s2. |
    ef4 ef c |
    c4 ef16( d) d( c)  c( bf a g) |
    s2.*5 |
    
    \barNumberCheck 41
    s2.*7 |
    \alternative {
      { s2. | }
      {
        \barNumberCheck 49
        s2. |
      }
    }
  }
  \repeat volta 2 {
    s2.*7 |
    
    \barNumberCheck 57
    s2.*8 |
    
    \barNumberCheck 65
    s2.*5 |
    af'2.~ |
    af2 s4 |
    s2. |
    
    \barNumberCheck 73
    s2. |
    % over lower staff
    \voiceOne af2.->~ |
    af4 s2 |
    s2.*2 |
    \voiceFour af2.~ |
    af2 s4 |
    s2. |
    
    \barNumberCheck 81
    s2. |
    % over lower staff
    \voiceOne af2.~ |
    af4 s2 |
    s2. |
    s2 g4 |
    s2 g,4 |
    s2.*2 |
    
    \barNumberCheck 89
    s2.*3 |
    \alternative {
      { s2.*2 | }
      { s2. | }
    }
  }
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s2.*16 |
    
    \barNumberCheck 17
    s2.*4 |
    s4 \voiceThree d4( d') |
    d4( c8 bf c4) |
    c4( bf8 a bf4) |
    s2. |
    
    \barNumberCheck 25
    s2.*4 |
    s4 \voiceThree d,4( d') |
    d4( c8 bf c4) |
    c4( bf8 a bf4) |
    s2. |
    
    \barNumberCheck 33
    s2.*7 |
    g2. |
    
    \barNumberCheck 41
    c2( d4) |
    d2. |
    s2. |
    g,2. |
    c2( d4) |
    d2. |
    s2. |
    \alternative {
      { s2. | }
      {
        \barNumberCheck 49
        s2. |
      }
    }
  }
  \repeat volta 2 {
    s2.*7 |
    
    \barNumberCheck 57
    s2.*8 |
    
    \barNumberCheck 65
    s2.*4 |
    s4 g,( g') |
    g4( f8 ef f4) |
    f4( ef8 d ef4) |
    s2. |
    
    \barNumberCheck 73
    s2.*4 |
    s4 g,( g') |
    g4( f8 ef f4) |
    f4( ef8 d ef4) |
    s2. |
    
    \barNumberCheck 81
    s2.*8 |
    
    \barNumberCheck 89
    s2.*3 |
    \alternative {
      { s2.*2 | }
      { s2. | }
    }
  }
}

leftHandLower = \relative {
  \override Parentheses.font-size = #-2
  \repeat volta 2 {
    \parenthesize c4 r r |
    c8( e16 d  e8 g16 f  g8 c16 b |
    c4) r r16 f( e d |
    c16 a g f  <e c'>4)_( <f a d> |
    <f b d>4) <e c'>4_( <f a d> |
    <f b d>4) <e c'>4_( <f a d>) |
    <g, g'>2 r4 |
    R2. |
    
    \barNumberCheck 9
    r16 fs'_( g d  e c d b  c a d fs, |
    g4) g'-.( g-.) |
    \addStaccato {
      <fs c'! d>4( q q) |
      <g d'>4( q q) |
      <fs c'! d>4( q q) |
      <g d'>4( q q) |
    }
    <af f'>4-.( q-.) <a f'>_( |
    <bf f'>4-.)( q-.) <b g'>_( |
    
    \barNumberCheck 17
    <c g'>-.)( q-.) <cs g'>_( |
    d2) r4 |
    r16 d( ef cs  d a bf fs  g d ef cs |
    d16 a bf fs  g8-.) f-. \grace { ef16( } \afterGrace 15/16
      ef4)-\slurShapeD (\trill { d32 ef } |
    d4) \voiceTwo d'2 |
    d2 d4 |
    d2 d4 |
    \oneVoice <cs bf'>4-.( q-. q-.) |
    
    \barNumberCheck 25
    d4 d'16( c! bf a  g f ef d |
    c4) <c c'> q_( |
    <d c'>4) q_( ef |
    <c g' c>4) <d g bf>( <d a'> |
    g4) \voiceTwo d2 |
    d2 d4 |
    d2 d4 |
    \oneVoice <cs bf'>4-.( q-. q-.) |
    
    \barNumberCheck 33
    d4 d'16( c! bf a  g f ef d |
    c4) <c c'> q_( |
    <d c'>4) q_( ef |
    <c g' c>4) <d g bf>( <d a'>) |
    g,4_( d' d, |
    g4 d' d,) |
    r16 g'( b, c  d b c a  b g d' fs,) |
    \voiceTwo g4( b g) |
    
    \barNumberCheck 41
    c4( d2) |
    g4( b g |
    \oneVoice c,4 d d,) |
    \voiceTwo g4( b g) |
    c4( d2) |
    g4( b g |
    \oneVoice c,4 d d, |
    \alternative {
      { g8.) a'16( g8 f! e d) | }
      {
        \barNumberCheck 49
        g,4\repeatTie r r |
      }
    }
  }
  \repeat volta 2 {
    g8( b16 a  b8 d16 c  d8 f!16 e |
    f8 a16 gs  a8 c16 b  c8 e16 d |
    e8 \clef treble a16 gs  a8 c16 b c4) |
    d,4( e f |
    e4) r r |
    \clef bass r16 ds,( e b  c gs a ds, e4) |
    \addStaccato {
      <d' gs b>4( q q) |
      
      \barNumberCheck 57
      <c e a>4( q q) |
      <d a' b>4( q q) |
      <e a c>4( q q) |
      <f c' d>4( q q) |
      <g d'>4( q q) |
    }
    <a c fs>4-( q-.) q_( |
    b4)c4-.( <f, c'>-.) |
    <f b>4( <e c'>--) <f c'>-- |
    
    \barNumberCheck 65
    <f b>4( <e c'>--) <f c'>-- |
    g4 r r |
    R2. |
    r16 fs( g d  e c d b  c a d fs, |
    g4) \voiceTwo g'2 |
    g2 g4 |
    g2 g4 |
    \oneVoice <fs ef'>4-.( q-. q-.) |
    
    \barNumberCheck 73
    g4 g'16( f ef d  c bf af g |
    f4) <f f'> q_( |
    <g f'>4) q \osp #'(0 . 2.5) c4( |
    f,4 g g, |
    c4) \voiceTwo g'2 | % start
    g2 g4 |
    g2 g4 |
    \oneVoice <fs ef'>4-.( q-. q-.) |
    
    \barNumberCheck 81
    g4 g'16( f ef d  c bf af g |
    f4) <f f'> q_( |
    <g f'>4) q c4-\slurShapeO ( |
    f,4 g g, |
    c4 g' g, |
    c4 g' g,) |
    r16 c'( e, f  g e f d  e c g' b, |
    c16 g a b  c e, f g c,4)_( |
    
    \barNumberCheck 89
    f4) f( g |
    c4) <f, f'>( <g g'> |
    c4) f,( g |
    \alternative {
      { 
        <c, c'>4) r r |
        R2. |
      }
      { 
        <c\repeatTie c'>4 r r |
      }
    }
  }
  \fine
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
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2.\f |
    s2.*3 |
    s4 s2\p\cresc |
    s2. |
    s2.-\tweak Y-offset #-2 \f |
    s2. |
    
    \barNumberCheck 9
    s2. |
    s8 s4.-\tweak extra-offset #'(0 . -1.5) \p s4\< |
    s4\! s4.\> s8\! |
    s2 s4\< |
    s4\! s4.\> s8\! |
    s2.\cresc |
    s2.*2 |
    
    \barNumberCheck 17
    s2. |
    s2.-\tweak Y-offset #-1 \f |
    s2.*2 |
    s8 s\p\< s2 |
    s2.\mf |
    \grace { s8\> } s2.\! |
    s4\< s2\! |
    
    \barNumberCheck 25
    s4 s2\f |
    s2.*3 |
    s8 s\p\< s2 |
    s2.-\tweak Y-offset #0.5 \mf |
    \grace { s8\> } s2.\! |
    s4\< s2\! |
    
    \barNumberCheck 33
    s4 s2\f |
    s2.*6 |
    s2\f\> s4\p |
    
    \barNumberCheck 41
    s2.\cresc |
    s2. |
    s8 s\f s2 |
    s8 s4.\> s4\p |
    s2.\cresc |
    s2. |
    s8 s-\tweak Y-offset #-2 \f s2 |
    \alternative {
      { s2. | }
      {
        \barNumberCheck 49
        s2.\f |
      }
    }
  }
  \repeat volta 2 {
    s2.*5 |
    s2 s8 s\mf |
    s2. |
    
    \barNumberCheck 57
    s2. |
    s2.\p |
    s2.\cresc |
    s2.*2 |
    s2.\f |
    s4 s2\p |
    s2.\cresc |
    
    \barNumberCheck 65
    s2. |
    s2.\f |
    s2.*2 |
    s8 s\p\< s2 |
    s2.\mf |
    \grace { s8\> } s2.\! |
    s4\< s2\! |
    
    \barNumberCheck 73
    s4 s2\f |
    s2.*3 |
    s8 s\p\< s2 |
    s2.-\tweak Y-offset #0 \mf |
    \grace { s8\> } s2.\! |
    s4\< s2\! |
    
    \barNumberCheck 81
    s4 s2\f |
    s2.*3 |
    s2.^\sempreF |
    s2.*3 |
    
    \barNumberCheck 89
    s2.*3 |
    \alternative {
      { 
        s2. |
        s2.\f | 
      }
      {  
        s2. |
      }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 126
    s2.*40 |
    
    \barNumberCheck 41
    s2.*7 |
    \set Score.tempoHideNote = ##t
    \alternative {
      { \tempo 4 = 116 s4 \tempo 4 = 108 s \tempo 4 = 100 s | }
      {
        \barNumberCheck 49
        s2. |
      }
    }
  }
  \repeat volta 2 {
    s2.*7 |
    
    \barNumberCheck 57
    s2.*32 |
    
    \barNumberCheck 89
    s2.*2 |
    \tag layout {
      s2. |
      \alternative {
        { s2.*2 | }
        { s2. | }
      }
    }
    \tag midi {
      \alternative {
        {
          \tempo 4 = 116 s4 \tempo 4 = 108 s \tempo 4 = 100 s |
          s2. |
          \tempo 4 = 126 s2. |
        }
        {
          \tempo 4 = 112 s4 \tempo 4 = 100 s \tempo 4 = 88 s |
          \tempo 4 = 40 s2. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2.*4 \break
  \grace { s16 }s2.*4 \break
  s2.*5 \break
  s2.*5 \break
  s2.*4 \break
  \grace { s8 } s2.*4 \pageBreak
  
  % page 2
  \grace { s8 } s2.*4 \break
  \grace { s8 } s2.*4 \break
  \grace { s8 } s2.*4 \break
  s2.*5 \break
  s2.*5 \pageBreak
  
  % page 3
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  \grace { s16 } s2.*4 \break
  s2.*5 \pageBreak
  
  % page 4
  s2.*4 \break
  \grace { s32 } s2.*4 \break
  s2.*4 \break
  s2.*4 \break
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
