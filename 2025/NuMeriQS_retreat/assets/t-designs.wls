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
(*Let' s  make  a  random  polynomial  of  order <= t*)


(* ::Input:: *)
(*t=5; (* maximum order*)*)
(*tx=t;ty=t;tz=t; (* just initialize the powers for each variable *)*)
(*While[tx+ty+tz>t,(* this loop will find powers for each variable such that tx+ty+tz <= t *)*)
(*tx=RandomInteger[{0,t}];*)
(*ty=RandomInteger[{0,t}];*)
(*tz=RandomInteger[{0,t}];*)
(*];*)
(*Print["{tx,ty,tz}=",{tx,ty,tz}];*)
(*(* here is the random polynomial *)*)
(*f[x_,y_,z_]=(Expand[ResourceFunction["RandomPolynomial"][x,tx]ResourceFunction["RandomPolynomial"][y,ty]ResourceFunction["RandomPolynomial"][z,tz]]);*)
(*f[x,y,z]*)


(* ::Input:: *)
(*(* Now integrate exactly over the sphere *)*)
(*FullSimplify[Integrate[f[Sin[\[Theta]]Cos[\[Phi]],Sin[\[Theta]]Sin[\[Phi]],Cos[\[Theta]]]Sin[\[Theta]],{\[Theta],0,\[Pi]},{\[Phi],0,2 \[Pi]}]/(4 \[Pi])]*)


(* ::Input:: *)
(*(* and here is the t-design sum *)*)
(*answer=0;*)
(*Do[*)
(*answer += f[vertices[[i,1]],vertices[[i,2]],vertices[[i,3]]],*)
(*{i,1,Length[vertices]}];*)
(*answer /= Length[vertices];*)
(*Print[FullSimplify@answer]*)
