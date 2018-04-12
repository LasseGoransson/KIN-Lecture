(* ::Package:: *)

dhToTransformation[\[Alpha]_,a_,d_,\[Theta]_] := Module[{},
{
 {Cos[\[Theta]], -Sin[\[Theta]], 0, a},
 {Sin[\[Theta]]Cos[\[Alpha]], Cos[\[Theta]]Cos[\[Alpha]], -Sin[\[Alpha]], -Sin[\[Alpha]] d},
 {Sin[\[Theta]]Sin[\[Alpha]], Cos[\[Theta]]Sin[\[Alpha]], Cos[\[Alpha]], -Sin[\[Alpha]] d},
 {0, 0, 0, 1}
}
]


generateDHparameters[] := Module[{\[Alpha],a,d,\[Theta]},
\[Alpha] = (RandomReal[]*360)*Pi/180;
a = RandomReal[]*10;
d = RandomReal[]*10;
\[Theta] = (RandomReal[]*360)*Pi/180;

{
 {\[Alpha]},
 {a},
 {d},
 {\[Theta]}
}
]



generateRevolutePose[] := Module[{},
	RandomReal[{-90,90}]*Pi/180
]
generatePrismaticPose[] :=Module[{},
	(RandomReal[]-0.5)*10
]


(* ::PageBreak:: *)
(**)
