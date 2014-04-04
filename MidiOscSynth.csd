<CsoundSynthesizer>

<CsInstruments>


sr = 44100
ksmps = 128
nchnls = 1
0dbfs = 1.0


instr 1
icsp cpsmidi

iamp   ampmidi .5

kenv	 madsr	0.5, 0, 1, 0.5

aosc    oscil kenv*.05, icsp, 1

out  aosc
endin

</CsInstruments>
<CsScore>
f1 0 512 -7 30000 256 30000 0 -30000  256 -30000 
f2 0 4096 10 1

f0 999
</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
