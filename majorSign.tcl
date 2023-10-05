#majorSign
#majorSign.tcl
##===================================================================
#	Copyright (c) 2023 Yuji SODE <yuji.sode@gmail.com>
#
#	This software is released under the MIT License.
##===================================================================
#The major sign estimator by three values.
#
#--- Approximations ---
# 0 -> epsilon,
# +0 -> +epsilon and -0 -> -epsilon
#
# epsilon := SGN*|epsilon|
# X = (x1, x2, x3)
# SGN := 2/3 of X < standard? -1: 1
#
##===================================================================
#
#it returns major sign
proc majorSign {x1 x2 x3} {
	# - $x1, $x2 and $x3: numerical values
	#
	set sgn [expr {int(8)}];
	#
	set sgn [expr {$x1<0?$sgn>>1:$sgn<<1}];
	set sgn [expr {$x2<0?$sgn>>1:$sgn<<1}];
	set sgn [expr {$x3<0?$sgn>>1:$sgn<<1}];
	#
	return [expr {$sgn<8?-1:1}];
};
#
##===================================================================
#*** License ***
#MIT License
#
#Copyright (c) 2023 Yuji Sode
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.
