!converts Amiga AUDOPER timer values to Nintendo DS SOUNDxTMR values
!not even going to bother with command line arguments, sorry
!by Leo the Leon/GTFrick

program Amiga2NDSPeriod
implicit none

real::NTSCFreq, PALFreq, AmigaPeriod

!disgusting but it gives okay results
NTSCFreq = -4.68131871509 ! -(33513982Hz/2)/3579545
PALFreq = -4.72441135134 ! -(33513982Hz/2)/3546895

print *, 'Enter Amiga period: '
read *, AmigaPeriod
print *, 'Calculated Nintendo DS period (assuming NTSC Amiga): ', int(NTSCFreq*AmigaPeriod)
print *, 'Calculated Nintendo DS period (assuming PAL Amiga): ', int(PALFreq*AmigaPeriod)

end program Amiga2NDSPeriod
