#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Spherical  5 - design*)


(* ::Text:: *)
(*Length  of  an edge within a unit sphere is  l = 2 Sqrt[2/(5+Sqrt[5])]*)


(* ::Input:: *)
(*Graphics3D[{{Opacity[.6],Sphere[{0,0,0},1]},Icosahedron[{0,0,0},2 Sqrt[2/(5+Sqrt[5])]]},Boxed->False]*)


(* ::Text:: *)
(*Here  are the vertices:*)


(* ::Input:: *)
(*vertices={*)
(*{0,1,(1+Sqrt[5])/2}/Sqrt[1/2 (5+Sqrt[5])],{0,-1,(1+Sqrt[5])/2}/Sqrt[1/2 (5+Sqrt[5])],{0,1,-(1+Sqrt[5])/2}/Sqrt[1/2 (5+Sqrt[5])],{0,-1,-(1+Sqrt[5])/2}/Sqrt[1/2 (5+Sqrt[5])],*)
(*{1,(1+Sqrt[5])/2,0}/Sqrt[1/2 (5+Sqrt[5])],{-1,(1+Sqrt[5])/2,0}/Sqrt[1/2 (5+Sqrt[5])],{1,-(1+Sqrt[5])/2,0}/Sqrt[1/2 (5+Sqrt[5])],{-1,-(1+Sqrt[5])/2,0}/Sqrt[1/2 (5+Sqrt[5])],*)
(*{(1+Sqrt[5])/2,0,1}/Sqrt[1/2 (5+Sqrt[5])],{-(1+Sqrt[5])/2,0,1}/Sqrt[1/2 (5+Sqrt[5])],{(1+Sqrt[5])/2,0,-1}/Sqrt[1/2 (5+Sqrt[5])],{-(1+Sqrt[5])/2,0,-1}/Sqrt[1/2 (5+Sqrt[5])]};*)


(* ::Text:: *)
(*Let' s  make  an  arbitrary  function  of  order < 5*)


(* ::Input:: *)
(*f[x_,y_,z_]:=1/Sqrt[3] x y+Sqrt[5] y^2+11 x y z +Sqrt[3] x^4*)


(* ::Input:: *)
(*FullSimplify[Integrate[f[Sin[\[Theta]]Cos[\[Phi]],Sin[\[Theta]]Sin[\[Phi]],Cos[\[Theta]]]Sin[\[Theta]],{\[Theta],0,\[Pi]},{\[Phi],0,2 \[Pi]}]/(4 \[Pi])]*)


(* ::Input:: *)
(*answer=0;*)
(*Do[*)
(*answer += f[vertices[[i,1]],vertices[[i,2]],vertices[[i,3]]],*)
(*{i,1,Length[vertices]}];*)
(*answer /= Length[vertices];*)
(*Print[FullSimplify@answer]*)


(* ::Input:: *)
(*vertices[[1,2]]*)


(* ::Input:: *)
(*TeXForm[Sqrt[3]/5+Sqrt[5]/3]*)
