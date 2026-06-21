%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.224"
  source = "https://ks15.imslp.org/files/imglnks/usimg/b/b6/IMSLP914819-PMLP496057-E4488_38-41-Scarlatti_-_Keyboard_Sonatas,_L.259-271.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((1 . 1.5) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (1 . -1) (0 . 8) (0.3 . 4.5)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeG = \shape #'(
                        ((-0.5 . 2) (-0.5 . 2) (0 . 2) (0 . 2))
                        ((0 . 1) (0 . 1) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeH = \shape #'((0 . 2.5) (0 . 2.5) (0 . 1) (0 . 0)) \etc

tieShapeA = \shape #'((0 . 0) (0 . 0) (1.2 . 0) (1.2 . 0)) \etc

lhMark = \markup { 
  \path #0.1 #'((moveto -3 0)(rlineto 0 6.5)(rlineto 0.5 0))
}

moveMarkA = 
  \tweak outside-staff-priority ##f 
  \tweak Y-offset -6
  \etc

%
% Music
%

global = {
  \time 3/8
  \key d \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    fs''16( g a g fs e |
    d16 e fs e d cs |
    b16 cs d cs b a) |
    \appoggiatura { a16 } g4-\slurShapeA (\prall fs8) |
    r8 a'( fs |
    d8) fs-. d-. |
    \addStaccato {
      b8 d b |
      g8 b g |
      
      \barNumberCheck 9
      e8 g e |
    }
    cs16( d e fs g a |
    b16 cs d e fs g |
    a4.~ |
    a8) g4( |
    fs16 g a g fs e |
    d16 cs b a g fs |
    e16 d cs b a g |
    
    \barNumberCheck 17
    fs8 a) d^( |
    \voiceOne e4.) |
    \oneVoice b4 e8^( |
    \voiceOne fs4.) |
    \oneVoice cs4 fs8(^~ |
    fs8 d) g^( |
    \voiceOne a4) r8 |
    \oneVoice e4 a8^( |
    
    \barNumberCheck 25
    \voiceOne b4.) |
    \oneVoice fs4 b8(~ |
    b8 g) \osp #'(-0.5 . 0) c^( |
    \voiceOne d4 b8-.) |
    << 
      { 
        a4 \osp #'(-0.5 . 0) d8^( |
        \voiceOne e4 c8-.) |
        b4 e8-> |
      } 
      \new Voice { 
        s4 \voiceFour \hideNoteHead d8-\slurShapeB (~ |
        d8 c16 b a8~ |
        a8 gs16 fs! gs8-.) |
      } 
    >>
    s4 a'8->~ |
    
    \barNumberCheck 33
    a8 g4(~\nonArpeggiato |
    \oneVoice g8 f) d'->~ |
    \voiceOne d8 c16( b c a) |
    \oneVoice \appoggiatura { a16 } gs8. fs!16-\slurShapeD ( e d |
    cs16 d e fs cs b |
    a16 b cs d a gs |
    fs16 gs a b fs e |
    d16 e fs gs d cs |
    
    \barNumberCheck 41
    b16 cs d e b a |
    gs16 a b cs d e |
    fs16 gs a b cs d |
    cs8. d32 e b8-.) |
    gs,16( a b cs d e |
    fs16 gs a b cs d |
    cs8. d32 e b8-.) |
    gs,16-\slurShapeE ( a b cs d e |
    
    \barNumberCheck 49
    fs16 gs a b cs d |
    cs16 e cs e cs e) |
    \voiceOne a16-. r b-. r cs-. r |
    \oneVoice cs,16( e cs e cs e) |
    \voiceOne a16-. r b-. r cs-. r |
    \oneVoice cs16( e, b' d, a' cs, |
    b'16-. d, a'-. cs, gs'-. b,) |
    cs,16( e cs e cs e) |
    
    \barNumberCheck 57
    \voiceOne a16-. r b-. r cs-. r |
    cs,16( e cs e cs e) |
    \voiceOne a16-. r b-. r cs-. r |
    cs,16( e cs e cs e) |
    \addStaccato {
      \voiceOne a16 r b r cs r |
      cs16 r d r e r |
    }
    \oneVoice d16.( b32 cs16. a32 b16. gs32 |
    a16) a'( gs d cs fs |
    
    \barNumberCheck 65
    e16 d cs b a gs) |
    gs16( a gs d cs fs |
    e16 d cs b a gs) |
    \appoggiatura { gs8 } a4. |
  }
  \repeat volta 2 {
    r16 e''( c' e, d b' |
    a16 c,) c( a' g! b, |
    f'16 a,) a( f' e g, |
    e'8 ds16 b c e) |
    
    \barNumberCheck 73
    e8_( ds16 b c e |
    % under lower hand
    \voiceFour ds16 c b a g fs |
    g16) \osp #'(0 . 0.5) b^(  g' b, a f' |
    \oneVoice e16 g,) \osp #'(-1.5 . 0) g( e' d f, |
    d'8 cs!16 a bf d) |
    d8_( cs16 a bf d |
    % under lower hand
    \voiceFour cs16 bf a g f e |
    f16) a^( f' a, g e' |
    
    \barNumberCheck 81
    \oneVoice \stemDown d16 f,) \osp #'(-1 . 0) f( d' c e, |
    c'8 b16 g a c) |
    c8( b16 g a c |
    \stemNeutral b16 a g f e d |
    e16-.) g( e g e g |
    e16 c'-. e, d'-. e, e'-.) |
    e,16( g e g e g |
    e16 c'-. e, d'-. e, e'-.) |
    
    \barNumberCheck 89
    e,16( g e g e g |
    e16 c'-. e, d'-. e, e'-.) |
    \voiceOne r16 b r b r b |
    r16 c r c r c |
    r16 b r b r b |
    r16 c r c r c( |
    \oneVoice <e, b'> f e d c b |
    c8-.) e-. <c a'>(^~ |
    
    \barNumberCheck 97
    <b a'>4) \voiceOne g'8( |
    fs4) b8(~ |
    b8 g) c( |
    d4) b8( |
    a4) \hideNoteHead d8-\slurShapeH ( -\tieShapeA _~ |
    \hideNoteHead d8 s4 |
    \oneVoice fs,16 a g fs e d |
    cs16 d e fs g a |
    
    \barNumberCheck 105
    b16 cs d e fs g |
    fs8. g32 a e8-.) |
    cs,16( d e fs g a |
    b16 cs d e fs g |
    fs8. g32 a e8-.) |
    cs,16( d e fs g a |
    b16 cs d e fs g |
    fs16 a fs a fs a |
    
    \barNumberCheck 113
    g16 b a cs b d) |
    fs,16( a fs a fs a |
    g16 b a cs b d) |
    fs,16( a fs a <d, fs> a' |
    <d, g>16 b' <d, a'> cs' <d, b'> d' |
    a16 fs g e fs d |
    e16 g fs d e cs) |
    fs,16( a fs a fs a) |
    
    \barNumberCheck 121
    \voiceOne d16-. r e-. r fs-. r |
    \oneVoice fs,16( a fs a fs a) |
    \voiceOne d16-. r e-. r fs-. r |
    \oneVoice fs,16( a fs a fs a) |
    \addStaccato {
      \voiceOne d16 r e r fs r |
      fs16 r g r a r |
    }
    \oneVoice g16.( e32 fs16. d32 e16. cs32 |
    d16) d'( cs g fs b |
    
    \barNumberCheck 129
    a16 g fs e d cs) |
    cs16( d cs g fs b |
    a16 g fs e d cs) |
    \clef bass cs16( d cs g fs b |
    a16 g fs e d cs) |
    \appoggiatura { cs8 } d4. \clef treble |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4.*16 |
    
    \barNumberCheck 17
    s4 \voiceFour \hideNoteHead \osp #'(2.5 . 0) d'8(~ |
    d8 c16 b c8-.) |
    s4 \hideNoteHead \osp #'(2.5 . 0) e8(~ |
    e8 d16 cs d8-.) |
    s4. |
    s4 \hideNoteHead g8(~ |
    g8 f16 e f8-.) |
    s4 \hideNoteHead \osp #'(2.5 . 0) a8(~ |
    
    \barNumberCheck 25
    a8 g16 fs! g8-.) |
    s4. |
    s4 \hideNoteHead \osp #'(2 . 0) c8(~ |
    c8 b16 a g8~ |
    g8 f16 e f8-.)\nonArpeggiato |
    s4. |
    s4 \hideNoteHead e'8^~ |
    e16 e( d c b\nonArpeggiato a |
    
    \barNumberCheck 33
    b8) b16-\slurShapeC (\nonArpeggiato cs! d e |
    \voiceDown \hideNoteHead a,8) s4 |
    \voiceUp e'4. |
    s4.*5 |
    
    \barNumberCheck 41
    s4.*8 |
    
    \barNumberCheck 49
    s4.*2 |
    fs16( e gs e a e) |
    s4. |
    fs16( e gs e a e) |
    s4.*3 |
    
    \barNumberCheck 57
    fs,16( e gs e a e) |
    s4. |
    fs16( e gs e a e) |
    s4. |
    fs16( e gs e a e |
    a16 e b' e, cs' e,) |
    s4.*2 |
    
    \barNumberCheck 65
    s4.*4 |
  }
  \repeat volta 2 {
    s4.*4 |
    
    \barNumberCheck 73
    s4. |
    % over upper hand
    \voiceOne ds'4 ds8-\slurShapeG ( |
    e16-.) s s4 |
    s4.*3 |
    % over upper hand
    cs4 cs8( |
    d16-.) s s4 |
    
    \barNumberCheck 81
    s4.*8 |
    
    \barNumberCheck 89
    s4.*2 |
    \voiceFour e,16( gs e gs e gs) |
    f16( b f a f a) |
    e16( a e gs e gs) |
    \osp #'(0 . 2) f16( b f a f a |
    \hideNoteHead e16) s s4 |
    s4. |
    
    \barNumberCheck 97
    s4 e8(~ |
    e8 d16 cs d8-.) |
    e4 \hideNoteHead c'8(~ |
    c8 b16 a g8~ |
    << 
      { 
        g8 f16 e <f gs>8-.)-\moveMarkA ^\lhMark | 
        d'8 cs!16 b a g! |
      } 
      \new Voice { 
        s4 \voiceOne d'8( | 
        e8) s4 | 
      } 
    >>
    s4.*2 |
    
    \barNumberCheck 105
    s4.*16 |
    
    \barNumberCheck 121
    b16( a cs a d a) |
    s4. |
    b16( a cs a d a) |
    s4. |
    b16( a cs a d a |
    d16 a e' a, fs' a,) |
    s4.*2 |
    
    \barNumberCheck 129
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
    s4.*16 |
    
    \barNumberCheck 17
    s4. |
    \voiceThree a,4 \osp #'(-1 . 0) a'8(~ |
    a8 g16 fs g8-.) |
    b,4 \osp #'(-0.5 . 0) b'8(~ |
    b8 a16 g a8-.) |
    s4. |
    a4 d8(~ |
    d8 c16 b <c ds>8-.) |
    
    \barNumberCheck 25
    b4 \osp #'(-1 . 0) e8(~ |
    e8 d16 cs! d8-.) |
    s4.*6 |
    
    \barNumberCheck 33
    s4.*32 |
    
    \barNumberCheck 65
    s4.*4 |
  }
  \repeat volta 2 {
    s4.*4 |
    
    \barNumberCheck 73
    s4.*16 |
    
    \barNumberCheck 89
    s4.*7 |
    s4 \hideNoteHead \osp #'(-3 . 0) a8(~ |
    
    \barNumberCheck 97
    a8 g16 fs g8-.) |
    s4.*7 |
    
    \barNumberCheck 105
    s4.*24 |
    
    \barNumberCheck 129
    s4.*6 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4.*4 |
    d'16( e fs e d cs |
    b16 cs d cs b a |
    g16 a b a g fs |
    e16 fs g fs e d |
    
    \barNumberCheck 9
    cs16 d e d cs b |
    a4. |
    g4.) |
    \osp #'(-1 . -1) fs'16( g a b cs d |
    \clef treble e16 fs g a b cs |
    d4) cs8-. |
    d16_( cs b a g fs |
    \clef bass cs16 b a g fs e |
    
    \barNumberCheck 17
    d4) d8_( |
    \voiceTwo a4.) |
    e'4 e8( |
    b4.) |
    fs'4 fs8-. |
    \oneVoice <g b>4 <e g cs>8-. |
    \voiceTwo d4 gs8-. |
    a4-> a8-. |
    
    \barNumberCheck 25
    e4. |
    b'4. |
    \oneVoice <c e>4 <a c fs>8-. |
    <g d'>4. |
    \set PianoStaff.connectChordBrackets = ##t
    <d d'>4 d'8-.\nonArpeggiato |
    <a e'>4 ds8-. |
    e4. |
    \clef treble <f a>4 f8(\nonArpeggiato |
    
    \barNumberCheck 33
    e4) e8( |
    <d a'>8-.)\noBeam d'16( c b a |
    gs8) a( f |
    <e b'>8.) d'16( cs! b |
    a4) gs8-. |
    fs4 e8-. |
    d4 cs8-. |
    \clef bass b4 a8-. |
    
    \barNumberCheck 41
    gs4 fs8-. |
    e16( fs gs a b cs |
    d8-.) cs-. b-. |
    a8( e) r |
    e16( fs gs a b cs |
    d8-.) cs-. b-. |
    a8( e) r |
    e16-\slurShapeF ( fs gs a b cs |
    
    \barNumberCheck 49
    \clef treble d16 e fs gs a b |
    \addStaccato {
      a8) a gs |
      fs8 e d
    }
    cs8( <a a'>-.) <gs gs'>-. |
    \clef bass <fs fs'>8-. <e e'>-. <d d'>-. |
    <cs cs'>4 fs'8( |
    d8-.) e-. e,-. |
    \osp #'(-1.5 . 0) a,8( a' gs |
    
    \barNumberCheck 57
    fs8-.) e-. d-. |
    cs8( a'-.) gs-. |
    fs8-. e-. d-. |
    cs8( <a a'>-.) <gs gs'>-. |
    \addStaccato {
      <fs fs'>8 <e e'> <d d'> |
      <cs cs'> <b b'> <a a'> |
    }
    d'8( e e, |
    a8) b( cs |
    
    \barNumberCheck 65
    d8-.) e-. e,-. |
    a8( b cs |
    d8-.) e-. e,-. |
    a4. |
  }
  \repeat volta 2 {
    <a a'>4. |
    q4. |
    q4. |
    <b' fs'!>4 <a e'>8-. |
    
    \barNumberCheck 73
    <b fs'>4 <a e'>8-. |
    <b, b'>4 q8-. |
    <e, e'>4 <f f'>8-. |
    <g g'>4 q8-. |
    <a' e'>4 <g d'>8-. |
    <a e'>4-> <g d'>8-. |
    <a, a'>4 q8 |
    <d, d'>4 <e e'>8-. |
    
    \barNumberCheck 81
    <f f'>4 q8-. |
    <g' d'>4-> <f c'>8-. |
    <g d'>4 <f c'>8-. |
    g8( a b |
    c,8-.) c'( b |
    a8-.) g-. f-. |
    e8( c'-.) b-. |
    a8-. g-. f-. |
    
    \barNumberCheck 89
    e8( <c c'>-.) <b b'>-. |
    <a a'>8-. <g g'>-. <f f'>-. |
    <e e'>4. |
    q4. |
    q4. |
    q4. |
    e'8( gs) e-. |
    <a, a'>4 \voiceTwo <ds a'>8-. |
    
    \barNumberCheck 97
    e4. |
    \oneVoice b4 b'8-. |
    c4 <a c fs>8-. |
    <g d'>4. |
    d'4. |
    <a e'>8.( g'16 fs! e |
    d8-.) b-. g-. |
    a16( b cs d e fs |
    
    \barNumberCheck 105
    g8-.) fs-. e-. |
    d8( a) r |
    a16( b cs d e fs |
    g8-.) fs-. e-. |
    d8( a) r |
    a16( b cs d e fs |
    \clef treble g16 a b cs d e |
    \addStaccato {
      d8) d <cs d> |
      
      \barNumberCheck 113
      <b d>8 <a d> <g d'> |
      \stemDown <fs d'>8 d' <cs d> |
      <b d>8 <a d> <g d'> |
      \stemNeutral <fs d'>8 <d d'> <cs cs'> |
      <b b'>8 <a a'> <g g'> |
      \clef bass <fs fs'>8 <e e'> <d d'> |
    }
    g'8( a-.) a,-. |
    d,8( d'-.) cs-. |
    
    \barNumberCheck 121
    b8-. a-. g-. |
    fs8( d'-.) cs-. |
    b8-. a-. g-. |
    fs8( <d d'>-.) <cs cs'>-. |
    \addStaccato {
      <b b'>8 <a a'> <g g'> |
      <fs fs'>8 <e e'> <d d'> |
    }
    g'8( a a, |
    d8) e( fs |
    
    \barNumberCheck 129
    g8-.) a-. a,-. |
    d8( e fs |
    g8-.) a-. a,-. |
    d,8( e fs |
    g8-.) a-. a,-. |
    d4. |
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
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4.*3 |
    s4.-\tweak Y-offset #0.5 \p |
    s4. |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 9
    s4. |
    s4.\f |
    s4.*6 |
    
    \barNumberCheck 17
    s4 s8\f\> |
    s4.-\tweak X-offset #1 \p |
    s4.-\tweak Y-offset #4 \cresc |
    s4.*4 |
    s4 s8-\tweak X-offset #-1 \f |
    
    \barNumberCheck 25
    s4.*8 |
    
    \barNumberCheck 33
    s4.*3 |
    s8. s-\tweak extra-offset #'(0 . -1) \p |
    s4.-\tweak Y-offset #-2 \cresc |
    s4.*3 |
    
    \barNumberCheck 41
    s4. |
    s4.\f |
    s4.*2 |
    s4.\p |
    s4.*2 |
    s4.\f |
    
    \barNumberCheck 49
    s4. |
    s16 s\p\cresc s4 |
    s4.*3 |
    s4.\f |
    s4. |
    s4.\p\cresc |
    
    \barNumberCheck 57
    s4.*3 |
    s4.-\tweak Y-offset #1 -\tweak extra-offset #'(0 . -0.5) \f |
    s4.*4 |
    
    \barNumberCheck 65
    s4.*4 |
  }
  \repeat volta 2 {
    s4.\f |
    s4.*2 |
    s8 s4\p\cresc |
    
    \barNumberCheck 73
    s4.*2 |
    s4.\f |
    s4. |
    s8 s4\p\cresc |
    s4.*2 |
    s4.\f |
    
    \barNumberCheck 81
    s4. |
    s8 s4\p\cresc |
    s4\< s16 s\! |
    s4\> s16 s\! |
    s4.\p |
    s4.\cresc |
    s4.*2 |
    
    \barNumberCheck 89
    s4.\f |
    s4.*6 |
    s4 s8\f\> |
    
    \barNumberCheck 97
    s4.\p |
    s4.-\tweak Y-offset #-3.5 \cresc |
    s4.*2 |
    s4 s8-\tweak Y-offset #-3 \f |
    s8.\> s\p\cresc |
    s4. |
    s4.-\tweak Y-offset #-1.5 \f |
    
    \barNumberCheck 105
    s4.*2 |
    s4.\p |
    s4.*2 |
    s4.\f |
    s4. |
    s16 s\p s4 |
    
    \barNumberCheck 113
    s4. |
    s4.-\tweak Y-offset #-0.5 \cresc |
    s4. |
    s8 s4\f |
    s4.*3 |
    s4.\p\cresc |
    
    \barNumberCheck 121
    s4.*3 |
    s4.\f |
    s4.*4 |
    
    \barNumberCheck 129
    s4.*6 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Vivo" 4. = 92
    s4.*64 |
    
    \barNumberCheck 65
    s4.*2 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 84 s8 \tempo 4. = 76 s \tempo 4. = 69 s |
    \tempo 4. = 63 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 92
    s4.*4 |
    
    \barNumberCheck 73
    s4.*56 |
    
    \barNumberCheck 129
    s4.*4 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 84 s8 \tempo 4. = 76 s \tempo 4. = 69 s |
          \tempo 4. = 63 s4. |
        }
        {
          \tempo 4. = 80 s8 \tempo 4. = 69 s \tempo 4. = 60 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  s4.*7 \break
  s4.*8 \break
  s4.*8 \break
  s4.*7 \pageBreak
  
  % page 2
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*7 \pageBreak
  
  % page 3
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*7 \pageBreak
  
  % page 4
  s4.*7 \break
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
