{Converts Hz to Nintendo DS SOUNDxTMR timer values
 by Leo the Leon/GTFrick}

program HzToNDSPeriodConverter;

const
	NDSFreq=-16756991;
	{this is assuming a 33.513982MHz bus clock, as used in
	 the GBATEK document. ALL DS UNITS VARY IN CLOCK, so a
	 fully accurate converter is not possible!}
var
	HzFreq:UInt32;
begin
	writeln('Enter frequency in hz: ');
	readln (HzFreq);
	writeln('Calculated Nintendo DS period: ', NDSFreq div HzFreq);
end.
