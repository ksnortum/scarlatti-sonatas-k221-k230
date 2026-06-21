%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title  = "Sonata in C minor"
  opus   = "K.226"
  source = "https://s9.imslp.org/files/imglnks/usimg/0/06/IMSLP914922-PMLP497090-E4462_48-50-Scarlatti_-_Keyboard_Sonatas,_L.101-117.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0.5) (3 . 0.5) (3 . 1))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0.3 . -2.75) (0 . -2.5) (0 . -3) (0 . -3))
                      ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 1.7) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3.5) (0 . 3.5) (0 . 3.5) (0 . 3.5))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -4.2) (0 . -4.2) (0 . -4.2) (0 . -4.2))
                      ) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . -1)) \etc

%
% Music
%

global = {
  \time 3/8
  \key c \minor
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    g''4( f8~ |
    f8 ef-\tag layout \prallprall -\tag midi \prall d |
    c8-\insideSlur -\tag layout \prallprall -\tag midi \prall b c) |
    r8 \osp #'(2.5 . 1) g( f~ |
    f8 ef-\tag layout \prallprall -\tag midi \prall d |
    c8-\tag layout \prallprall -\tag midi \prall b c |
    g8 g') c,(~ |
    c8 b c) |
    
    \barNumberCheck 9
    r8 d( ef) |
    r8 f( g) |
    r8 a( b) |
    r8 c( d) |
    r8 ef( f) |
    r8 g( a) |
    % afterGrace, first note is af in source
    \osp #'(-1 . 0) \afterGrace 15/16 b4(\trill { a32 b } c8) |
    \appoggiatura { bf!32 } af!4-\slurShapeA (\prall g8~ |
    
    \barNumberCheck 17
    g8 f-\insideSlur -\tag layout \prallprall -\tag midi \prall ef~ |
    ef8 d-\insideSlur -\tag layout \prallprall -\tag midi \prall c |
    b8) f'( c |
    b8) \grace { c16( } \afterGrace 15/16 c4)(\trill { b16 c } |
    d8) af'( g |
    f8) ef8.(\trill d32 ef |
    d8) af'( g |
    f8) ef8.(\trill d32 ef 
    
    \barNumberCheck 25|
    d8) af'( g |
    f8) ef8.(\trill d32 ef) |
    \appoggiatura { ef8 } d4. |
    \appoggiatura { c'32 } bf4(\prall ^\aTempo a8 |
    fs8 g) f(~ |
    f8 ef-\tag layout \prallprall -\tag midi \prall d~ |
    d8 c-\tag layout \prallprall -\tag midi \prall bf~ |
    bf8 a-\insideSlur -\tag layout \prallprall -\tag midi \prall g |
    
    \barNumberCheck 33
    fs8) d'( g, |
    fs8) g8.(\trill ^\trillNatural fs32 g |
    a8) ef'( d |
    c8) bf8.(\trill a32 bf |
    a8) ef'( d |
    c8) bf8.(\trill a32 bf |
    a8) ef'( d |
    c8) bf8.(\trill a32 bf) |
    
    \barNumberCheck 41
    \appoggiatura { bf16 } a4. |
    fs'16(^\aTempo g a bf c d,) |
    \appoggiatura { d8 } ef4. |
    fs16( g a bf c d,) |
    \appoggiatura { d8 } ef4. |
    r16 c'( bf a g fs |
    g4.~ |
    g16 bf g f! ef d |
    
    \barNumberCheck 49
    cs4. |
    d16 ef d c! bf a |
    bf16) g'( ef c a a' |
    bf,16) g'( ef c a a' |
    bf,16) a( bf c d g, |
    a16 c bf a g a |
    bf16) g'( ef c a a' |
    bf,16) g'( ef c a a' |
    
    \barNumberCheck 57
    bf,16) a-\slurShapeC ( bf c d g, |
    a16 c bf a g fs) |
    d''4.(~ |
    d16 bf a8 g16 fs) |
    fs8.( g16 d8) |
    r16 bf( a8 g16 fs) |
    fs8.( g16 d8) |
    r16 bf( a8 g16 fs) |
    
    \barNumberCheck 65
    \appoggiatura { fs8 } g4. |
  }
  \repeat volta 2 {
    \key c \major
    R4. |
    g''4( fs8 |
    <b, g'>4 <c a'>8 |
    <d b'>16 a' g fs g8) |
    R4. |
    \osp #'(0 . -1) c4( b8 |
    <e, c'>4 <f b>8 |
    
    \barNumberCheck 73
    \override Parentheses.font-size = #-2
    <\parenthesize e c'>16 g e c c,8-.)\noBeam |
    r32 e'( fs gs  a[ b c d] c8~ |
    \voiceOne c8 b a |
    gs8) a8.(\trill gs32 a) |
    \appoggiatura { a16 } b4. |
    \oneVoice r8^\aTempo \voiceOne e,( a |
    g8 f e~ |
    e8) d8.(\trill c32 d) |
    
    \barNumberCheck 81
    \oneVoice \appoggiatura { ds16 } e4.\fermata |
    \bar "||"
    \key c \minor
    r32^\aTempo d( e fs  g[ a bf c] bf8~ |
    \voiceOne bf8 a g |
    fs8) g8.(\trill ^\trillNatural fs32 g) |
    \appoggiatura { g16 } a4. |
    \oneVoice r8^\aTempo \voiceOne d,( g |
    f8 ef d~ |
    d8) c8.(\trill bf32 c) |
    
    \barNumberCheck 89
    \oneVoice \appoggiatura { cs16 } d4.\fermata |
    r32^\aTempo c!( d e  f[ g af bf] af8~ |
    \voiceOne af8 g f |
    \oneVoice <c e>8) f8.-\slurShapeE (\trill e32 f |
    g16 f e df c bf |
    % under lower staff
    \voiceFour af4.) |
    s4. |
    \oneVoice \appoggiatura { g16 } af4. |
    
    \barNumberCheck 97
    b16( c d ef f g,) |
    \appoggiatura { g16 } af4. |
    r16 f'-\slurShapeF ( ef d c b |
    c4.~ |
    c16 ef c bf a g |
    fs4. |
    g16 af! g f! ef d |
    ef16) c'( af f d d' |
    
    \barNumberCheck 105
    ef,16) c'( af f d d' |
    ef,16) d( ef f g c, |
    af'16 c g c f, b |
    c16) c'( af f d d' |
    c,16) c'( af f d d' |
    ef,16) d( ef f g c, |
    d16 f ef d c b) |
    r8 c'8.(\trill b32 c) |
    
    \barNumberCheck 113
    r8 c,8.(\trill b32 c) |
    r8 c,8.(\trill b32 c) |
    r8 c'8.(\trill b32 c) |
    r8 c'8.(\trill b32 c) |
    r8 c,8.(-\tag layout \prallprall -\tag midi \prall b16) |
    \appoggiatura { b8 } c4 r8 |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4.*64 |
    
    \barNumberCheck 65
    s4. |
  }
  \repeat volta 2 {
    \key c \major
    s4.*7 |
    
    \barNumberCheck 73
    s4.*2 |
    \voiceFour f''!4.( |
    e4) d8 |
    e4. |
    s8 a,4~ |
    a4 gs8( |
    a4) r8 |
    
    \barNumberCheck 81
    s4. |
    \key c \minor
    s4. |
    ef'4.( |
    d4) c8 |
    d4. |
    s8 g,4~ |
    g4 fs8( |
    g4) r8 |
    
    \barNumberCheck 89
    s4.*2 |
    df'4. |
    s4. |
    s4 \voiceOne g8~ |
    g16 g( f ef d! c |
    \oneVoice b16 c d ef f g,) |
    s4. |
    
    \barNumberCheck 97
    s4.*16 |
    
    \barNumberCheck 113
    s4.*6 |
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
    s4.*8 |
    
    \barNumberCheck 9
    s4.*7 |
    \clef treble \voiceThree \osp #'(-0.5 . 0) f'8( c'4 |
    
    \barNumberCheck 17
    s4 \hideNoteHead c8) |
    \clef bass \osp #'(0 . -1) bf,8( g' f~ |
    f4 ef8 |
    d8) ef( c |
    b8) f'( ef |
    d8 c fs |
    g8) f!( ef |
    d8 c fs |
    
    \barNumberCheck 25
    g8) \osp #'(0 . -1) f!( ef |
    \hideNoteHead d8) s4 |
    s4. |
    \clef treble \osp #'(2 . 2) d'4.(~ |
    d8 c bf~ |
    bf8 a g |
    fs4 g8) |
    \clef bass \osp #'(0 . -2) f,8( d' c~ |
    
    \barNumberCheck 33
    c4 bf8 |
    a8) bf( g |
    fs8) c'( bf |
    a8 g cs |
    d8) c!( bf |
    a8 g cs |
    d8) c!( bf |
    \hideNoteHead a8) s4 |
    
    \barNumberCheck 41
    s4.*8 |
    
    \barNumberCheck 49
    s4.*4 |
    % user lower staff
    \clef treble \voiceTwo \osp #'(0 . 1.5) g8.( a16 bf8 |
    \clef bass s4 \hideNoteHead d,8) |
    s4.*2 |
    
    \barNumberCheck 57
    % user lower staff
    \clef treble \voiceTwo g8.-\slurShapeD ( a16 bf8 |
    s4. |
    \clef bass \hideNoteHead g8) s4 |
    s4.*5 |
    
    \barNumberCheck 65
    s4. |
  }
  \repeat volta 2 {
    s4.*7 |
    
    \barNumberCheck 73
    s4. |
    \voiceThree c,8( e a) |
    d,8( a' d) |
    e4( d8) |
    e,8( b' e) |
    a,4. |
    d4( e8) |
    e4( d8) |
    
    \barNumberCheck 81
    s4. |
    \key c \minor
    s4. |
    c,8( g' c) |
    d4( c8) |
    d,8( a' d) |
    g,4. |
    c4( d8) |
    d4( c8) |
    
    \barNumberCheck 89
    s4.*2 |
    bf,8( f' bf) |
    c4( bf8) |
    s4.*4 |
    
    \barNumberCheck 97
    s4.*8 |
    
    \barNumberCheck 105
    s4. |
    % under lower staff
    \voiceTwo c,8.( d16 ef8) |
    f8 g4 |
    s4.*2 |
    \clef treble c8.( d16 ef8 |
    \oneVoice f8 g g, |
    \clef bass \hideNoteHead c,8) s4 |
    
    \barNumberCheck 113
    s4.*6 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    \clef treble % initial bass clef, see initial-clef-engraver.ily
    r8 ef''( d |
    c4 bf8 |
    af8 g f |
    ef4 d8 |
    \clef bass c4 bf8 |
    af8 g f |
    ef4) <ef g>8( |
    <d f>4 <ef g>8) |
    
    \barNumberCheck 9
    <b f'>4_( c8) |
    <d b'>4_( <ef c'>8) |
    <f c'>4_( g8) |
    <a f'>4_( <b f'>8) |
    \clef treble <c g'>4( <d b'>8) |
    <ef c'>4( f8) |
    g8-\slurShapeB _( f ef |
    \voiceTwo f4 ef8 |
    
    \barNumberCheck 17
    \oneVoice <d f b>4 <c c'>8 |
    \clef bass \voiceTwo bf!4 af8 |
    g4.) |
    g4. |
    g4. |
    g4. |
    g4. |
    g4. |
    
    \barNumberCheck 25
    g4. |
    \oneVoice <g d'>8 c( c, |
    g'8 g,) r |
    \clef treble \voiceTwo \osp #'(-2 . -2) g''4( f8 |
    ef4 d8 |
    c4 bf8 |
    <a c d>4 g8 |
    \clef bass f!4 ef8 |
    
    \barNumberCheck 33
    d4.) |
    d4. |
    d4. |
    d4. |
    d4. |
    d4. |
    d4. |
    \oneVoice <d a'>8 g( g, |
    
    \barNumberCheck 41
    d'8 d,) r |
    R4. |
    \clef treble fs''16( g a bf c ef, |
    d4. |
    fs16 g a bf c ef, |
    d4.) |
    r16 c'( bf a g fs |
    g4.~ |
    
    \barNumberCheck 49
    g16 bf a g fs e |
    d8 fs d |
    g16) bf,( c ef d fs |
    g16) bf,( c ef d fs |
    % over upper staff
    \voiceThree g4.) |
    \clef bass \oneVoice c,8 d d, |
    \clef treble \oneVoice g'16( bf, c ef d fs |
    g16) bf,( c ef d fs |
    
    \barNumberCheck 57
    % over upper staff
    \voiceThree g4.) |
    \clef bass \oneVoice c,8 d d, |
    g8( a bf |
    c8 d d, |
    g,8)( a bf |
    c8 d d, |
    g8 a bf |
    c8 d d, |
    
    \barNumberCheck 65
    g4.) |
  }
  \repeat volta 2 {
    \key c \major
    \clef treble b''16( c d b c a |
    b16 c d b c a) |
    \clef bass b,16( c d b c a |
    g4) r8 |
    \clef treble e''16( f! g e f d |
    e16 f g e f d) |
    e,16( f g e f d |
    
    \barNumberCheck 73
    c8 \clef bass c,) r |
    \voiceTwo c4. |
    d4. |
    e8 f4 |
    e4. |
    c4. |
    d4( e8) |
    f4. |
    
    \barNumberCheck 81
    \oneVoice e8( e,) r8\fermata |
    \key c \minor
    \osp #'(2.5 . 0) g4( g'8) |
    \voiceTwo c,4. |
    d8( ef4) |
    d4. |
    bf4. |
    c4( d8) |
    ef4. |
    
    \barNumberCheck 89
    \oneVoice d8( d,) r\fermata |
    \osp #'(2.5 . 0) f4( f'8) |
    \voiceTwo bf,4. |
    c8( df4) |
    \oneVoice <c c'>4 <ef c'>8_( |
    <f c'>4 af8 |
    g4.) |
    b16_( c d ef f af, |
    
    \barNumberCheck 97
    g4. |
    b16 c d ef f af, |
    g4.) |
    r16 f'-\slurShapeG _( ef d c b |
    c4.~ |
    c16 ef d c bf a |
    g8 b g |
    c16) ef,( f af g b |
    
    \barNumberCheck 105
    c16) ef,( f af g b |
    % over upper staff
    \voiceThree c4.) |
    f8 ef( d) |
    \clef treble \oneVoice c16( ef f af g b |
    c,16) ef( f af g b |
    % over upper staff
    \voiceThree c4.) |
    s4. |
    \clef bass \oneVoice \stemDown c,,8-\slurShapeH ( d ef |
    f8 g g, |
    c8 d ef |
    f8 g g, |
    c8 d ef |
    f8 g g,) |
    \oneVoice \stemNeutral <c, c'>4 r8 \clef treble  |
  }
}

leftHand = {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \override DynamicTextSpanner.Y-offset = -0.3
  \repeat volta 2 {
    s4.-\tweak Y-offset #-1 \p |
    s4. |
    s4.\cresc |
    s4.\mf |
    s4.*4 |
    
    \barNumberCheck 9
    s4.\p |
    s4. |
    s4.\cresc |
    s4.*3 |
    s4.\f |
    s4.\mf |
    
    \barNumberCheck 17
    s4.-\tweak Y-offset #0.5 \dim |
    s4. |
    s4.\cresc |
    s4. |
    s8 s4\f |
    s4. |
    s8 s4\p |
    s4. |
    
    \barNumberCheck 25
    s8 s4\f |
    s4. |
    s4.^\rit |
    s4.\mf |
    s4.\dim |
    s4.*3 |
    
    \barNumberCheck 33
    s4.-\tweak Y-offset #0.5 \cresc |
    s4. |
    s8 s4-\tweak Y-offset #0 \f |
    s4. |
    s8 s4\p |
    s4. |
    s8 s4\f |
    s4. |
    
    \barNumberCheck 41
    s4.^\rit |
    s4.\mf |
    s4. |
    s4.\p |
    s4. |
    s4.\cresc |
    s4.*2 |
    
    \barNumberCheck 49
    s4.*2 |
    s4.\f |
    s4.*3 |
    s16 s\p s4 |
    s4. |
    
    \barNumberCheck 57
    s4.\cresc |
    s4. |
    s4.\f |
    s4.*2 |
    s4.\mf |
    s4. |
    s4.\f |
    
    \barNumberCheck 65
    s4. |
  }
  \repeat volta 2 {
    % key of c major
    s4.\pp |
    s4\< s16 s\! |
    s4.\p |
    s4\> s8\! |
    s4.\pp |
    s4\< s16 s\! |
    s4.\p |
    
    \barNumberCheck 73
    s4. |
    s32 s8..\< s8\mf |
    s4.*2 |
    \grace { s16-\rall } s8 s\> s\! |
    s4.\p |
    s4. |
    s4.^\rall |
    
    \barNumberCheck 81
    \grace { s16\> } s4.\! |
    % key of c minor
    s32 s8..-\tweak Y-offset #-0.5 \< s8-\tweak Y-offset #-1 \mf |
    s4.*2 |
    \grace { s16-\tweak X-offset #-0.2 -\rall } s16 s8.\> s8\! |
    s4.\p |
    s4. |
    s4.-\tweak Y-offset #-1 ^\rall |
    
    \barNumberCheck 89
    \grace { s16-\tweak Y-offset #-1 \> } s4.\! |
    s32 s8..\< s8\mf |
    s4.*6 |
    
    \barNumberCheck 97
    s4.\p |
    s4. |
    s4.\cresc |
    s4.*4 |
    s4.\mf |
    
    \barNumberCheck 105
    s4.*3 |
    s4.\f |
    s4.*3 |
    s4\> s16. s32\! |
    
    \barNumberCheck 113
    s4.\p\cresc |
    s4.*2 |
    s4.\f |
    s4.*2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 72
    s4.*24 |
    
    \barNumberCheck 25
    s4.*2 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 60 s8 \tempo 4. = 52 s \tempo 4. = 44 s |
    \tempo 4. = 72 s4. |
    s4.*4 |
    
    \barNumberCheck 33
    s4.*8 |
    
    \barNumberCheck 41
    \tempo 4. = 60 s8 \tempo 4. = 52 s \tempo 4. = 44 s |
    \tempo 4. = 72 s4. |
    s4.*6 |
    
    \barNumberCheck 49
    s4.*8 |
    
    \barNumberCheck 57
    s4.*7 |
    \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 56 s |
    
    \barNumberCheck 65
    \tempo 4. = 52 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 72
    s4.*7 |
    
    \barNumberCheck 73
    s4.*4 |
    \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 56 s |
    \tempo 4. = 72 s4. |
    s4. |
    \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 56 s |
    
    \barNumberCheck 81
    s4 \tempo 4. = 40 s8 |
    \tempo 4. = 72 s4. |
    s4.*2 |
    \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 56 s |
    \tempo 4. = 72 s4. |
    s4. |
    \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 56 s |
    
    \barNumberCheck 89
    s4 \tempo 4. = 40 s8 |
    \tempo 4. = 72 s4. |
    s4.*6 |
    
    \barNumberCheck 97
    s4.*16 |
    
    \barNumberCheck 113
    s4.*4 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 56 s |
          \tempo 4. = 52 s4. |
        }
        {
          \tempo 4. = 63 s8 \tempo 4. = 56 s \tempo 4. = 50 s |
          \tempo 4. = 30 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*8 \break
  s4.*9 \break
  s4.*9 \break
  \grace { s8 } s4.*9 \break
  s4.*8 \pageBreak
  
  % page 2
  s4.*7 \break
  s4.*7 \break
  s4.*8 \break
  s4.*8 \break
  s4.*8 \pageBreak
  
  % page 3
  s4.*8 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
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
