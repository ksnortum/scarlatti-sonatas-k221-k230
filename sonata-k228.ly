%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title  = "Sonata in B♭ major"
  opus   = "K.228"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/3/3c/IMSLP914200-PMLP497943-E4529_20-23-Scarlatti_-_Keyboard_Sonatas,_L.394-400.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -1) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -1.5) (1 . 1) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.4 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -0.2))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (-1 . 0.5) (0 . -0.2)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . -2.5) (0 . -1.5) (0 . 0) (0 . 0))
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 1) (0.3 . 0.5) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 1.8) (0 . 1.4) (0.5 . 0.5) (0 . 0))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -2) (0 . -1.9) (0.2 . -1.7) (0 . -1.5))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.3))
                        ((0 . 0.1) (0 . 0.2) (-0.3 . 0) (-0.3 . 0))
                      ) \etc
slurShapeO = \shape #'((0 . 0.3) (0 . 0.3) (0 . 0) (0 . -1)) \etc

%
% Music
%

global = {
  \time 3/8
  \key bf \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    d''8(\prall c) d-. |
    ef8(\prall d) ef-. |
    f8( g bf,) |
    \appoggiatura { bf8 } a4 bf8-. |
    d8(\prall c) d-. |
    ef8( d) ef-. |
    f8( g16 a bf8-.) |
    \appoggiatura { bf8 } a4 bf8-. |
    
    \barNumberCheck 9
    r16 f( ef d ef f |
    fs8 g) ef-. |
    \appoggiatura { d16 } c8 bf8.(\trill a32 bf) |
    \appoggiatura { bf8 } a4. |
    \override Parentheses.font-size = #-2
    a'8-. \osp #'(-0.5 . 0) <\parenthesize c, g'>4(~ |
    g'8 e f |
    a8-.) <\parenthesize c, g'>4(~ |
    g'8 e f) |
    
    \barNumberCheck 17
    f8-\slurShapeA ( ef! c'~ |
    c8 a bf) |
    f8-\slurShapeB ( ef c'~ |
    c8 a bf~ |
    bf8) a( bf~ |
    bf8) <fs a>( <g bf>~ |
    q8) <fs a>( <g bf>~ |
    q8) <fs a>( <g bf>~ |
    
    \barNumberCheck 25
    q8) <fs a>( <g bf> |
    <fs a>8) <a c>( <g bf> |
    <fs a>8) g8.(\trill fs32 g |
    <fs a>8) <a c>( <g bf> |
    <fs a>8) g8.(\trill fs32 g |
    a8-.) c( bf |
    a8 g) f!-. |
    ef8( d cs |
    
    \barNumberCheck 33
    ef8 d) c!-. |
    bf8( a g |
    fs8 g a |
    fs8) a( bf |
    c8) cs( d |
    a8) a( bf |
    c8) cs( d |
    a8) g( a |
    
    \barNumberCheck 41
    bf8) b-\slurShapeD ( c |
    g8) g( a |
    bf!8) b( c |
    g8) g( a |
    b8 c) <g g'>-.\noBeam |
    <a f'>8( <bf! e>) <c f>-. |
    d8( c) bf-. |
    a8( <g g'>) <a f'>-. |
    
    \barNumberCheck 49
    <bf e>( <c f>) d-. |
    c8( bf) a-. |
    g8-. a16( c f g |
    a8-.) << { bf4( | g8) } \\ { d( e~ | e) } >>
    a,16( c f g |
    a8-.) << { bf4( | g8) } \\ { d( e~ | e) } >>
    a16( f bf g |
    <a c>8 <g bf>) <e g>-. |
    
    \barNumberCheck 57
    a,16( c f g a8-.) |
    a,16( c f g a8-.) |
    a,16( c f g a8-.) |
    d8-. c16( bf a g |
    f16 a g f e d |
    c16 bf a g f e |
    f16 a g f e d |
    \clef bass c16 bf a g f e |
    
    \barNumberCheck 65
    f4.) \clef treble |
  }
  \repeat volta 2 {
    af''8-. <\parenthesize c, g'>4(~ |
    g'8 e f |
    af8-.) <\parenthesize c, g'>4(~ |
    g'8 e f |
    c8-.) b-\slurShapeG ( f'~ |
    f8 ef! g |
    c,8-.) b-\slurShapeF ( f'~ |
    
    \barNumberCheck 73
    f8) ef16( d) ef8( |
    d8-.) \appoggiatura { d32 } c4-\slurShapeI (\trill |
    bf8 ef)  c( |
    bf8-.) \appoggiatura { bf32 } af4\trill |
    <g g'>8( ef' c |
    bf8-.) \appoggiatura { bf32 } af4\trill |
    <g g'>8( ef' c |
    bf8-.) \appoggiatura { bf32 } af4(\trill |
    
    \barNumberCheck 81
    g8-.) <bf g'>4( |
    <a fs'>8 <bf g'>) <c a'!>-. |
    <d bf>8-\slurShapeJ ( a'16 g f e |
    d4 cs8) |
    d8( e) f-. |
    g4 g8-. |
    \appoggiatura { bf16 } af8 g16( f ef! d |
    c4 b8) |
    
    \barNumberCheck 89
    c8( d) ef-. |
    e8-. f4-\slurShapeK ( |
    g8 f16 ef d c |
    bf4 a8) |
    bf8( c d16 f |
    ef16 d c bf a g |
    f8-.) c( d |
    ef8) e( f |
    
    \barNumberCheck 97
    c8) c( d |
    ef!8) e( f |
    c8) c( d |
    e8 f) <c c'>-.\noBeam |
    <d bf'>8( <ef! a>) <f bf>-. |
    g8( f) ef-. |
    d8( <c c'>) <d bf'>-. |
    <ef a>8( <f bf>) g-. |
    
    \barNumberCheck 105
    f8( ef) d-. |
    c8-. d16_( f bf c |
    d8-.) << { ef4( | c8-.) } \\ { g( a~ | a) } >>
    d,16_( f bf c |
    d8-.) << { ef4-\slurShapeL ( | c8-.) } \\ { g-\slurShapeM ( a~ | a) } >>
    d16( bf ef c |
    f16 g f ef d c) |
    f,16( bf d ef f8-.) |
    
    \barNumberCheck 113
    f,16( bf d ef f8-.) |
    d,16( f bf c d8-.) |
    d,16( f bf c d8-.) |
    g8-. f16( ef d c) |
    d'4.-\slurShapeN (~ |
    d8 c16 bf a g |
    f16 ef d c d ef |
    f16 ef d c bf a |
    
    \barNumberCheck 121
    d4.)-\slurShapeO (~ |
    d8 c16 bf a g |
    f16 ef d c d ef |
    f16 ef d c bf a |
    bf4.) |
  }
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s4.*8 |
    
    \barNumberCheck 9
    s4.*4 |
    \clef treble \voiceThree c''8-. bf4( |
    a4.) |
    c8-. bf4( |
    a4.) |
    
    \barNumberCheck 17
    \osp #'(0 . -1) df8( c a |
    \hideNoteHead df4.) |
    \osp #'(0 . -1) df8( c a |
    \hideNoteHead df4.) |
    s4.*4 |
    
    \barNumberCheck 25
    s4.*2 |
    d4-\slurShapeC ( c8 |
    \hideNoteHead d4) s8 |
    d4( c8 |
    d4.) |
    s4.*2 |
    
    \barNumberCheck 33
    s4.*32 |
    
    \barNumberCheck 65
    s4. |
  }
  \repeat volta 2 {
    c8-. bf4( |
    af4.) |
    c8-. bf4( |
    af4.) |
    s4.*3 |
    
    \barNumberCheck 73
    s4. |
    \clef bass bf,8 ef4~ |
    ef4 \osp #'(0 . -1) ef8(~ |
    ef4 d8 |
    \hideNoteHead ef4) \hideNoteHead \osp #'(-0.5 . -1) ef8(~ |
    ef4 d8 |
    \hideNoteHead ef4) \hideNoteHead \osp #'(-1 . 0.5) ef8(~ |
    ef4 d8) |
    
    \barNumberCheck 81
    s4.*3 |
    g8-. f( e) |
    f8( g) f-. |
    s4.*2 |
    f8-. ef( d) |
    
    \barNumberCheck 89
    ef8( f) ef-. |
    s4.*2 |
    ef8-. d( c) |
    d8( c bf~ |
    bf8) c4 |
    s4.*2 |
    
    \barNumberCheck 97
    s4.*24 |
    
    \barNumberCheck 121
    s4.*5 |
  }
}

leftHandLower = \relative {
  \clef treble % Initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    bf'8( a) bf-. |
    g8( f) g-. |
    d8( ef bf |
    f'4 bf,8-.) |
    bf'8( a) bf-. |
    g8( f) g-. |
    d8( ef bf) |
    f'4 bf,8-. |
    
    \barNumberCheck 9
    d4.( |
    ef4. |
    e4.) |
    f8( c-.) f,-. |
    \voiceTwo f'8-. \osp #'(0 . 1) g( c, |
    f4.) |
    f8-. \osp #'(0 . 1) g( c, |
    f4.) |
    
    \barNumberCheck 17
    f4. |
    <f bf df>4. |
    f4. |
    <f bf df>4. |
    \oneVoice <e g bf cs>4. |
    <d g bf \parenthesize d>4. |
    <ef! g bf>4. |
    <d g bf>4. |
    
    \barNumberCheck 25
    <cs g' bf>4. |
    <d a' d>4. |
    \voiceTwo \osp #'(-1.5 . 1) d8( ef!4 |
    \oneVoice <d a' d>4.) |
    \voiceTwo \osp #'(-1.5 . -1) d8( ef4 |
    d8) fs( g |
    \oneVoice a8 bf) a-. |
    g8( bf a |
    
    \barNumberCheck 33
    g8 fs) d-. |
    g8( f! ef |
    d8 ef c |
    d8) fs( g |
    ef8-.) d4(~ |
    d8 fs g |
    ef8-.) \osp #'(0.5 . 0) d4(~ |
    d8 e f |
    
    \barNumberCheck 41
    d8-.) c4-\slurShapeE (~ |
    c8 e f |
    d8-.) c4(~ |
    c8 e f |
    d8 c) <c e>-.\noBeam |
    \slurUp <c f>8( <c g'>) <c a'>-. |
    <c bf'>8( <c a'>) <c g'>-. |
    <c f>8( <c e>) <c f>-. |
    
    \barNumberCheck 49
    <c g'>8( <c a'>) <c bf'>-. |
    <c a'>8( <c g'>) <c f>-. |
    <c e>8-.\noBeam \clef bass f16( c a g |
    f8-.) bf( c |
    c,8-.)\noBeam f'16( c a g |
    f8-.) bf( c |
    c,8-.) f( g |
    a8 bf) c-. |
    
    \barNumberCheck 57
    f16( c a g f8-.) |
    f'16( c a g f8-.) |
    f'16( c a g f8-.) |
    bf8-. c( c, |
    f8 g a |
    bf8 c c,) |
    f,8( g a |
    bf c c,) |
    
    \barNumberCheck 65
    f4.-> \clef treble  |
  }
  \repeat volta 2 {
    \voiceTwo f''8-. \osp #'(0 . 1) g( c, |
    f4.) |
    f8-. \osp #'(0 . 1) g( c, |
    f4.) |
    \clef bass \oneVoice <ef g>8-. <d f>4( |
    <c g'>4.) |
    <ef g>8-. <d f>4( |
    
    \barNumberCheck 73
    <c g'>4.) |
    \voiceTwo bf4-\slurShapeH ( af8 |
    g4) \osp #'(-0.5 . -0.5) af8( |
    g8 f4 |
    \oneVoice <ef bf' ef>4) \osp #'(-0.5 . -0.5) <af ef'>8_( |
    \voiceTwo g8 f4 |
    \oneVoice <ef bf' ef>4) \osp #'(-0.5 . 0) <af ef'>8_( |
    \voiceTwo g8 f4 |
    
    \barNumberCheck 81
    \oneVoice ef8-.) ef'( d |
    c8 bf a! |
    g4.) |
    \voiceTwo bf8-. a4 |
    d4 d8 |
    \oneVoice <c e>8( <b d>) <c e>-. |
    <f, f'>4. |
    \voiceTwo af8-. g4 |
    
    \barNumberCheck 89
    c4 c8-. |
    \oneVoice <bf d>8-. <a c>( <bf d> |
    <ef, ef'>4.) |
    \voiceTwo g8-. f4 |
    bf4 r8 |
    g8( ef e |
    \oneVoice <f \parenthesize a>8-.) a( bf |
    g8-.) f4(~ |
    
    \barNumberCheck 97
    f8 a bf |
    g8) f4(~ |
    f8 a bf |
    g8 f) <f a>-.\noBeam |
    <f bf>8( <f c'>) <f d'>-. |
    <f ef'>8( <f d'>) <f c'>-. |
    <f bf>8( <f a>) <f bf>-. |
    <f c'>8( <f d'>) <f ef'>-. |
    
    \barNumberCheck 105
    <f d'>8( <f c'>) <f bf>-. |
    <f a>8-. bf16( f d c |
    bf8-.) ef( f |
    f,8-.)\noBeam bf'16( f d c |
    bf8-.) ef( f |
    f,8-.) bf( c |
    d8 ef f) |
    d'16( bf f ef d8-.) |
    
    \barNumberCheck 113
    d'16( bf f ef d8-.) |
    bf'16( f d c bf8-.) |
    bf'16( f d c bf8-.) |
    ef8-. f( f,) |
    bf8( c) d-. |
    ef8( f g |
    a8 f bf |
    ef, f-.) f,-. |
    
    \barNumberCheck 121
    bf8( c) d-. |
    ef8( f g |
    a8 f bf |
    ef,8 f-.) f,-. |
    bf4.-> \clef treble |
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
    s4.\p |
    s4.*2 |
    \grace { s8\> } s4\! s8\p |
    s4.*2 |
    s4.\mf |
    s4 s8\p |
    
    \barNumberCheck 9
    s16 s\< s4 |
    s4.\! |
    s4. |
    s4\> s8\! |
    s4.\mf |
    s4\> s8\! |
    s4.\p |
    s4. |
    
    \barNumberCheck 17
    s4.\mf |
    s4\> s8\! |
    s4.\p |
    s4. |
    s4.\cresc
    s4.*3 |
    
    \barNumberCheck 25
    s4. |
    s4.\f |
    s4. |
    s8\f s4\p |
    s4. |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 33
    s4.*3 |
    s8 s4\p |
    s8 s4\mf |
    s8 s4\p |
    s8 s4\mf |
    s8 s4\p |
    
    \barNumberCheck 41
    s8 s4\mf |
    s8 s4\p |
    s8 s4\mf |
    s8 s4\p\crescWO |
    s4 s8\mf |
    s4.*2 |
    s8\> s4\p |
    
    \barNumberCheck 49
    s4.*2 |
    s8 s8.\p\< s16\! |
    s8 s4\f |
    s8 s8.\p\< s16\! |
    s8 s4\f |
    s8 s8.\p\< s16\! |
    s4\f\> s8\! |
    
    \barNumberCheck 57
    s4.\p\cresc |
    s4.*2 |
    s4.\f |
    s4.*4 |
    
    \barNumberCheck 65
    s4. |
  }
  \repeat volta 2 {
    s4.-\tweak Y-offset #-1 \mf |
    s4-\tweak Y-offset #-1 \> s8\! |
    s4.-\tweak Y-offset #-1 \p |
    s4. |
    s8 s4\mf |
    s8 s\> s\! |
    s4.\p |
    
    \barNumberCheck 73
    s4.*3 |
    s8 s4\> |
    s4.-\tweak X-offset #1 \mf |
    s4. |
    s4.\p |
    s4. |
    
    \barNumberCheck 81
    s8 s4-\tweak Y-offset #-1 \mf |
    s4.*2 |
    s4\> s8\! |
    s4.\p |
    s4. |
    s4.-\tweak Y-offset #-1.5 \mf |
    s4\> s8\! |
    
    \barNumberCheck 89
    s4.\p |
    s8 s4-\tweak Y-offset #-1.5 \mf |
    s4. |
    s4-\tweak Y-offset #1 \> s8\! |
    s4.-\tweak Y-offset #1 \p |
    s4. |
    s8\mf s4\p |
    s8 s4\mf |
    
    \barNumberCheck 97
    s8 s4\p |
    s8 s4\mf |
    s8 s4\p\crescWO |
    s4 s8\mf |
    s4.*2 |
    s8\> s\! s\p |
    s4. |
    
    \barNumberCheck 105
    s4. |
    s8 s4\< |
    s8\! s4\f |
    s8 s8.\p\< s16\! |
    s8 s4\f |
    s8 s8.\p\< s16\! |
    s4\f\> s16 s\! |
    s4.\p\cresc |
    
    \barNumberCheck 113
    s4.*3 |
    s4.\f |
    s4.*4 |
    
    \barNumberCheck 121
    s4.*5 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 84
    s4.*56 |
    
    \barNumberCheck 57
    s4.*7 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 76 s8 \tempo 4. = 69 s \tempo 4. = 63 s |
    
    \barNumberCheck 65
    \tempo 4. = 58 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 84
    s4.*7 |
    
    \barNumberCheck 73
    s4.*48 |
    
    \barNumberCheck 121
    s4.*3 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 76 s8 \tempo 4. = 69 s \tempo 4. = 63 s |
          \tempo 4. = 58 s4. |
        }
        {
          \tempo 4. = 72 s8 \tempo 4. = 63 s \tempo 4. = 56 s |
          \tempo 4. = 30 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*8 \break
  s4.*8 \break
  s4.*8 \break
  s4.*8 \break
  s4.*9 \pageBreak
  
  % page 2
  s4.*9 \break
  s4.*8 \break
  s4.*7 \break
  s4.*9 \break
  s4.*9 \pageBreak
  
  % page 3
  s4.*8 \break
  s4.*9 \break
  s4.*9 \break
  s4.*8 \break
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
    \new Staff = "lower" \with { \clef bass } \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists #initial-clef-change-engraver
    }
  }
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
