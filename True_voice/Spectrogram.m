 [y,Fss] = audioread('Emmanuel.mp3');
 [y2,Fss2] = audioread('Emmanuel_1sec.mp3');
 s = spectrogram(y); %sot emmanuel el30 sania 3la b3d
 
 figure(1)
 spectrogram(y,'yaxis');
 figure(2)
 s2=spectrogram(y2);%sot emmanuel el sania wahda
 spectrogram(y2,'yaxis');
%%Eman
 [E,Fs] = audioread('Eman_20sec.mp3');
 SE = spectrogram(E);%spectrogram el 20 sec 3la b3d
 %%spectrogram el records el so8yra
 [E1,Fs1] = audioread('Eman1.mp3');
 SE1 = spectrogram(E1);
 [E2,Fs2] = audioread('Eman2.mp3');
 SE2 = spectrogram(E2);
 [E3,Fs3] = audioread('Eman3.mp3');
 SE3 = spectrogram(E3);
 [E4,Fs4] = audioread('Eman4.mp3');
 SE4 = spectrogram(E4);
  [e5,Fs5] = audioread('Eman5.mp3');
  E5=reshape(e5,[],1);% boso b2a, leh bareshape mn awl hena, 3lshan hwa 2D fa msh able, ele fato kano 1D, leh dol 2D
  %well 3lshan ele ba convert be mn mp4 le mp3 rag3hm kda, eshm3na awl 4,
  %later on afhmkm b2a
  SE5 = spectrogram(E5);
  [e6,Fs6] = audioread('Eman6.mp3');
  E6=reshape(e6,[],1);
  SE6 = spectrogram(E6);
 [e7,Fs7] = audioread('Eman7.mp3');
 E7=reshape(e7,[],1);
 SE7 = spectrogram(E7);
 [e8,Fs8] = audioread('Eman8.mp3');
  E8=reshape(e8,[],1);
 SE8 = spectrogram(E8);
 [e9,Fs9] = audioread('Eman9.mp3');
  E9=reshape(e9,[],1);
 SE9 = spectrogram(E9);
 [e10,Fs10] = audioread('Eman10.mp3');
  E10=reshape(e10,[],1);
 SE10 = spectrogram(E10);
 [e11,Fs11] = audioread('Eman11.mp3');
  E11=reshape(e11,[],1);
 SE11 = spectrogram(E11);
 [e12,Fs12] = audioread('Eman12.mp3');
   E12=reshape(e12,[],1);
 SE12 = spectrogram(E12);
 [e13,Fs13] = audioread('Eman13.mp3');
   E13=reshape(e13,[],1);
 SE13 = spectrogram(E13);
 [e14,Fs14] = audioread('Eman14.mp3');
  E14=reshape(e14,[],1);
 SE14 = spectrogram(E14);
 [e15,Fs15] = audioread('Eman15.mp3');
   E15=reshape(e15,[],1);
 SE15 = spectrogram(E15);
 [e16,Fs16] = audioread('Eman16.mp3');
   E16=reshape(e16,[],1);
 SE16 = spectrogram(E16);
 [e17,Fs17] = audioread('Eman17.mp3');
   E17=reshape(e17,[],1);
 SE17 = spectrogram(E17);
 [e18,Fs18] = audioread('Eman18.mp3');
 E18=reshape(e18,[],1);
SE18 = spectrogram(E18);
 [e19,Fs19] = audioread('Eman19.mp3');
  E19=reshape(e19,[],1);
SE19 = spectrogram(E19);
 [e20,Fs20] = audioread('Eman20.mp3');
  E20=reshape(e20,[],1);
SE20 = spectrogram(E20);
%%Template
[ET,Fs0] = audioread('Eman_1sec.mp3');
SE_T = spectrogram(ET);
%%Gamila
 [G1,Fg1] = audioread('gamila1.ogg');
 SG1 = spectrogram(G1);
 [G2,Fg2] = audioread('gamila2.ogg');
 SG2 = spectrogram(G2);
 [G3,Fg3] = audioread('gamila3.ogg');
 GE3 = spectrogram(G3);
 [G4,Fg4] = audioread('gamila4.ogg');
 SG4 = spectrogram(G4);
[G5,Fg5] = audioread('gamila5.ogg');
 SG5 = spectrogram(G5);
 [G6,Fg6] = audioread('gamila6.ogg');
 SG6 = spectrogram(G6);
 [G7,Fg7] = audioread('gamila7.ogg');
 SG7 = spectrogram(G7);
 [G8,Fg8] = audioread('gamila8.ogg');
 SG8 = spectrogram(G8);
 [G9,Fg9] = audioread('gamila9.ogg');
 SG9 = spectrogram(G9);
 [G10,Fg10] = audioread('gamila10.ogg');
 SG10 = spectrogram(G10);
 [G11,Fg11] = audioread('gamila11.ogg');
 SG11 = spectrogram(G11);
 [G12,Fg12] = audioread('gamila12.ogg');
 SG12 = spectrogram(G12);
 [G13,Fg13] = audioread('gamila13.ogg');
 SG13 = spectrogram(G13);
 [G14,Fg14] = audioread('gamila14.ogg');
 SG14 = spectrogram(G14);
 [G15,Fg15] = audioread('gamila15.ogg');
 SG15 = spectrogram(G15);
 [G16,Fg16] = audioread('gamila16.ogg');
 SG16 = spectrogram(G16);
 [G17,Fg17] = audioread('gamila17.ogg');
 SG17 = spectrogram(G17);
 [G18,Fg18] = audioread('gamila18.ogg');
 SG18 = spectrogram(G18);
 [G19,Fg19] = audioread('gamila19.ogg');
 SG19 = spectrogram(G19);
 [G20,Fg20] = audioread('gamila20.ogg');
 SG20 = spectrogram(G20);
 %el Record el kber 20 sec 3la b3d
 [G21,Fg21] = audioread('gamila20sec.ogg');
 SG21 = spectrogram(G21);
 %Template
 [Gt,Fgt] = audioread('gamila_template.ogg');
 SGT = spectrogram(Gt);