%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"
\include "initial-clef-engraver.ily"

#(ly:expect-warning "bar check failed")

\header { 
  title  = "Sonata in A major"
  opus   = "K.222"
  source = "https://s9.imslp.org/files/imglnks/usimg/0/06/IMSLP914909-PMLP495748-E4523_36-38-Scarlatti_-_Keyboard_Sonatas,_L.301-315.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -5) (0 . -5) (0 . -5) (0 . -5))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeC = \shape #'(
                        ((0.2 . 0) (0.2 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((-0.2 . -1.8) (-0.2 . -2) (-0.1 . -2) (-0.1 . -2.2))
                        ((0 . 0) (0 . 0) (0 . -1) (0 . -2))
                      ) \etc
slurShapeG = \shape #'((-0.8 . -0.4) (-0.8 . -0.2) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.2 . 0) (0.2 . 0.5) (0 . 0.5) (0 . 1))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.2 . 0) (0.2 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'((0.2 . 0) (0.2 . 0) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (-0.4 . 0.5) (0 . 1) (0 . 1.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'((0 . 0.5) (0 . -3) (0 . -1.5) (0 . 0.5)) \etc
slurShapeM = \shape #'(
                        ((-0.3 . -2.5) (-0.3 . -2.5) (0 . -2.5) (0 . -2.5))
                        ((0 . 0) (0 . -0.5) (0 . -1.75) (0 . -2.5))
                      ) \etc
slurShapeN = \shape #'((-1 . -0.5) (-1 . -0.5) (0 . 0) (0 . 0)) \etc
slurShapeO = \shape #'((-0.8 . -0.5) (-0.8 . -0.5) (0 . 0) (0 . 0)) \etc
slurShapeP = \shape #'((0 . 0) (0 . -2) (0 . -1) (0 . 5)) \etc
slurShapeQ = \shape #'((-0.5 . 2.5) (-0.5 . -1) (0 . -1) (0 . 0)) \etc
slurShapeR = \shape #'((0 . -1.5) (-2 . 1) (0 . 0) (0 . 0)) \etc
slurShapeS = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeT = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -1))
                      ) \etc
slurShapeU = \shape #'(
                        ((0 . 1) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 6/8
  \key a \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    R2.*2 |
    e''4.( d |
    cs4. b) |
    <a cs>4.( <gs b>) |
    <b d>4.( <a cs>) |
    b8( ds e  cs gs' a |
    b,8 as' b) \grace { a,!16( } a4.)(\trill |
    
    \barNumberCheck 9
    gs8-.) ds'( e  cs gs' a |
    b,8 as' b) \grace { a,!16( } a4.)-\slurShapeC (\trill |
    gs4) \voiceOne e'8(~  e ds e |
    ds8 cs) cs-.  cs( b) b-. |
    b8( a) a-.  gs( a b |
    \oneVoice fs4) \grace { e32( } \afterGrace 15/16 e8)-\slurShapeD (\trill
      { ds32 e } ds8-.) as'( b |
    \stemUp gs8 ds' e  fs, cs' ds) |
    \grace { e,16( } e4.)-\slurShapeE (\trill ds8-.) as'( b |
    
    \barNumberCheck 17
    gs8 ds' e  fs, cs' ds) |
    \grace { e,16( } e4.)-\slurShapeE (\trill ds4) \voiceOne b'8~^\> |
    \after 4 \! b4. \oneVoice r8 r \voiceOne b8~^\> |
    \after 4 \! b4. \oneVoice r8 r \voiceOne b8~ |
    b4. \oneVoice r8 r \voiceOne b8~ |
    b4. \oneVoice r8 r \voiceOne b8~ |
    b8 s4 s4. |
    s2. |
    
    \barNumberCheck 25
    s4. \oneVoice r8 r \voiceOne b8~^\> |
    \after 4 \! b4. \oneVoice r8 r \voiceOne b8~^\> |
    \after 4 \! b4. \oneVoice r8 r \voiceOne b8~ |
    b4. \oneVoice r8 r \voiceOne b8~ |
    b4. \oneVoice r8 r \voiceOne b8~ |
    b8 s4 s4. |
    s2. |
    \oneVoice e,8 \osp #'(-0.5 . -1) ds'( e  cs gs' a |
    
    \barNumberCheck 33
    b, as' b  a gs fs |
    e8) ds-\slurShapeI ( e  cs gs' a |
    b, as' b  a gs fs |
    e4) b8(  bs cs ds |
    e8 b! a) \acciaccatura { b } a-\slurShapeJ ( gs fs |
    e4) b8(  bs cs ds |
    e8 b!) \clef bass \voiceOne e~\noBeam e4 ds8-. |
    e4. \clef treble
  } 
  \repeat volta 2 {
    \oneVoice r4 r8 |
    
    \barNumberCheck 41
    R2. |
    \stemDown <e e'>8( b' cs  d a b  |
    <a cs>4. \stemNeutral <gs b>) |
    <b d>4.( <a cs>) |
    <cs e>4.( \voiceOne ds4) gs8-\slurShapeK (~ |
    gs8 fs) fs-.  fs( e) e-. |
    e8( ds) ds-. \oneVoice \acciaccatura { fs } e( ds cs) |
    cs8( ds bs \voiceOne cs ds e~ |
    
    \barNumberCheck 49
    e8 d! cs  d b fs'~ |
    fs8 e) e-.  e( d) d-. |
    d8( cs) cs-. \oneVoice \acciaccatura { e } d( cs b) |
    b8-\slurShapeL ( cs as \voiceOne b8 cs d~ |
    d8 cs b  cs d e |
    \oneVoice b4) \grace { a32( } \afterGrace 15/16 a8)-\slurShapeS (\trill
      { gs32 a } gs4) \voiceOne  e'8~^\> |
    \after 4 \! e4. \oneVoice r8 r \voiceOne e8~^\> 
    \after 4 \! e4. \oneVoice r8 r \voiceOne e8~ |
    
    \barNumberCheck 57
    e4. \oneVoice r8 r \voiceOne e8~ |
    e4. \oneVoice r8 r \voiceOne e8~ |
    e8 s4 s4. |
    s2. |
    s4. \oneVoice r8 r \voiceOne e,8~^\> 
    \after 4 \! e4. \oneVoice r8 r \voiceOne e8~^\> 
    \after 4 \! e4. \oneVoice r8 r \voiceOne e8~ |
    e4. \oneVoice r8 r \voiceOne e8~ |
    
    \barNumberCheck 65
    e4. \oneVoice r8 r \voiceOne e8~ |
    e8 s4 s4. |
    s2. |
    \oneVoice a,8 \osp #'(0 . 1.5) gs'( a  fs cs' d |
    e,8 ds' e) \acciaccatura { e } d( cs b |
    a8) gs( a  fs cs' d |
    e,8 ds' e) \acciaccatura { e } d( cs b |
    a4) e'8(  es fs gs |
    
    \barNumberCheck 73
    a8 e! cs) \acciaccatura { e } d( cs b |
    a4) e8-\slurShapeQ (  es fs gs |
    \voiceFour a8 e!) d(~  d cs) b-. |
    a4.->
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s2.*8 |
    
    \barNumberCheck 9
    s2.*2 |
    s4. \voiceFour fs' |
    e4. ds |
    cs4. b |
    s2.*3 |
    
    \barNumberCheck 17
    s2. |
    s4. s4 a'8-\slurShapeG (~ |
    a4 gs8) s4 a8-\slurShapeG (~ |
    a4 gs8) s4 a8-\slurShapeF (~ |
    a4 g8) s4 a8-\slurShapeG (~ |
    a4 g8) s4 a8~ |
    a8 gs!^( a  b a b |
    \oneVoice cs8 ds e  gs, a fs |
    
    \barNumberCheck 25
    e4.) s4 \voiceFour a8-\slurShapeF (~ |
    a4 gs8) s4 a8-\slurShapeG (~ |
    a4 gs8) s4 a8-\slurShapeG (~ |
    a4 g8) s4 a8-\slurShapeG (~ |
    a4 g8) s4 a8~ |
    a8 gs!-\slurShapeH ^( a  b a b |
    \oneVoice cs8 ds e  gs, a fs |
    \hideNoteHead e8) s4 s4. |
    
    \barNumberCheck 33
    s2.*6 |
    s4 \voiceTwo a,8(~\noBeam a gs) fs-. |
    e4.
  }
  \repeat volta 2 {
    s4. |
    
    \barNumberCheck 41
    s2.*4 |
    s4. bs''4. |
    a4. gs |
    fs4. s |
    s4. gs |
    
    \barNumberCheck 49
    fs4. fs |
    g4. fs |
    e4. s |
    s4. fs |
    e4. e |
    s4. s4 d'8-\slurShapeN (~ |
    d4 cs8) s4 d8-\slurShapeM (~ |
    d4 cs8) s4 d8-\slurShapeN (~ |
    
    \barNumberCheck 57
    d4 c8) s4 d8-\slurShapeN (~ |
    d4 c8) s4 d8~ |
    d8 cs!^( d  e d e |
    \oneVoice fs8 gs a  cs, d b |
    a4.) s4 \voiceFour d,8-\slurShapeO (~ |
    d4 cs8) s4 d8-\slurShapeO (~ |
    d4 cs8) s4 d8-\slurShapeO (~ |
    d4 c8) s4 d8-\slurShapeO (~ |
    
    \barNumberCheck 65
    d4 c8) s4 d8~ |
    d8 cs!-\slurShapeP ^( d  \oneVoice e d e |
    fs8 gs a  cs, d b |
    \hideNoteHead a8) s4 s4. |
    s2.*4 |
    
    \barNumberCheck 73
    s2.*2 |
    s4 \voiceOne a'8->~ a4 gs8-. |
    a4.->
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
    s2.*4 |
    \voiceThree a4. s |
    b4. s |
    s2.*2 |
    
    \barNumberCheck 9
    s2.*24 |
    
    \barNumberCheck 33
    s2.*7 |
    s4.
  }
  \repeat volta 2 {
    e4. |
    
    \barNumberCheck 41
    d4. cs |
    s2. |
    a8 cs d s4. |
    b8 d e s4. |
    s2.*4 |
    
    \barNumberCheck 49
    s2.*24 |
    
    \barNumberCheck 73
    s2.*3 |
    s4.
  }
}

leftHandLower = \relative {
  \clef treble % Initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    a''8-.->_( cs, d  e a, b |
    cs8 fs, gs  a cs, d |
    e8) gs( a  b fs gs |
    a8 cs, d  e d e) |
    \clef bass \voiceTwo a,8-\slurShapeA ( cs, d  e gs a |
    b8)-\slurShapeB ( d, e fs cs' ds |
    \clef treble \oneVoice e8)( fs gs  a gs fs |
    gs8 fs e  fs e ds |
    
    \barNumberCheck 9
    e8 fs gs  a gs fs |
    gs8 fs e  fs e ds |
    e8)\noBeam \clef bass gs,_( a  b fs gs |
    a8 e fs  gs ds e |
    fs8 cs ds  e fs gs |
    a8 b cs  b cs ds |
    e8 ds cs  ds cs b |
    cs8 b as  b cs ds |
    
    \barNumberCheck 17
    e8 ds cs  ds cs b |
    cs b as  b ds b |
    e8 gs, e)  b'( ds b |
    e8 gs, e)  b'( ds b |
    e8 g, e)  b'( ds b |
    e8 g, e)  b'( ds b |
    e8) e,( fs  gs fs gs |
    a8 b cs  b a b |
    
    \barNumberCheck 25
    e,8 gs e)  b'( ds b |
    e8 gs, e)  b'( ds b |
    e8 gs, e)  b'( ds b |
    e8 g, e)  b'( ds b |
    e8 g, e)  b'( ds b |
    e8) e,( fs  gs fs gs |
    a8 b cs  b a b |
    e,8 fs gs  a gs fs |
    
    \barNumberCheck 33
    gs8 fs e  fs e ds |
    e8 fs gs  a gs fs |
    gs8 fs e  fs e ds |
    e8 fs gs  a gs fs |
    gs8 fs e  b' a b |
    e,8 fs gs  a gs fs |
    gs8 fs e) b,4.( |
    e4.)
  }
  \repeat volta 2 {
    \voiceTwo e''8-\slurShapeT ( b cs |
    
    \barNumberCheck 41
    d8 a b  cs cs, d! |
    e4. fs4 gs8 |
    a4.)-\slurShapeU ( e'8 gs, fs |
    b4. fs'8 a, b |
    \oneVoice cs8 e fs  gs fs e |
    fs8 e ds  e ds cs |
    ds8 cs bs  cs ds e |
    fs8 ds gs  e ds cs |
    
    \barNumberCheck 49
    as8 b as  b cs d |
    e8 d cs d cs b |
    cs8 b as  b cs d |
    e8 cs fs  d cs b  |
    gs a gs  a b cs |
    d8 e fs  e gs e |
    a cs, a)  e'( gs e |
    a cs, a)  e'( gs e |
    
    \barNumberCheck 57
    a c, a)  e'( gs e |
    a c, a)  e'( gs e |
    a) a,( b  cs! b cs |
    d8 e fs  e d e |
    a, cs, a)  e'( gs e |
    a cs, a)  e'( gs e |
    a cs, a)  e'( gs e |
    a c, a)  e'( gs e |
    
    \barNumberCheck 65
    a) c,_( a  e' gs e |
    a8) a,_( b  cs! b cs |
    d8 e fs  e d e |
    a,8 b cs  d cs b |
    cs8 b a  b a gs |
    a8 b cs  d cs b |
    cs8 b a  e'4) e8-\slurShapeR ( |
    a8 b cs  d cs b |
    
    \barNumberCheck 73
    cs8 b a  e d e |
    a8 b cs  d cs b |
    cs8 b a) e,4.->( |
    a4.->)
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
    s8-\tweak Y-offset #0.5 \f s4\p s4. |
    s2.*3 |
    s2.\cresc |
    s2. |
    s2.\mf |
    s2. |
    
    \barNumberCheck 9
    s8 s4\p s4. |
    s2. |
    s4 s8\mf s4. |
    s2.\dim |
    s4. s\p |
    s4. s8 s4-\tweak Y-offset #1 \mf |
    s2. |
    s4. s8 s4\p |
    
    \barNumberCheck 17
    s2. |
    s4. s4-\tweak Y-offset #-1 \< s8-\tweak Y-offset #-1.5 \mf |
    s2. |
    s4. s4 s8\p |
    s2.*2 |
    s2.\cresc |
    s2. |
    
    \barNumberCheck 25
    s2.\f |
    s2. |
    s4. s4 s8\p |
    s2.*2 |
    s2.-\tweak Y-offset #-1 \cresc |
    s2. |
    s2.\f |
    
    \barNumberCheck 33
    s2. |
    s8 s4\p s4. |
    s2. |
    s4 s8-\tweak Y-offset #1 \cresc s4. |
    s2. |
    s4\mf s8\cresc s4. |
    s4 s8\f s4. |
    s4.
  }
  \repeat volta 2 {
    s4.-\tweak Y-offset #2 \mf |
    
    \barNumberCheck 41
    s2. |
    s2.-\tweak Y-offset #-2 \p |
    s2.\cresc |
    s2. |
    s4. s4 s8\f |
    s4. s\dim |
    s2. |
    s4.\p s4\< s8\! |
    
    \barNumberCheck 49
    s4.\> s4\< s8\mf |
    s4. s\dim |
    s2. |
    s4.-\tweak Y-offset #1 \p s4\< s8\! |
    s4.\> s\cresc |
    s4. s-\tweak Y-offset #1 \f |
    s2. |
    s4. s4 s8\p |
    
    \barNumberCheck 57
    s2.*2 |
    s2.-\tweak Y-offset #-1 \cresc |
    s2. |
    s2.\f |
    s2.|
    s4. s4 s8\p |
    s2. |
    
    \barNumberCheck 65
    s2. |
    s8 s\p s\cresc s4. |
    s2. |
    s2.\f |
    s2. |
    s8 s4-\tweak Y-offset #1 \p s4. |
    s2. |
    s4 s8\cresc s4. |
    
    \barNumberCheck 73
    s2. |
    s4\mf s8\cresc s4. |
    s4 s8-\tweak Y-offset #-2 \f s4. |
    s4.
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Vivo" 4. = 120
    s2.*32 |
    
    \barNumberCheck 33
    s2.*6 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 112 s4 \tempo 4. = 104 s \tempo 4. = 96 s |
    \tempo 4. = 80 s4.
  }
  \repeat volta 2 {
    \tempo 4. = 120
    s4. |
    
    \barNumberCheck 41
    s2.*32 |
    
    \barNumberCheck 73
    s2.*2 |
    \tag layout { s2. | s4. }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 112 s4 \tempo 4. = 104 s \tempo 4. = 96 s |
          \tempo 4. = 80 s4.
        }
        {
          \tempo 4. = 108 s4 \tempo 4. = 96 s \tempo 4. = 84 s |
          \tempo 4. = 50 s4.
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  \grace { s16 } s2.*5 \break
  s2.*5 \pageBreak
  
  % page 2
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \pageBreak
  
  % page 3
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
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
