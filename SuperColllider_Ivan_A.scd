//Ivan Alva Bustamante

// prendemos supercollider
s.boot;

// apagamos supercollider
s.quit;

// SynthDef
(
SynthDef(\misinte, {|frec=240, amp=0.5|
	var sen, env;
	sen=SinOsc.ar(frec, 0, amp);
	env=EnvGen.kr(Env.new([1,1,0],[0.1,0.1]),doneAction:2);
	Out.ar(0, sen*env)
}).add
);

// Llamar a un SynthDef
a=Synth(\misinte,[\frec, rrand(850,980)]);

// liberar un Synth
a.free;


(
~sec1=Pdef(\sec,
	Pbind(\instrument, \misinte,
		\dur, Pseq([0.125, 0.125, 0.125], inf),
		\frec, Pseq([340, 200, 450],inf),
		\amp, 1
	)
);
)

~sec1.play;
~sec1.stop;