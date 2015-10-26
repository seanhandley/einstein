#!/usr/bin/env ruby

# Sean Handley, 2015
# seanhandley.com
#
# This is the super-golfed version of the fast implementation.
# 546 bytes without comments.
def q(a);a.permutation;end;def n(a,b,c,d);i(a,b,c,d,1)||i(c,d,a,b,1);end;def i(a,b,c,d,o=0);(0..4).any?{|i|a[i]==b&&c[i+o]==d};end;q([0,1,2,3,4]).map{|c|i(c,4,c,0,1)||next;q([5,6,7,8,9]).map{|n|i(n,7,c,3)||next;n[0]==8||next;n(n,8,c,2)||next;q([10,11,12,13,14]).map{|a|i(n,6,a,14)||next;q([15,16,17,18,19]).map{|d|d[2]==18||next;i(c,4,d,19)||next;i(n,9,d,17)||next;q([20,21,22,23,24]).map{|s|n(a,12,s,24)||next;i(s,21,a,10)||next;n(s,20,d,16)||next;n(s,20,a,11)||next;i(n,5,s,22)||next;i(c,1,s,24)||next;i(s,23,d,15)||next;p [c,n,a,d,s];exit}}}}}