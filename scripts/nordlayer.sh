#!/bin/bash
#
# Copyright (c) 2022 Kevin Marchant
#
# MIT License
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Support script for NordVPN
# This script is an example and may need to be adapted. See comments bellow.
#
# Requirements:
# * NordVPN
# * ip command
# * jq command
if [ -z $1 ]
then
	exit 1
fi

case $1 in

"start")
	# You might want to tweak your preferred country code or leave blank
    	nordlayer c <gateway>
;;

"stop")
	nordlayer d
;;

"ip")
	# You may need to change tun0 (NordLynx) for ppp0 (NordOpenVPN)
	# With NordLynx the address displayed is NOT the real external IP but rather the Net10 address of the gateway
	nordlayer s
;;
esac

