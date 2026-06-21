%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in A major"
  opus   = "K.221"
  source = "https://s9.imslp.org/files/imglnks/usimg/5/51/IMSLP914999-PMLP495527-E4488_1-5-Scarlatti_-_Keyboard_Sonatas,_L.259-271.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((-0.3 . 2) (-0.3 . 0.5) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeB = \shape #'((0 . -1) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (2.8 . 0) (2.8 . -0.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 1) (0 . 1))
                      ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.5)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1.5) (0 . 1.3) (1 . 0.3) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeI = \shape #'((0 . -0.5) (0 . 0.5) (0 . 1) (0 . -2.5)) \etc
slurShapeJ = \shape #'((0.2 . 0) (0.2 . 0) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'(
                        ((0 . 0.3) (0 . 0.3) (0 . 0.3) (0 . 0.3))
                        ((0.2 . 0.2) (0.2 . 0.5) (0 . 0.5) (0 . -1))
                      ) \etc
slurShapeL = \shape #'((0 . -0.3) (2 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0)) \etc
slurShapeN = \shape #'((-0.5 . 1) (-0.5 . 1) (0.5 . 1) (0.5 . 1)) \etc

%
% Music
%

global = {
  \time 3/8
  \key a \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    r8 \voiceOne a''4~ |
    a8 <gs b>4-> |
    \oneVoice r8 \voiceOne a4~ |
    % Beat two, source is missing the accent
    a8 <gs b>4-> |
    \oneVoice r8 \voiceOne a4~ |
    a8 <es gs b>4-> |
    \oneVoice r8 \voiceOne <fs a>4~ |
    q8 <es gs b>4-> |
    
    \barNumberCheck 9
    \oneVoice r8 \voiceOne <fs a>4~ |
    q8 <e! g>4-> |
    \oneVoice r8 \voiceOne <d fs>4~ |
    q8 <cs e g>4-> |
    \oneVoice r8 \voiceOne <d fs>4~ |
    q8 <cs e g>4-> |
    \oneVoice fs16( d a fs) fs'[( gs!] |
    a4) a8-. |
    
    \barNumberCheck 17
    gs16( b e, gs b, d |
    cs8) a'-. fs-. |
    d8-. b-. e-. |
    cs8( a) cs~ |
    cs8 b-. a-. |
    gs8-. a-. b-. |
    cs16( b a gs fs e) |
    r4 fs'8( |
    
    \barNumberCheck 25
    b8-.) a-. g-. |
    \acciaccatura { a8 } g( fs c') |
    \acciaccatura { fs,8 } e4( ds8) |
    r4 fs8( |
    b8-.) a-. g-. |
    \acciaccatura { a8 } g( fs c') |
    \acciaccatura { fs,8 } e4( ds8) |
    r8 \voiceOne b'4-\slurShapeA (~ |
    
    \barNumberCheck 33
    b8 c d~ |
    d8 c b~ |
    b4 as8 |
    \oneVoice b16)( g a! fs g e |
    a16 fs g e fs ds |
    \addStaccato {
      e8) gs! b |
      e,8 a cs |
    }
    ds,16-\slurShapeB ( b' a fs gs e |
    
    \barNumberCheck 41
    a16 fs gs e fs ds |
    \addStaccato {
      e8) gs b |
      e,8 a cs |
      e,8 gs b |
      e,8 a cs |
    }
    e,8-. gs b->-\slurShapeC (~ |
    b16 a gs fs e ds |
    \addStaccato {
      e8) gs b |
      
      \barNumberCheck 49
      e,8 a cs |
      e,8 gs b |
      e,8 a cs |
    }
    e,8-. gs b->-\slurShapeD (~ |
    b16 a gs fs e ds) |
    as'16( cs b4~ |
    b16 a! gs fs e ds) |
    ds16( fs e4~ |
    
    \barNumberCheck 57
    \stemDown e16 cs b a gs fs) |
    as'16( cs b4~ |
    b16 a! gs fs e ds) |
    gs16( b e, gs b, e |
    cs16 e) \stemNeutral fs,4\prall |
    gs'16( b e, gs b, e |
    cs16 e) \stemNeutral fs,4(\prall |
    \alternative {
      { e4) r8 | }
      {
        \repeat volta 2 {
          \barNumberCheck 65
          \once \override Score.VoltaBracket.musical-length = \musicLength 4.
          e8\repeatTie r b'( |
          e8-.) d-. c-. |
          \acciaccatura { d8 } c( b f') |
          \acciaccatura { b,8 } a4-\slurShapeJ ( gs8) |
          r4 b8( |
          e8-.) d-. c-. |
          \acciaccatura { d8 } c( b f') |
          \acciaccatura { b,8 } a4-\slurShapeJ ( gs8) |
          
          \barNumberCheck 73
          e'8( as, b |
          as4) cs8( |
          fs8-.) e-. d-. |
          \acciaccatura { e8 } d( cs g') |
          \acciaccatura { cs,8 } b8( as4) |
          r4 cs8( |
          fs8-.) e-. d-. |
          \acciaccatura { e8 } d( cs g') |
          
          \barNumberCheck 81
          \acciaccatura { cs,8 } b8( as4) |
          \stemDown fs16( cs' as cs fs, e' |
          \addStaccato {
            ds8) fs ds |
            b8 gs' as |
          }
          b8-. e,( ds |
          gs8-.) fs-. es-. |
          \voiceOne fs4. |
          fs8-. e-. d!-. |
          
          \barNumberCheck 89
          \oneVoice \acciaccatura { e8 } d8( cs) b-. |
          \voiceOne g'8-. fs-. e-. |
          \oneVoice \acciaccatura { fs8 } e8( d) cs-. |
          \voiceOne a'8-. g-. fs-. |
          \oneVoice \acciaccatura { g8 } fs( e) ds-. |
          \voiceOne b'8-. a-. gs!-. |
          \oneVoice \acciaccatura { a8 } gs8( fs) es-. |
          \voiceOne cs'8-. b-. a-. |
          
          \barNumberCheck 97
          \oneVoice gs16-\slurShapeF ( b es, b' cs, b' |
          a4.~ |
          a8) fs-. b->(~ |
          b16 gs fs es fs a |
          gs16 b a gs fs es |
          fs16 a ds, fs bs, ds |
          fs,16 a gs fs e ds |
          e16 gs cs4~ |
          
          \barNumberCheck 105
          cs8) cs,-. fs~ |
          fs16( a gs fs e d |
          e8-.) fs-. gs-. |
          a16( gs fs e ds cs) |
          cs8-. bs4\prall |
          \voiceOne gs'8-. fs-. e-. |
          \oneVoice e8( ds) cs |
          \voiceOne a'8-. gs-. fs-. |
          
          \barNumberCheck 113
          \oneVoice fs8( e) ds-. |
          \voiceOne b'-. a-. gs-. |
          \oneVoice gs8( fs) es-. |
          \voiceOne cs'8-. b-. a-. |
          \oneVoice a8( gs) fs-. |
          \voiceOne d'8-. cs-. d-. |
          \oneVoice gs16-\slurShapeH ( b e, gs b, d |
          \stemDown cs16 e a, cs e, gs |
          
          \barNumberCheck 121
          \stemNeutral fs4) d'8(~ |
          d4.~ |
          d16 cs b a gs d' |
          cs16 b a gs fs e) |
          fs'16( e d cs b a |
          e8-.) r b'( |
          e8-.) d-. c-. |
          \acciaccatura { d8 } c( b f') |
          
          \barNumberCheck 129
          \acciaccatura { b,8 } a4-\slurShapeJ ( gs8) |
          r4 b8( |
          e8-.) d-. c-. |
          \acciaccatura { d8 } c( b f') |
          \acciaccatura { b,8 } a4-\slurShapeJ ( gs8) |
          r8 \voiceOne e'4-\slurShapeK (~ |
          \hideNoteHead e8 s4 |
          s4 \hideNoteHead e8~ |
          
          \barNumberCheck 137
          e4 ds8 |
          \oneVoice e16)( cs d! b cs a |
          d16 b cs a b gs |
          \addStaccato {
            a8) cs e |
            a, d fs |
          }
          \osp #'(-1 . 0) gs,16( e' d b cs a |
          d16 b cs a b gs |
          \addStaccato {
            a8) e' a |
            
            \barNumberCheck 145
            fs8 gs b |
            e,8 a cs |
            fs,8 gs b |
            e, a cs |
          }
          b16( a gs fs e d |
          \addStaccato {
            cs8) e a |
            fs8 gs b |
            e,8 a cs |
            
            \barNumberCheck 153
            fs,8 gs b |
            e, a cs |
          }
          b16( a gs fs e d) |
          gs16-\slurShapeL ( b a4~ |
          a16 fs e d cs b) |
          ds16( fs e4~ |
          e16 d! cs b a gs) |
          gs'16( b a4~ |
          
          \barNumberCheck 161
          a16 fs e d cs b) |
          \osp #'(0 . 3.5) cs'16( a e cs a e |
          a,8)\noBeam \osp #'(0 . -3) b''8.(\trill a32 b |
          cs16 a e cs a e |
          a,8)\noBeam b''8.(\trill a32 b |
          \alternative {
            { 
              a4->) r8 |
              r4 b,8-\slurShapeN \laissezVibrer | 
            }
            {  
              a'4->\repeatTie r8 |
            }
          }
        }
        \fine
      }
    }
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s8 \voiceFour a''8( <a, cs>-.) |
    <b d>4.-> |
    s8 a'8( <a, cs>-.) |
    <b d>4.-> |
    s8 a'8( <a, cs>-.) |
    b4.-> |
    s8 cs8( a) |
    b4.-> |
    
    \barNumberCheck 9
    s8 cs8( a) |
    b8-. s4 |
    s8 a8( fs) |
    g4.-> |
    s8 a8( fs) |
    g4.-> |
    s4.*2 |
    
    \barNumberCheck 17
    s4.*8 |
    
    \barNumberCheck 25
    s4.*7 |
    s8 b'8 d,~ |
    
    \barNumberCheck 33
    d8 e f~ |
    f8 e ds~ |
    ds8 e4 |
    s4.*5 |
    
    \barNumberCheck 41
    s4.*16 |
    
    \barNumberCheck 57
    s4.*7 |
    \alternative {
      { s4. | }
      {
        \repeat volta 2 {
          \barNumberCheck 65
          s4.*16 |
          
          \barNumberCheck 81
          s4.*6 |
          r4 fs,8~ |
          fs4. |
          
          \barNumberCheck 89
          s4. |
          g4. |
          s4. |
          a4. |
          s4. |
          b4. |
          s4. |
          cs4. |
          
          \barNumberCheck 97
          s4.*8 |
          
          \barNumberCheck 105
          s4.*5 |
          gs,4. |
          s4. |
          a4. |
          
          \barNumberCheck 113
          s4. |
          b4. |
          s4. |
          cs4. |
          s4. |
          d4. |
          s4.*2 |
          
          \barNumberCheck 121
          s4.*8 |
          
          \barNumberCheck 129
          s4.*5 |
          s8 e'8 g,~ |
          \oneVoice <g e'>8 <a f'> <bf g'>~ |
          q8 <a f'> <gs! e'>_~ |
          
          \barNumberCheck 137
          \voiceFour gs8 a4 |
          s4.*7 |
          
          \barNumberCheck 145
          s4.*16 |
          
          \barNumberCheck 161
          s4.*5 |
          \alternative {
            { s4.*2 | }
            { s4. | }
          }
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
    s4.*16 |
    
    \barNumberCheck 17
    s4.*7 |
    \clef treble \voiceThree b8( b' a |
    
    \barNumberCheck 25
    g8-.) fs-. e-. |
    c( c' a |
    g8 fs16 e fs8-.) |
    b,8( b' a |
    g8-.) fs-. e-. |
    c8( c' a |
    g8 fs16 e fs8-.) |
    b,8( b' gs!~ |
    
    \barNumberCheck 33
    gs8 a gs) |
    a,8 a' b, |
    c8 a' e |
    fs4 e8 |
    s4.*4 |
    
    \barNumberCheck 41
    s4.*16 |
    
    \barNumberCheck 57
    s4.*7 |
    \alternative {
      { s4. | }
      {
        \repeat volta 2 {
          \barNumberCheck 65
          \clef bass e,8( e' d |
          c8-.) b-. a-. |
          f8( f' d |
          c8 b16 a b8-.) |
          e,8( e' d |
          c8-.) b-. a-. |
          f8( f' d |
          c8 b16 a b8-.) |
          
          \barNumberCheck 73
          e4. |
          fs,8( fs' e |
          d8-.) cs-. b-. |
          g8( g' e |
          d8 cs16 b cs8-.) |
          fs,8( fs' e |
          d8-.) cs-. b-. |
          g8( g' e |
          
          \barNumberCheck 81
          d8 cs4) |
          s4.*5 |
          \osp #'(0 . -1) fs,8( fs' e |
          d!8-.) cs-. b-. |
          
          \barNumberCheck 89
          \osp #'(0 . -1) g8( g' fs |
          e8-.) d-. cs-. |
          \osp #'(0 . -1) a8( a' g |
          fs8-.) e-. ds-. |
          \clef treble \osp #'(0 . -0.5) b8( b' a |
          gs!8-.) fs-. es-. |
          cs8( cs' b |
          a8-.) gs-. fs-. |
          
          \barNumberCheck 97
          s4.*4 |
          \clef bass b,8-. <fs a>-. gs-. |
          s4.*3 |
          
          \barNumberCheck 105
          s4.*4 |
          gs,8( gs' fs |
          e8-.) ds-. cs-. |
          \osp #'(0 . -1.5) a8( a' gs |
          fs8) e-. ds-. |
          
          \barNumberCheck 113
          b8-\slurShapeG ( b' a |
          gs8-.) fs-. e-. |
          \osp #'(0 . -1) cs( cs' b |
          a8-.) gs-. fs-. |
          \osp #'(0 . -1) d8( d' cs |
          b8-.) a-. gs-. |
          s4.*2 |
          
          \barNumberCheck 121
          s4.*5 |
          \osp #'(0 . -0.5) e8( e' d |
          c8-.) b-. a-. |
          f8( f' d |
          
          \barNumberCheck 129
          c8 b16 a b8-.) |
          \osp #'(0 . -1) e,8( e' d |
          c8-.) b-. a-. |
          f8( f' d |
          c8 b16 a b8-.) |
          e,8( e' d |
          cs8 d cs) |
          d, d'4 |
          
          \barNumberCheck 137
          f,8 d'4 |
          b4 a8 |
          d8-. cs-. b-. |
          s4.*5 |
          
          \barNumberCheck 145
          s4.*8 |
          
          \barNumberCheck 153
          s4.*3 |
          a4. |
          s4.*4 |
          
          \barNumberCheck 161
          s4.*5 |
          \alternative {
            { 
              s4. |
              e8-\slurShapeM ( e' d) |
            }
            {  
              s4. |
            }
          }
        }
      }
    }
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    \override Parentheses.font-size = #-2
    \parenthesize a,8 r r |
    r8 gs''-. e-. |
    a,,4.-> |
    r8 gs''-. e-. |
    a,,4.-> |
    r8 gs''-. es-. |
    fs,,4.-> |
    r8 gs''-. es-. |
    
    \barNumberCheck 9
    fs,,4.-> |
    r8 e''!-. cs-. |
    d,,4.-> |
    r8 e''-. cs-. |
    d,,4.-> |
    r8 e''-. cs-. |
    d,,4.-> |
    cs''16( a e cs) \clef treble cs'[( ds!] |
    
    \barNumberCheck 17
    e8-.) fs-. gs-. |
    a16( cs fs, a d, fs |
    \clef bass b,16 d gs, b e, gs |
    a16 cs fs, a ds, fs |
    b,16 ds cs e ds fs |
    e16 gs fs a gs b |
    a8-.) b-. cs-. |
    \clef treble 
    \voiceTwo b4. |
    
    \barNumberCheck 25
    b4. |
    c4. |
    b4. |
    b4. |
    b4. |
    c4. |
    b4. |
    b4. |
    
    \barNumberCheck 33
    b4. |
    a4( b8 |
    c4 cs8 |
    ds8 b e) |
    \oneVoice <a, a'>8-. <b g'>-. <b fs' a>-. |
    gs'!16( b e, gs cs, e |
    \clef bass a,16 cs fs, a ds, fs |
    b,8-.) ds-. e-. |
    
    \barNumberCheck 41
    a8( b) b,-. |
    e8-.\noBeam \clef treble gs'16( b gs e) |
    \clef bass a,,8-.\noBeam \clef treble a''16( cs a fs) |
    \clef bass gs,,8-.\noBeam \clef treble gs''16( b gs e) |
    \clef bass a,,8-.\noBeam \clef treble a''16( cs a fs) |
    \clef bass gs,,8-.\noBeam \clef treble gs''16( b gs e) |
    \clef bass a,,8( b) b,-. |
    e8-.\noBeam \clef treble gs''16( b gs e) |
    
    \barNumberCheck 49
    \clef bass a,,8-.\noBeam \clef treble a''16( cs a fs) |
    \clef bass gs,,8-.\noBeam \clef treble gs''16( b gs e) |
    \clef bass a,,8-.\noBeam \clef treble a''16( cs a fs) |
    \clef bass gs,,8-.\noBeam \clef treble gs''16( b gs e) |
    \clef bass a,,8( b) b,-. |
    e'8( fs gs |
    a8 b) b,-. |
    e8( fs gs |
    
    \barNumberCheck 57
    a8 b) b,-. |
    e8( fs gs |
    a8 b) b,-. |
    e8( fs gs |
    a8 b-.) b,-. |
    e8( fs gs |
    a8 b-.) b,-. |
    \alternative {
      { e16( fs e d cs b) | }
      {
        \repeat volta 2 {
          \barNumberCheck 65
          \voiceTwo e4. |
          e4. |
          f4. |
          e4. |
          e4. |
          e4. |
          f4. |
          e4.( |
          
          \barNumberCheck 73
          e8 fs! g) |
          fs4. |
          fs4. |
          g4. |
          fs4. |
          fs4. |
          fs4. |
          g4. |
          
          \barNumberCheck 81
          fs4( gs!8 |
          \oneVoice as8-.) fs-. as-. |
          b16-\slurShapeE ( fs' ds fs b, ds |
          gs,16 b e, gs cs, e |
          ds16 fs cs e b ds |
          e16 gs fs as gs b |
          \voiceTwo fs4.) |
          fs4. |
          
          \barNumberCheck 89
          g4. |
          g4. |
          a4. |
          a4. |
          \clef treble b4. |
          b4. |
          cs4. |
          cs4. |
          
          \barNumberCheck 97
          \oneVoice es8-. cs-. es-. |
          fs16( a cs a fs a |
          d,16 fs b, d gs, b |
          \clef bass cs,4) cs8_( |
          \voiceTwo b8) cs4-> |
          \oneVoice fs8-. a-. fs-. |
          gs8( as bs |
          cs8.) e16( cs e |
          
          \barNumberCheck 105
          a,!16 cs fs, a ds, fs |
          \addStaccato {
            gs,8) as bs |
            cs8 ds e |
            fs gs a |
          }
          \voiceTwo gs,4. |
          gs4. |
          a4. |
          a4. |
          
          \barNumberCheck 113
          b4. |
          b4. |
          cs4. |
          cs4. |
          d4. |
          d4. |
          \addStaccato {
            \oneVoice e8 gs e |
            a8 cs a |
          }
          
          \barNumberCheck 121
          d16-\slurShapeI ( fs b, d gs, b |
          d,16 fs b, d gs, b |
          e,4) e'8( |
          \addStaccato {
            a,8) b cs |
            d8 e fs |
          }
          \voiceTwo e4. |
          e4. |
          f4. |
          
          \barNumberCheck 129
          e4. |
          e4. |
          e4. |
          f4. |
          e4. |
          e4. |
          e4. |
          d4( e8 |
          
          \barNumberCheck 137
          f4 fs8 |
          gs!8 e a) |
          d,8-. e4-> |
          \oneVoice cs'16( e a, cs fs, a |
          d,16 fs b, d gs, b |
          e,8) gs( a |
          d8 e) e,-. |
          a8-.\noBeam \clef treble cs''16( e cs a) |
          
          \barNumberCheck 145
          \clef bass d,,8-.\noBeam \clef treble b''16( d b gs) |
          \clef bass cs,,8-.\noBeam \clef treble cs''16( e cs a) |
          \clef bass d,,8-.\noBeam \clef treble b''16( d b gs) |
          \clef bass cs,,8-.\noBeam \clef treble cs''16( e cs a) |
          \clef bass d,,8( e) e,-. |
          a8-.\noBeam \clef treble cs''16( e cs a) |
          \clef bass d,,8-.\noBeam \clef treble b''16( d b gs) |
          \clef bass cs,,8-.\noBeam \clef treble cs''16( e cs a) |
          
          \barNumberCheck 153
          \clef bass d,,8-.\noBeam \clef treble b''16( d b gs) |
          \clef bass cs,,8-.\noBeam \clef treble cs''16( e cs a) |
          \clef bass d,,8( e) e,-. |
          \voiceTwo a8( b cs |
          \oneVoice d8 e) e,-. |
          a8( b cs |
          d8 e) e,-. |
          a8( b cs |
          
          \barNumberCheck 161
          d8 e) e,-. |
          <a a'>4.-> |
          a8-. e'-. e,-. |
          <a a'>4.-> |
          a8-. e'-. e,-. |
          \alternative {
            { 
              a4-> r8 |
              \voiceTwo e'4. |
            }
            {  
              \oneVoice a,4-> r8 |
            }
          }
        }
        \fine
      }
    }
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
    s4.*7 |
    
    \barNumberCheck 9
    s4.*16 |
    
    \barNumberCheck 25
    s4.*3 |
    s4.-\tweak Y-offset #0 \p |
    s4.*3 |
    s4.-\tweak Y-offset #0 \mf |
    
    \barNumberCheck 33
    s4-\tweak Y-offset #0.5 \< s8-\tweak Y-offset #0 \f |
    s4.*7 |
    
    \barNumberCheck 41
    s4. |
    s8 s4-\tweak Y-offset #0 \p |
    s4.\cresc |
    s4.*2 |
    s4 s8-\tweak Y-offset #0 \f |
    s4. |
    s8 s4-\tweak Y-offset #0 \p |
    
    \barNumberCheck 49
    s4.\cresc |
    s4.*2 |
    s4 s8-\tweak Y-offset #0 \f |
    s4.*4 |
    
    \barNumberCheck 57
    s4. |
    s4.\p |
    s4.-\tweak Y-offset #1 \cresc |
    s4.\f |
    s4.*3 |
    \alternative {
      { s4. | }
      {
        \repeat volta 2 {
          \barNumberCheck 65
          s4.\f |
          s4.*3 |
          s4.\p |
          s4.*3 |
          
          \barNumberCheck 73
          s4.-\tweak Y-offset #-2.5 \mf |
          s8 s4\f |
          s4.*3 |
          s4.-\tweak Y-offset #-1 \p |
          s4.*2 |
          
          \barNumberCheck 81
          s4. |
          s4.-\tweak Y-offset #-2 \cresc |
          s4.*2 |
          s4.\f |
          s4. |
          s8 s4\p |
          \once \override DynamicTextSpanner.bound-details.left.padding = 1.5
          s4.\cresc |
          
          \barNumberCheck 89
          s4.*7 |
          s4.\f |
          
          \barNumberCheck 97
          s4.*8 |
          
          \barNumberCheck 105
          s4.*4 |
          s8 s\> s8\! |
          s4.-\tweak X-offset #1 \p |
          s4.\cresc |
          s4. |
          
          \barNumberCheck 113
          s4.*6 |
          s4.-\tweak Y-offset #-7 \f |
          s4. |
          
          \barNumberCheck 121
          s4.*8 |
          
          \barNumberCheck 129
          s4. |
          s4.\p |
          s4.*3 |
          s4.\mf |
          s4\< s8\f |
          s4. |
          
          \barNumberCheck 137
          s4.*7 |
          s8 s4\p |
          
          \barNumberCheck 145
          s4.\cresc |
          s4.*3 |
          s4.-\tweak Y-offset #0 \f |
          s8 s4-\tweak Y-offset #0 \p |
          s4.-\tweak Y-offset #0 \cresc |
          s4. |
          
          \barNumberCheck 153
          s4.*2 |
          s4.-\tweak Y-offset #0 \f |
          s4.*4 |
          s4.-\tweak Y-offset #0 \p |
          
          \barNumberCheck 161
          s4\< s16 s\! |
          s4.\f |
          s4.*3 |
          \alternative {
            { s4.*2 | }
            { s4. | }
          }
        }
      }
    }
  }
}

pedal = {
  \repeat volta 2 {
    s4.*40 |
    
    \barNumberCheck 41
    s4. |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.-\tweak Y-offset #-1 \sd |
    
    \barNumberCheck 49
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.*3 |
    
    \barNumberCheck 57
    s4.*7 |
    \alternative {
      { s4. | }
      {
        \repeat volta 2 {
          \barNumberCheck 65
          s4.*72 |
          
          \barNumberCheck 137
          s4.*7 |
          s4.\sd |
          
          \barNumberCheck 145
          s4.-\tag layout \sd -\tag midi \sud |
          s4.-\tag layout \sd -\tag midi \sud |
          s4.-\tag layout \sd -\tag midi \sud |
          s4.-\tag layout \sd -\tag midi \sud |
          s4.\su |
          s4.\sd |
          s4.-\tag layout \sd -\tag midi \sud |
          s4.-\tag layout \sd -\tag midi \sud |
          
          \barNumberCheck 153
          s4.-\tag layout \sd -\tag midi \sud |
          s4.-\tag layout \sd -\tag midi \sud |
          s4.\su |
          s4.*5 |
          
          \barNumberCheck 161
          s4. |
          s4.-\tweak Y-offset #-1 \sd |
          s4.\su |
          s4.-\tweak Y-offset #-1 \sd |
          s4.\su |
          \alternative {
            { s4.*2 | }
            { s4. | }
          }
        }
      }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 80
    s4.*56 |
    
    \barNumberCheck 57
    s4.*7 |
    \set Score.tempoHideNote = ##t
    \alternative {
      { \tempo 4. = 72 s8 \tempo 4. = 66 s \tempo 4. = 60 s | }
      {
        \repeat volta 2 {
          \barNumberCheck 65
          \tempo 4. = 80
          s4.*96 |
          
          \barNumberCheck 161
          s4.*4 |
          \tag layout {
            s4. |
            \alternative {
              { s4.*2 | }
              { s4. | }
            }
          }
          \tag midi {
            \alternative {
              { 
                \tempo 4. = 72 s8 \tempo 4. = 66 s \tempo 4. = 60 s |
                s4. |
                \tempo 4. = 80
                s4. |
              }
              {  
                \tempo 4. = 69 s8 \tempo 4. = 60 s \tempo 4. = 54 s |
                \tempo 4. = 30 s4. |
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
  s4.*8 \break
  s4.*8 \break
  s4.*6 \break
  s4.*7 \break
  \grace { s8 } s4.*7 \pageBreak
  
  % page 2
  s4.*6 \break
  s4.*5 \break
  s4.*5 \break
  s4.*6 \break
  s4.*6 \pageBreak
  
  % page 3
  s4.*8 \break
  s4.*8 \break
  \grace { s8 } s4.*6 \break
  s4.*8 \break
  \grace { s8 } s4.*6 \pageBreak
  
  % page 4
  s4.*6 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  \grace { s8 } s4.*7 \pageBreak
  
  % page 5
  s4.*7 \break
  s4.*6 \break
  s4.*6 \break
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
