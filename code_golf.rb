#!/usr/bin/env ruby

# Sean Handley, 2015
# seanhandley.com
#
# This is the golfed version of the fast version.
#
# See: http://codegolf.stackexchange.com/a/63515/47098

def q(a);a.permutation;end;def z(a,b,c,d);l(a,b,c,d)||l(c,d,a,b);end;def l(a,b,c,d);(0..4).any?{|i|a[i]==b&&c[i+1]==d};end;def i(a,b,c,d);(0..4).any?{|i|a[i]==b&&c[i]==d};end;def t(i);['White','Yellow','Blue','Red','Green','German','Swede','Brit','Norwegian','Dane','Birds','Cats','Horses','Fish','Dogs','Beer','Water','Tea','Milk','Coffee','Blends','PallMall','Prince','Bluemasters','Dunhill'][i];end;def y(s);l=13-s.length;'|'+' '*(l/2.0).floor+s+' '*(l/2.0).ceil+'|';end;def d(s);b=[' '+(0..4).map{'_'*13}.join(' '*4)];u='  ';b<<[1,2,3,4,5].map{|i|y(i.to_s)}.join(u);s.each{|i|b<<i.map{|j|y(t(j))}.join(u)};b<<(0..4).map{'-'*15}.join(u);b<<'';z=s[4].index(13);b<<"The #{t s[0][z]} in the #{t s[1][z]} house owns the fish!";b.join "\n";end;q([0,1,2,3,4]).each{|c|l(c,4,c,0)||next;q([5,6,7,8,9]).each{|n|i(n,7,c,3)||next;n[0]==8||next;z(n,8,c,2)||next;q([10,11,12,13,14]).each{|a|i(n,6,a,14)||next;q([15,16,17,18,19]).each{|d|d[2]==18||next;i(c,4,d,19)||next;i(n,9,d,17)||next;q([20,21,22,23,24]).each{|s|z(a,12,s,24)||next;i(s,21,a,10)||next;z(s,20,d,16)||next;z(s,20,a,11)||next;i(n,5,s,22)||next;i(c,1,s,24)||next;i(s,23,d,15)||next;puts d([n,c,d,s,a]);exit}}}}}