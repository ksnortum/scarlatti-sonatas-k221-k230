%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in B minor"
  opus   = "K.227"
  source = "https://s9.imslp.org/files/imglnks/usimg/1/1e/IMSLP914736-PMLP497337-E4526_4-8-Scarlatti_-_Keyboard_Sonatas,_L.346-362.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.2 . 0) (0.2 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . -1) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 2/4
  \key b \minor
  \beamEighths.24
  % \set Staff.printKeyCancellation = ##f
  % \override Timing.TimeSignature.style = #'numbered
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    r8 fs''( d b) |
    \grace { fs'16( } fs8.)(\trill e32 fs  g8 fs |
    as4 b) |
    r8 fs( e g) |
    \appoggiatura { a!16 } g8( fs16 e  d8) g-. |
    \appoggiatura { a!16 } g8( fs16 e  d8) e-. |
    fs8-. b,( as cs |
    d8 e  fs16) g( e d |
    
    \barNumberCheck 9
    cs16) cs( b as  b) b( a g |
    fs16) fs( e d  cs) cs( b as |
    b16) b( a! g \clef bass  fs b d, e |
    <fs as>4) r8 \clef treble fs''-- |
    fs16-. fs( e ds  fs) fs( e ds |
    b'4) b( |
    e,16) e( d cs  e) e( d cs |
    a'4) a-\slurShapeB ( |
    
    \barNumberCheck 17
    b,16) b( cs d  cs) cs( d e |
    d16) d( e fs  e) e( fs g |
    fs4 g |
    a4 b8-.) d,-. |
    cs16-\slurShapeC ( a' e fs  cs d a b |
    cs4.) d8-. |
    e16( d cs b  a g fs e |
    \set subdivideBeams = ##t
    fs8-.) d'-. \omit TupletBracket \tuplet 3/2 8 { fs16( e d  cs b a } |
    
    \barNumberCheck 25
    b8 a') \tupletOff \tuplet 3/2 8 { g16( fs e  d cs b } |
    a8 g') \tuplet 3/2 8 { fs16-\slurShapeD ( e d  cs b a } |
    g8 fs') \tuplet 3/2 8 { e16( d cs  b a g } |
    fs4) r8 fs'-. |
    b,4 r8 g'-. |
    a,4 r8 fs'-. |
    g,4 r8 e'-. |
    fs,8( d') \tuplet 3/2 { fs16( e d } d8-.) |
    
    \barNumberCheck 33
    \tuplet 3/2 { b16( cs d } fs8-.) \tuplet 3/2 { a16( g fs } fs8-.) |
    \tuplet 3/2 { d16( e fs } d'8-.) a-. g-. |
    \tuplet 3/2 { \osp #'(-0.5 . 0) fs16( e fs } \acciaccatura { a8 } \tuplet 3/2 { g16 fs e } fs8-.) e-. |
    d8-. d-. \tuplet 3/2 { \osp #'(-0.5 . 0) fs16( e d } d8-.) |
    \tuplet 3/2 { b16( cs d } fs8-.) \tuplet 3/2 { a16( g fs } fs8-.) |
    \tuplet 3/2 { d16( e fs } d'8-.) a-. g-. |
    \tuplet 3/2 { \osp #'(-0.5 . 0) fs16( e fs } \acciaccatura { a8 } \tuplet 3/2 { g16 fs e } fs8-.) e-. |
    d8( fs) \tuplet 3/2 { a16( g fs } fs8-.) |
    
    \barNumberCheck 41
    \tuplet 3/2 { a16( g fs } fs8-.) \tuplet 3/2 { a16( g fs } fs8-.) |
    \tuplet 3/2 { <d b'>16( a' gs } gs8-.) \tuplet 3/2 { <d b'>16( a' gs } gs8-.) |
    <d gs b>8( cs') d-. cs-. |
    \addStaccato { b8 a gs fs } |
    <gs b>8( <fs a>) q( <es gs>) |
    \appoggiatura { q8 } fs4. <cs a'>8-. |
    \voiceOne \tuplet 3/2 { gs'16( fs es } es8-.)  fs( a) |
    \tuplet 3/2 { gs16( fs es } es8-.)  fs( cs') |
    
    \barNumberCheck 49
    \tuplet 3/2 { b16( a gs } gs8-.)  a8( cs) |
    \tuplet 3/2 { b16( a gs } gs8-.)  a8( cs) |
    \oneVoice \tuplet 3/2 { gs16( a b } b8-.) \tuplet 3/2 8 { a16( gs fs  gs fs es) } |
    \appoggiatura { es8 } fs4 r8 <cs a'>-. |
    \voiceOne \tuplet 3/2 { gs'16( fs es } es8-.)  fs( a) |
    \tuplet 3/2 { gs16( fs es } es8-.)  fs( cs') |
    \tuplet 3/2 { b16( a gs } gs8-.)  a8( cs) |
    \tuplet 3/2 { b16( a gs } gs8-.)  a8( cs) |
    
    \barNumberCheck 57
    \oneVoice \tuplet 3/2 { gs16( a b } b8-.) \tuplet 3/2 8 { a16( gs fs  gs fs es } |
    fs8 d') \tuplet 3/2 8 { cs16( b a  gs fs e! } |
    d8 cs') \tuplet 3/2 8 { b16( a gs  fs e d } |
    cs8 b') \tuplet 3/2 8 { a16( gs fs  e d cs } |
    b8 a') \tuplet 3/2 8 { gs16-\slurShapeE ( fs es  d cs b } |
    \tuplet 3/2 8 { 
      a16 b cs  b cs d  cs b a  gs fs es |
      fs16 gs a  b cs d  cs b a  gs fs es |
      fs16 gs a  b cs d  cs b a  gs fs es |
    }
    
    \barNumberCheck 65
    fs4) gs8-. b-. |
    a8( fs gs-.) b-. |
    a8( fs gs-.) b-. |
    \tuplet 3/2 8 { fs16_( gs a  b cs d  cs b a  gs fs es } |
    \tuplet 3/2 8 { fs16 gs a  b cs d } cs8-.) <gs es'>-. |
    \appoggiatura { q8 } <fs fs'>4 r |
  }
  \repeat volta 2 {
    \time 3/8
    \set subdivideBeams = ##f
    \addStaccato { fs'16 fs fs fs fs fs } |
    g!16( fs e d cs b |
    
    \barNumberCheck 73
    as4) as8-. |
    b4 b8-. |
    cs16( d e cs fs e |
    d16 fs e d cs b |
    as16) g'( fs e d cs |
    d16 cs b a! g fs |
    g16) fs'( e d cs b |
    cs16 b a g fs e |
    
    \barNumberCheck 81
    fs16) e'( d cs b a |
    b16 a g fs e d |
    \addStaccato { cs8) e a } |
    fs8-. d'-. fs->(~ |
    fs8 e) g,-. |
    fs8-. d'-. fs->(~ |
    fs8 e) g,-. |
    fs8-. a-. c->(~ |
    
    \barNumberCheck 89
    c8 b) fs-. |
    g8-. e'-. g->(~ |
    g8 fs) a,-. |
    g8-. e'-. g->(~ |
    g8 fs) a,-. |
    g8-. b-. d!->(~ |
    d8 cs) gs-. |
    a8-. fs'-. a->(~ |
    
    \barNumberCheck 97
    a8 gs) b,-. |
    a8-. fs'-. a->(~ |
    a8 gs) b,-. |
    \addStaccato { as8 cs fs } |
    d8-. b'-. d->(~ |
    d8 cs) e,-. |
    d8-. b'-. d->(~ |
    d8 cs) e,-. |
    
    \barNumberCheck 105
    \addStaccato { d8 fs b } |
    g8( e) a!-. |
    fs8( d) g-. |
    e8( cs) fs-. |
    d8( g) e-. |
    cs8( fs) d-. |
    b8( e) cs-. |
    as8( cs) cs,-. |
    
    \barNumberCheck 113
    d8( b') es,?-. |
    fs8( cs') cs,-. |
    d8( b') es,?-. |
    \voiceOne fs8 <as cs>-. <b d>-. |
    \oneVoice \tupletOn \tuplet 3/2 { cs16( d e } d[ b cs as] |
    \addStaccato { d8) cs b } |
    as8( cs) cs,-. |
    d8( b') es,?-. |
    
    \barNumberCheck 121
    fs8( cs') cs,-. |
    d8( b') es,?-. |
    \voiceOne fs8 <as cs>-. <b d>-. |
    \oneVoice \tupletOn \tuplet 3/2 { cs16( d e } d[ b cs as] |
    b8) <b b'>4->~ |
    \voiceOne b'8 \acciaccatura { \once \slurDown a } g( fs) |
    \oneVoice \acciaccatura { e8 } <b d>8( cs) <b b'>->~ |
    \voiceOne b'8 \acciaccatura { \once \slurDown a } g( fs) |
    
    \barNumberCheck 129
    \oneVoice \acciaccatura { e8 } <b d>8( cs) <b d>-. |
    \voiceOne \tupletOff \tuplet 3/2 { e16( d cs } d8-.)[ cs-.] |
    \oneVoice b8-. <b b'>4->~ |
    \voiceOne b'8 \acciaccatura { \once \slurDown a } g( fs) |
    \oneVoice \acciaccatura { e8 } <b d>8( cs) <b b'>->~ |
    \voiceOne b'8 \acciaccatura { \once \slurDown a } g( fs) |
    \oneVoice \acciaccatura { e8 } <b d>8( cs) <b d>-. |
    \voiceOne \tupletOff \tuplet 3/2 { e16( d cs } d8-.)[ cs-.] |
    
    \barNumberCheck 137
    \oneVoice b16( b' fs d b fs' |
    g16) g( fs e d cs) |
    r16 b( fs d b fs' |
    g16) g( fs e d cs |
    b8) \osp #'(0 . -1) d( fs~ |
    fs16 d fs b d fs |
    b4.) |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s2*40 |
    
    \barNumberCheck 41
    s2*6 |
    \voiceFour d''4 cs |
    d4 cs |
    
    \barNumberCheck 49
    es4 fs |
    es4 fs |
    s2*2 |
    d4 cs |
    d4 cs |
    es4 fs |
    es4 fs |
    
    \barNumberCheck 57
    s2*8 |
    
    \barNumberCheck 65
    s2*6 |
  }
  \repeat volta 2 {
    \time 3/8
    s4.*2 |
    
    \barNumberCheck 73
    s4.*40 |
    
    \barNumberCheck 113
    s4.*3 |
    fs,4. |
    s4.*4 |
    
    \barNumberCheck 121
    s4.*2 |
    fs4. |
    s4. |
    s8 \hideNoteHead b4~ |
    b4. |
    s4 \hideNoteHead b8~ |
    b4. |
    
    \barNumberCheck 129
    s4. |
    b4 as8-. |
    s8 \hideNoteHead b4~ |
    b4. |
    s4 \hideNoteHead b8~ |
    b4. |
    s4. |
    b4 as8-. |
    
    \barNumberCheck 137
    s4.*7 |
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
    s2*64 |
    
    \barNumberCheck 65
    s2*6 |
  }
  \repeat volta 2 {
    \time 3/8
    s4.*2 |
    
    \barNumberCheck 73
    s4.*5 |
    \voiceThree b4 r8 |
    s4. |
    a4 r8 |
    
    \barNumberCheck 81
    s4.*32 |
    
    \barNumberCheck 113
    s4.*4 |
    s8 <b d>( cs) |
    s4.*3 |
    
    \barNumberCheck 121
    s4.*3 |
    s8 <b d>( cs) |
    b4.~ |
    b4. |
    b4. |
    b4. |
    
    \barNumberCheck 129
    b4.~ |
    b8\noBeam <b d>-. <cs e>-. |
    b4.~ |
    b4. |
    b4. |
    b4. |
    b4.~ |
    b8\noBeam <b d>-. <cs e>-. |
    
    \barNumberCheck 137
    b4. |
    s4.*6 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R2*2 |
    r8 \clef treble fs'( d b) |
    \grace { fs'16( } fs8.)-\slurShapeA _(\trill e32 fs  g8 fs |
    as4 b) |
    as4( b16) b( a g |
    fs16) fs_( e d \clef bass cs) cs( b as |
    b16) b( a! g fs4) |
    
    \barNumberCheck 9
    fs,4_( fs' |
    fs,4 fs' |
    fs,4) r |
    r8 \clef treble cs'''_( as fs |
    b4 a! |
    g16) g( fs e  g) g( fs e |
    a4)( g |
    fs16) fs( e d  fs) fs( e d |
    
    \barNumberCheck 17
    g4 e |
    fs4 cs |
    d16) d( e fs  e) e( fs g |
    fs16) fs( g a  g) g( a b |
    a4) r |
    r16 a( e fs \clef bass cs d a b |
    cs4.) a8-. |
    <d, d'>4 r8 <fs d'>-. |
    
    \barNumberCheck 25
    <g d'>4. <g e'>8-. |
    <fs e'>4. <fs d'>8-. |
    <e d'>4. <e cs'>8-. |
    \set subdivideBeams = ##t
    <d d'>8-. d'-. \tupletOff \tuplet 3/2 8 { fs16( e d  cs b a } |
    g8 fs') \tuplet 3/2 8 { e16( d cs  b a g } |
    fs8 e') \tuplet 3/2 8 { d16( cs b  a g fs } |
    e8 d') \tuplet 3/2 8 { cs16( b a  g fs e } |
    d8) r fs-- r |
    
    \barNumberCheck 33
    g8-- r a-- r |
    b8-- r cs-. a-. |
    d8( g, a-.)[ a,-.] |
    \addTenuto {
      d8 r fs r |
      g8 r a r |
    }
    b8-- r cs8-. a-. |
    d8( g, a-.)[ a,-.] |
    <d, d'>4 \clef treble <d'' c'>8 q |
    
    \barNumberCheck 41
    q8 q q q |
    <e b'>8 q q <d b'> |
    q8 q q q |
    q8 q q q |
    \clef bass \osp #'(0 . 2.5) cs4( cs,) |
    <fs, fs'>4 a'8-. fs'-. |
    \revertBeaming
    b,8( gs') a,( fs') |
    b,8( gs') a,( fs') |
    
    \barNumberCheck 49
    gs,8( es') fs,( fs') |
    gs,8( es') fs,( fs') |
    b,8( d) cs( cs,) |
    <fs, fs'>4 a'8-. fs'-. |
    b,8( gs') a,( fs') |
    b,8( gs') a,( fs') |
    gs,8( es') fs,( fs') |
    gs,8( es') fs,( fs') |
    
    \barNumberCheck 57
    b,8( d) cs( cs,) |
    <fs, fs'>4 r8 a'-. |
    \beamEighths.24
    b8( a) gs-. e-. |
    a8( gs) fs-. d-. |
    gs8( fs) es-. cs-. |
    fs8-. b( cs-.)[ cs,-.] |
    d'8( b cs) cs,-. |
    d'8( b cs) cs,-. |
    
    \barNumberCheck 65
    \tuplet 3/2 8 {
      fs16( gs a  b cs d  cs b a  gs fs es |
      fs16 gs a  b cs d  cs b a  gs fs es |
      fs16 gs a  b cs d  cs b a  gs fs es |
    }
    fs8) b( cs-.)[ cs,-.] |
    fs-. b( cs-.)[ cs,-.] |
    <fs, fs'>4 r |
  }
  \repeat volta 2 {
    \time 3/8
    R4.*2 |
    
    \barNumberCheck 73
    \set subdivideBeams = ##f
    \addStaccato { fs''16 fs fs fs fs fs } |
    g16( fs e d cs b |
    as8) fs-. as-. |
    b8( g) e-. |
    \addStaccato { fs8 gs as } |
    \voiceTwo b,8( cs) d-. |
    \oneVoice \addStaccato { e8 fs g } |
    \voiceTwo a,8( b) cs-. |
    
    \barNumberCheck 81
    \oneVoice \addStaccato {
      d8 e fs |
      g8 a b |
    }
    a,16-.( a' cs,-. a' a,-. a' |
    d,16-. a' fs-. a d,-. a' |
    a,16-. a' cs,-. a' a,-. a' |
    d,16-. a' fs-. a d,-. a' |
    a,16-. a' cs,-. a' a,-. a' |
    d,16-. a' fs-. a c,-.-> a' |
    
    \barNumberCheck 89
    b,16-.)( b' ds,-. b' b,-. b' |
    e,16-. b' g-. b e,-. b' |
    b,16-. b' ds,-. b' b,-. b' |
    e,16-. b' g-. b e,-. b' |
    b,16-. b' ds,-. b' b,-. b' |
    e,16-. b' g-. b d,!-.-> b' |
    cs,16-.)-\slurShapeF ( cs' es,-. cs' cs,-. cs' |
    fs,16-. cs' a-. cs fs,-. cs' |
    
    \barNumberCheck 97
    cs,16-. cs' es,-. cs' cs,-. cs' |
    fs,16-. cs' a-. cs fs,-. cs' |
    cs,16-. cs' es,-. cs' cs,-. cs') |
    fs,16-.( fs' as,-. fs' fs,-. fs' |
    b,16-. fs' d-. fs b,-. fs' |
    fs,16-. fs' as,-. fs' fs,-. fs' |
    b,16-. fs' d-. fs b,-. fs' |
    fs,16-. fs' as,-. fs' fs,-. fs' |
    
    \barNumberCheck 105
    b,16-. fs' d-. fs b,-. d) |
    e,16-.( e' cs e a,! cs) |
    d,16-.( d' b d g, b) |
    cs,16-.( cs' as cs fs, as) |
    b,16-.( b' g b e, g) |
    a,16-.( a' fs a d, fs) |
    \stemDown g,16-.( g' e g cs, e) |
    \stemUp fs,16-.( fs' as,-. fs' fs,-. fs' |
    
    \barNumberCheck 113
    b,16-. fs' d-. fs b,-. fs' |
    fs,16-. fs' as,-. fs' fs,-. fs' |
    b,16-. fs' d-. fs b,-. fs' |
    fs,16 fs' e,! e' d b') |
    \stemNeutral <e, b'>8-. \voiceTwo fs4 |
    \oneVoice \stemUp b,16( b' a, a' g, g' |
    fs,16-. fs' as,-. fs' fs,-. fs' |
    b,16-. fs' d-. fs b,-. fs' |
    
    \barNumberCheck 121
    fs,16-. fs' as,-. fs' fs,-. fs' |
    b,16-. fs' d-. fs b,-. fs' |
    fs,16 fs' e,! e' d b') |
    \stemNeutral <e, b'>8-. \voiceTwo fs4 |
    b,8( cs d) |
    e4 fs8-. |
    g4 d8-. |
    e4 fs8-. |
    
    \barNumberCheck 129
    g4 fs8-. |
    e8 fs4 |
    b,8( cs d) |
    e4 fs8-. |
    g4 d8-. |
    e4 fs8-. |
    g4 fs8-. |
    e8 fs4 |
    
    \barNumberCheck 137
    b,8( cs d |
    \oneVoice \addStaccato { e) fs fs, } |
    b8( cs d |
    \addStaccato { e) fs fs, } |
    b8. b16_( d fs |
    b8. fs16 d b |
    b,4.) |
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
  \override Hairpin.after-line-breaking = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s8 s4.\p |
    s4 s\< |
    s4\> s\! |
    s2*4 |
    s4-\tweak Y-offset #0.5 \< s\! |
    
    \barNumberCheck 9
    s2*4 |
    s4 s\< |
    s2\! |
    s4 s-\tweak Y-offset #-0.5 \< |
    s2\! |
    
    \barNumberCheck 17
    s2-\tweak Y-offset #-0.5 \cresc |
    s2 |
    s2\mf |
    s2*4 |
    s4 s-\tweak X-offset #-1 \p |
    
    \barNumberCheck 25
    s2*2 |
    s4 \tuplet 3/2 { s8.-\tweak Y-offset #-1.5 \< s8 s16\! } |
    s2\mf |
    s2*4 |
    
    \barNumberCheck 33
    s2*3 |
    s8 s4.\p |
    s2*3 |
    s4 s-\tweak Y-offset #1 \cresc |
    
    \barNumberCheck 41
    s2*2 |
    s2-\tweak Y-offset #0 \mf |
    s2*2 |
    s4 s-\tweak Y-offset #-1.5 \p |
    s2\cresc |
    s2 |
    
    \barNumberCheck 49
    s2*2 |
    s2\f |
    s4 s\p |
    s2-\tweak Y-offset #1 \cresc |
    s2*3 |
    
    \barNumberCheck 57
    s2-\tweak Y-offset #0.5 \f |
    s4 s\p |
    s2*2 |
    s4 s8-\tweak Y-offset #-1 \< \tuplet 3/2 { s8 16\! } |
    s2\mf |
    s2*2 |
    
    \barNumberCheck 65
    s2\p |
    s2*2 |
    s2\cresc |
    s2 |
    s2\f |
  }
  \repeat volta 2 {
    \time 3/8
    s4.\f |
    s4. |
    
    \barNumberCheck 73
    s4.*8 |
    
    \barNumberCheck 81
    s4.*2 |
    s8 s4\p |
    s4.*5 |
    
    \barNumberCheck 89
    s4. |
    s4.\cresc |
    s4.*6 |
    
    \barNumberCheck 97
    s4.*4 |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 105
    s4. |
    s4.\dim |
    s4.*5 |
    s4.-\tweak Y-offset #-1 \p |
    
    \barNumberCheck 113
    s4. |
    s4.-\tweak Y-offset #-1 \cresc |
    s4. |
    s4.-\tweak Y-offset #-2 \f |
    s4. |
    s4\> s16 s\! |
    s4.\p |
    s4. |
    
    \barNumberCheck 121
    s4.-\tweak extra-offset #'(0 . -1) \cresc |
    s4. |
    s4.-\tweak Y-offset #-2 \f |
    s4.*5 |
    
    \barNumberCheck 129
    s4.*2 |
    s8 s4\p |
    s4. |
    s8 s4-\tweak Y-offset #-1 \cresc |
    s4.*3 |
    
    \barNumberCheck 137
    s4.-\tweak Y-offset #0.5 \f |
    s4. |
    s4.\mf |
    s4. |
    s8 s4\p |
    s4.*2 |
  }
}

tempi = {
  % TODO \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    \tempo "Moderato" 4 = 92
    s2*64 |
    
    \barNumberCheck 65
    s2*4 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4 = 84 s \tempo 4 = 76 s \tempo 4 = 69 s |
    \tempo 4 = 63 s2 |
  }
  \repeat volta 2 {
    \set Score.tempoHideNote = ##f
    \tempo "Vivo" 4. = 92
    \time 3/8 |
    s4.*2 |
    
    \barNumberCheck 73
    s4.*64 |
    
    \barNumberCheck 137
    s4.*5 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 84 s8 \tempo 4. = 76 s \tempo 4. = 69 s |
          \tempo 4. = 63  s4. |
        }
        {
          \tempo 4. = 76 s8 \tempo 4. = 63 s \tempo 4. = 54 s |
          \tempo 4. = 30  s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2*6 \break
  s2*5 \break
  s2*5 \break
  s2*5 \break
  s2*5 \break
  s2*6 \pageBreak
  
  % page 2
  s2*6 \break
  s2*6 \break
  s2*6 \break
  s2*6 \break
  s2*5 \break
  s2*4 \pageBreak
  
  % page 3
  s2*5 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 4
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  \grace { s8 } s4.*9 \break
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
