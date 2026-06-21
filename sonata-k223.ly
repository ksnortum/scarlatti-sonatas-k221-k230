%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.223"
  source = "https://s9.imslp.org/files/imglnks/usimg/4/4f/IMSLP914849-PMLP297266-E4484_31-34-Scarlatti_-_Keyboard_Sonatas,_L.206-220.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                    ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (-1 . -1))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 2) (0 . 1.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -2))
                        ((-1 . -0.7) (-1 . -0.7) (-1 . -0.7) (-1 . -0.7))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0.7) (0.5 . 0.5) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . -1.5) (0 . 1.5) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 2/2
  \key d \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    d''4-. d( a' g) |
    fs4(\prall e8 fs  g e cs a |
    fs'2) e\prall |
    d2(\prall e) |
    \appoggiatura { e4 } fs2 a8( fs d a |
    \appoggiatura { as4 } b2) a'!8( fs d cs) |
    \appoggiatura { cs4 } d2 a'8( g fs e |
    fs8 d e b  d4-.) cs-.\prall |
    
    \barNumberCheck 9
    d4-. d'8( a  fs d a fs |
    <g a cs>4-.) g'8( e  cs g e cs |
    <d fs a>4-.) d''8( a  fs d a fs |
    <g a cs>4-.) g'8-\slurShapeA ( e  cs g e cs |
    <d fs a>4-.) a''2( fs4 |
    e4-.) a2( e4 |
    d4-.) b'2( d,4 |
    cs4) a'2( e4 |
    
    \barNumberCheck 17
    fs4-.) a2( fs4 |
    e4-.) a2( e4) |
    e8( fs e d  cs b a gs |
    a4-.) a'8( e  cs a e cs |
    <d fs a>4-.) a''8( fs  d a fs d |
    <cs e a>4) \osp #'(0 . -1) a''8( e  cs a e cs |
    fs8 d d' b  cs4-.) b-.\prall |
    a4-. a'(~  a8 gs b d,) |
    
    \barNumberCheck 25
    d8( c) a'4(~  a8 gs b d,) |
    d8( c) c'4-\slurShapeC (~  c8 b a b~ |
    b8 a gs a~  a g fs g~ |
    g8 f e f~  f e ds e~ |
    e8 d! cs d~  d c b c |
    << 
      { \voiceFour b8 c d e  d c b a | b4) } 
      \new Voice { s2. \voiceOne a'4( | gs4) } 
    >>
    \oneVoice b8( gs  e b gs e) |
    <e a cs>4-. cs''8( a  e cs a e) |
    
    \barNumberCheck 33
    <e gs b d>4-. b''8( gs  e b gs e) |
    <e a cs>4-. cs''8( a  e cs a e) |
    <e gs b d>4-. b''8( gs  e b gs e |
    cs'8 a d b  cs4-.) b-.\prall |
    a4-. a'2( e4 |
    fs4-.) a2( fs4 |
    e4-.) a2( e4) |
    e8( fs e d  cs b a gs |
    
    \barNumberCheck 41
    a4) a'2( e4 |
    fs4-.) a2( fs4 |
    e4-.) a2( e4) |
    e8( fs e d  cs b a gs |
    a4-.) a'8( e  fs d e b |
    cs8 gs a e) \appoggiatura { cs'16 } b2(\trill |
    a4-.) a8( e  fs d e b |
    cs8 a a' e) \appoggiatura { cs'16 } b2_(\trill |
    \alternative {
      { 
        \barNumberCheck 49
        a4-.) r r2 | 
      }
      { a4-.\repeatTie a'8( e  cs a e cs) | }
    }
    \section
  }
  \repeat volta 2 {
    <cs e g!>4-. g''8( e  cs g e cs) |
    <d fs a>4-. a''8( fs  d a fs d |
    <e g c>4-.) c''8( g  e c g e) |
    <a d fs>4-. a'8( fs  c a fs d) |
    <d g b>4-. b''2( g4 |
    a4-.) a2( fs4 |
    
    \barNumberCheck 57
    g4-.) g2( e4 |
    fs4-.) fs2( d4 |
    e4-.) e2( a,4 |
    b4-.) b'8( fs  ds b fs ds) |
    <b e g>4-. b''8( g  e b g e |
    <b ds fs>4-.) b''8-\slurShapeE ( fs  ds b fs ds |
    <b e g>4-.) b''8( g  e b g e |
    <b ds fs>4-.) b''2( fs4 |
    
    \barNumberCheck 65
    g4-.) b2( e,4 |
    c'4-.) c2( a4 |
    b4-.) b2 b4(~ |
    b8 a g fs  g e fs ds |
    e4-.) e4(~  e8 ds fs a,) |
    a8( g) e'4(~  e8 ds fs a,) |
    << 
      { s4 \osp #'(2 . 0) g'4(~  g8 fs a c,) | } 
      \\ 
      { a8( g) b( cs!  d!4) s | } 
    >>
    c8( b) g'4(~  g8 fs a c,) |
    
    \barNumberCheck 73
    c8( b) c'4(~  c8 b d f,) |
    f8( e) c'4(~  c8 b d f,) |
    f8( e) a4(~  a8 gs b d,) |
    d8( c) a'4(~  a8 gs b d,) |
    d8( cs!) <d, d'>4(~  d'8 cs e g,) |
    g8( f) <d d'>4-\slurShapeF (~  d'8 cs e g~ |
    g8 f e f~  f e ds e~ |
    e8 d! cs d~  d c b c~ |
    
    \barNumberCheck 81
    c8 bf a bf~  bf a gs a~ |
    a8 g f g~  g f e f |
    << 
      { \voiceFour e8 f g a  g f e d | e4) } 
      \new Voice { s2. \voiceOne d'4-\slurShapeG ( | cs!4) } 
    >>
    \oneVoice g'8( e  cs g e cs |
    <d fs! a>4-.) d''8( a  fs d a fs) |
    <e g a cs>4-. g'8( e  cs g e cs |
    <d fs a>4-.) d''8( a  fs d a fs) |
    <e g a cs>4-. g'8( e  cs g e cs) |
    
    \barNumberCheck 89
    fs8( d' b g'  d4-.) cs-.\prall |
    d4-. a'2( fs4 |
    b4-.) b2( g4 |
    a4-.) a2( fs4 |
    g4-.) g2( e4 |
    d4-.) a'2( fs4 |
    b4-.) b2( g4 |
    a4-.) a2( fs4) |
    
    \barNumberCheck 97
    \osp #'(-1 . 0) b,8( g' fs e  fs d e cs |
    d4-.) a'2( fs4 |
    b4-.) b2( g4 |
    a4-.) a2( fs4 |
    g4-.) g2( e4 |
    d4-.) a'2( fs4 |
    b4-.) b2( g4 |
    a4-.) a2( fs4) |
    
    \barNumberCheck 105
    b,8-\slurShapeI ( g' fs e  fs d e cs |
    d4-.) d'8( a  b g a e |
    fs8 cs d a) \appoggiatura { fs'16 } e2(\trill |
    d4-.) d8( a  b g a e |
    fs8 cs d a) \appoggiatura { fs'16 } e2(\trill |
    \alternative {
      { d4-.) a''8( e cs a e cs) | }
      { d4-.\repeatTie r r2 | }
    }
  }
  \fine
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s1*6 |
    s2 \voiceThree e' |
    s2 fs4-. e-. |
    
    \barNumberCheck 9
    s1*8 |
    
    \barNumberCheck 17
    s1*6 |
    \osp #'(-1 . 0) d,4( d' <a cs>-.) <gs b>-. |
    s1 |
    
    \barNumberCheck 25
    s4 \clef treble \hideNoteHead a4_( s \hideNoteHead a |
    a'4) f'2( e4~ |
    e4 d2 c4~ |
    c4 b2 a4~ |
    a4 g2 f4~ |
    f4 e2 d4) |
    s1*2 |
    
    \barNumberCheck 33
    s1*16 |
    \alternative {
      { 
        \barNumberCheck 49
        s2 \clef bass fs,8( d' e, cs') | 
      }
      { s1 | }
    }
  }
  \repeat volta 2 {
    s1*6 |
    
    \barNumberCheck 57
    s1*8 |
    
    \barNumberCheck 65
    s1*6 |
    s4 \oneVoice e,( \voiceThree d! <a' c>) |
    d,4( <g b>) d( <a' c>) |
    
    \barNumberCheck 73
    g4( <c e>) g( <d' f>) |
    g,4( <c e>) g( <d' f>) |
    s1*4 |
    d4( bf'2 a4~ |
    a4 g2 f4~ |
    
    \barNumberCheck 81
    f4 e2 d4~ |
    d4 c2 bf4~ |
    bf4 a2 g4) |
    s1*5 |
    
    \barNumberCheck 89
    s1*8 |
    
    \barNumberCheck 97
    g,4( g') <d fs>-. <cs e>-. |
    s1*7 |
    
    \barNumberCheck 105
    \osp #'(-1 . 0) g4( g' <d fs>-.) <cs e>-. |
    s1*4 |
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R1*2 |
    d'4-. d( a' g) |
    fs4(\prall e8 fs  g e cs a |
    d,2) <fs d'>4-.( q-.) |
    \addStaccato { <g d'>4( q) <a e'>( q) } |
    <b d>4-.( q-.) \voiceTwo cs4( a |
    d4 <g, e'> a2) |
    
    \barNumberCheck 9
    \oneVoice <d, d'>2 r |
    <a a'>2 r |
    <d, d'>2 r |
    <a' a'>2 r |
    <d, d'>4 \clef treble d'''8( a  fs d \clef bass a[ d,] |
    cs4-.) \clef treble \stemUp cs''8( a  e cs \clef bass \stemNeutral
      a[ cs,] |
    b4-.) \clef treble b''8( gs  d b \clef bass gs[ b,] |
    a4-.) \osp #'(0 . 2.5) a''8( e  cs a e a, |
    
    \barNumberCheck 17
    d,4-.) d''8-\slurShapeB ( a  fs d a d, |
    cs4-.) a'''8( e  cs a e cs |
    d4 fs e) e,-. |
    <a a'>2 r |
    <d, d'>2 r |
    <a' a'>2 r |
    \voiceTwo d2( e) |
    \oneVoice <a, a'>4 \clef treble <a' e'>( <a f'> <a gs'> |
    
    \barNumberCheck 25
    <a a'>4) <a e'> <a f'> <a gs'> |
    \voiceTwo a'2( g |
    f2 e |
    d2 c |
    b2 a |
    g2 f) |
    \clef bass \oneVoice <e b' e>2 r |
    <a, a'>2 r |
    
    \barNumberCheck 33
    <e e'>2 r |
    <a a'>2 r |
    <e e'>2 r |
    a'4( d, e-.) e,-. |
    a4-. \osp #'(0 . 2.5) a''8( e  cs a e a, |
    d,4-.) d''8( a  fs d a d, |
    cs4-.) a'''8( e  cs a e cs |
    d4 fs e-.) e,-. |
    
    \barNumberCheck 41
    a4-. \osp #'(0 . 2.5) a''8( e  cs a e a, |
    d,4-.) d''8( a  fs d a d, |
    cs4-.) a'''8( e  cs a e cs |
    d4 fs e-.) e,-. |
    a4-. cs'( d gs, |
    a4 cs, d e |
    a,4-.) cs( d gs, |
    a4 cs, d e |
    \alternative {
      { 
        \barNumberCheck 49
        a4-.) \voiceTwo a'8( g!  fs4 e) | 
      }
      { <a, a'>1 | }
    }
    \section
  }
  \repeat volta 2 {
    \oneVoice <g! e' g!>1 |
    <fs d' fs>1 |
    <e c' e>1 |
    <d a' d>1 |
    <g g'>4 \osp #'(0 . 2.5) g''8( d  b g d g, |
    fs4-.) d''8-\slurShapeD ( b  a fs d fs, |
    
    \barNumberCheck 57
    e4-.) e''8( c  g e c e, |
    d4-.) d''8( b  fs d b d, |
    c4-.) c''8( a  e c a c, |
    b1) |
    <b e g b>1 |
    <b fs' b>1 |
    <b e g b>1 |
    <b fs' b>4 \osp #'(0 . 2.5) b'''8( fs  ds b fs b, |
    
    \barNumberCheck 65
    e,4-.) \osp #'(0 . 2.5) e''8( b  g e b e, |
    a4-.) \osp #'(0 . 2.5) a''8( e  c a e a, |
    g4-.) \osp #'(0 . 2.5) g''8( e  b g e g, |
    a4-.) c( b-.) b, |
    e'4-. <e b'>( <e c'> <e ds'> |
    <e e'>4) <e b'>( <e c'> <e ds'> |
    <e e'>4) s4 \voiceTwo d2 |
    d2 d |
    
    \barNumberCheck 73
    g2 g |
    g2 g |
    \oneVoice c,4-. <c a'>( <d a' b>) <e gs b>-. |
    <a, a'>4 <c a'>( <d a' b>) <e gs b>-. |
    <a, a'>4-. <f' a>( <e g!>) <cs! g' a>-. |
    <d a'>4-. <f a>( <e g>) <cs g' a>-. |
    \voiceTwo d'2( c |
    bf2 a |
    
    \barNumberCheck 81
    g2 f |
    e2 d |
    c2 bf) |
    \oneVoice <a a'>2 r |
    <d, d'>2 r |
    <a' a'>2 r |
    <d, d'>2 r |
    <a' a'>2 r |
    
    \barNumberCheck 89
    d4( g a-.) a,-. |
    d4-. \clef treble d''8( a  fs d \clef bass a[ d,] |
    g,4-.) \osp #'(0 . 2.5) g''8( d  b g d g, |
    fs4-.) fs''8( d  a fs d fs, |
    e4-.) e''8( cs  g e cs e, |
    d4-.) \clef treble d'''8-\slurShapeH ( a  fs d \clef bass a[ d,] |
    g,4-.) \osp #'(0 . 2.5) g''8( d  b g d g, |
    fs4-.) d''8( a  fs d a fs) |
    
    \barNumberCheck 97
    \voiceTwo g2 a |
    \oneVoice d4-. \clef treble d''8( a  fs d \clef bass a[ d,] |
    g,4-.) g''8( d  b g d g, |
    fs4-.) fs''8( d  a fs d fs, |
    e4-.) e''8( cs  g e cs e, |
    d4-.) \clef treble d'''8( a  fs d \clef bass a[ d,] |
    g,4-.) \osp #'(0 . 2.5) g''8( d  b g d g, |
    fs4-.) d''8( a  fs d a fs) |
    
    \barNumberCheck 105
    \voiceTwo g2 a |
    \oneVoice fs'4-. fs'( g cs, |
    d4 fs, g a |
    d,4-.) fs( g cs, |
    d4 fs, g a |
    \alternative {
      { <d, d'>4) r r2 | }
      { <d d'^\repeatTie>4 r r2 | }
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
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1-\tweak Y-offset #-2 \mf |
    s1*3 |
    s2 s\p |
    s1 |
    s2 s\cresc |
    s1 |
    
    \barNumberCheck 9
    s1-\tweak Y-offset #-2 \f |
    s1 |
    s4 s2.-\tweak Y-offset #-2 \p |
    s1 |
    s4 s2.-\tweak Y-offset #0.5 \cresc |
    s1 |
    s4 s2.-\tweak Y-offset #0 \f |
    s1 |
    
    \barNumberCheck 17
    s1*3 |
    \override DynamicLineSpanner.Y-offset = #-4.5
    s4 s8\p s\cresc s2 |
    s1 |
    s4 s2.\f |
    s1 |
    s4 s2.\f |
    
    \barNumberCheck 25
    s4 s2.\p |
    s4 s-\tweak Y-offset #0.5 \f s2-\tweak Y-offset #1 \dim |
    s1*2 |
    s8\p s\cresc s2. |
    s1 |
    s4-\tag layout \sf -\tag midi \f s8\p s\cresc s2 |
    s1 |
    
    \barNumberCheck 33
    s1*2 |
    s4 s2.-\tweak Y-offset #-2 \f |
    s1 |
    s4 s8\p s\cresc s2 |
    s1 |
    s4 s2.\f |
    s1 |
    
    \barNumberCheck 41
    s4 s8\p s\cresc s2 |
    s1 |
    s4 s2.\f |
    s1*5 |
    \alternative {
      { 
        \barNumberCheck 49
        s4 s2.\mf |
      }
      { s4\f s8\p s\cresc s2 | }
    }
  }
  \repeat volta 2 {
    s1*4 |
    s4-\tweak Y-offset #-2 \f s8\p s\cresc s2 |
    s1 |
    
    \barNumberCheck 57
    s1*3 |
    \override DynamicLineSpanner.Y-offset = #0
    s1\f |
    s1 |
    s4 s2.\p |
    s1 |
    s4 s8\p s\cresc s2 |
    
    \barNumberCheck 65
    s1 |
    s1-\tweak Y-offset #-2 \f |
    s1*2 |
    s4 s2.\f |
    s4 s2.\p |
    s4 s2.-\tweak Y-offset #-2.5 \f |
    s4 s2.\p |
    
    \barNumberCheck 73
    s4 s2.\f |
    s4 s2.-\tweak Y-offset #1 \p |
    s4 s2.\f |
    s4 s2.\p |
    s4 s2.\f |
    s1 |
    s1\dim |
    s1 |
    
    \barNumberCheck 81
    s1 |
    s1\cresc |
    s1 |
    s4\f s8\p s\cresc s2 |
    s1*3 |
    s4 s2.\f |
    
    \barNumberCheck 89
    s1 |
    \override DynamicLineSpanner.Y-offset = #0.5
    s4 s8\p s\cresc s2 |
    s1*3 |
    s1\f |
    s1*2 |
    
    \barNumberCheck 97
    s1 |
    s4 s8\p s\cresc s2 |
    s1*3 |
    s4 s2.\f |
    s1*2 |
    
    \barNumberCheck 105
    s1*5 |
    \alternative {
      { s4-\tweak Y-offset #-1.5 \f s8\p s\cresc s2 | }
      { s1-\tweak Y-offset #-1 \f | }
    }
  }
}

pedal = {
  \repeat volta 2 {
    s1*8 |
    
    \barNumberCheck 9
    s1*4 |
    s4 s2.\sd |
    s4\su s2.\sd |
    s4\su s2.\sd |
    s4\su s2.\sd |
    
    \barNumberCheck 17
    s4-\tweak Y-offset #-1 \su s2.\sd |
    s4-\tweak Y-offset #-1 \su s2.\sd |
    s1\su |
    s1*5 |
    
    \barNumberCheck 25
    s1*8 |
    
    \barNumberCheck 33
    s1*4 |
    s4 s2.\sd |
    s4-\tweak Y-offset #-1 \su s2.\sd |
    s4-\tweak Y-offset #-1 \su s2.\sd |
    s1\su |
    
    \barNumberCheck 41
    s4 s2.\sd |
    s4-\tweak Y-offset #-1 \su s2.\sd |
    s4-\tweak Y-offset #-1 \su s2.\sd |
    s1\su |
    s1*4 |
    \alternative {
      { 
        \barNumberCheck 49
        s1 | 
      }
      { s1 | }
    }
  }
  \repeat volta 2 {
    s1*4 |
    s4 s2.\sd |
    s4\su s2.\sd |
    
    \barNumberCheck 57
    s4\su s2.\sd |
    s4\su s2.\sd |
    s4-\tweak Y-offset #-1 \su s2.\sd |
    s1-\tweak Y-offset #-0.5 \su |
    s1*3 |
    s4 s2.\sd |
    
    \barNumberCheck 65
    s4-\tweak Y-offset #-1 \su s2.\sd |
    s4\su s2.\sd |
    s4\su s2.\sd |
    s1\su |
    s1*4 |
    
    \barNumberCheck 73 |
    s1*16 |
    
    \barNumberCheck 89
    s1 |
    s4 s2.\sd |
    s4\su s2.\sd |
    s4\su s2.\sd |
    s4\su s2.\sd |
    s4-\tweak Y-offset #-0.5 \su s2.\sd |
    s4\su s2.\sd |
    s4\su s2.\sd |
    
    \barNumberCheck 97
    s1\su |
    s4 s2.\sd |
    s4\su s2.\sd |
    s4\su s2.\sd |
    s4-\tweak Y-offset #-0.5 \su s2.\sd |
    s4-\tweak Y-offset #-1 \su s2.\sd |
    s4\su s2.\sd |
    s4\su s2.\sd |
    
    \barNumberCheck 105
    s1\su |
    s1*4 |
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 108
    s1*48 |
    \set Score.tempoHideNote = ##t
    \alternative {
      { 
        \barNumberCheck 49
        s4 \tempo 2 = 100 s \tempo 2 = 92 s \tempo 2 = 80 s | 
      }
      { s1 | }
    }
  }
  \repeat volta 2 {
    s1*6 |
    
    \barNumberCheck 57
    s1*48 |
    
    \barNumberCheck 105
    s1*4 |
    \tag layout {
      s1 |
      \alternative {
        { s1 | }
        { s1| }
      }
    }
    \tag midi {
      \alternative {
        { 
          s4 \tempo 2 = 100 s \tempo 2 = 92 s \tempo 2 = 80 s |
          \tempo 2 = 72 s4 \tempo 2 = 108 s2. |
        } 
        { 
          s4 \tempo 2 = 96 s \tempo 2 = 84 s \tempo 2 = 72 s |
          \tempo 4 = 40 s4 \tempo 4 = 108 s2. | 
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*6 \break
  \grace { s4 } s1*6 \break
  s1*5 \break
  s1*6 \break
  s1*5 \pageBreak
  
  % page 2
  s1*5 \break
  s1*6 \break
  s1*6 \break
  s1*5 \break
  s1*6 \pageBreak
  
  % page 3
  s1*6 \break
  s1*6 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 4
  s1*6 \break
  s1*5 \break
  s1*5 \break
  s1*6 \break
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
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
