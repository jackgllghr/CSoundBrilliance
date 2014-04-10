<CsoundSynthesizer>

<CsInstruments>


sr = 44100
ksmps = 1024
nchnls = 1
0dbfs = 1.0

;midi channel 1,       value:50, init value:.5       value:49, init value:.5
ctrlinit  1, 50, .5, 49, .5, 51, .5, 52, .5 

initc7 1, 7, .2
initc7 2, 7, .2
initc7 3, 7, .2
initc7 4, 7, .2
instr 1

iattack   ctrl7 1, 7, 0, 1
idecay    ctrl7 2, 7, 0, 1
isustain  ctrl7 3, 7, 0, 1
irelease  ctrl7 4, 7, 0, 1

;channel 50 range 0-1
kcpsPWM ctrl7 1,50,0,1 

;channel 49 range 0-1
kcpsAMP ctrl7 1,49,0,1 

;channel 51 range 0-1
kcpsOtherParam1 ctrl7 1,51,0,1 

;channel 52 range 0-1
kcpsOtherParam2  ctrl7 1,52,0,1 

;midi notes not in use yet
icsp cpsmidi

;envelope
kenv	 madsr iattack, idecay	,isustain,irelease

;frequency from score
kfreq = cpspch(p4)

;oscillator
a1     vco2 kenv*kamp, icsp , 2, kcpsPWM

	out a1
endin

</CsInstruments>
<CsScore>

;r 10
;
;t 0 120
;
;i 1 0 1 6.00
;i 1 + 1 6.07
;i 1 + 1 7.00
;s

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
