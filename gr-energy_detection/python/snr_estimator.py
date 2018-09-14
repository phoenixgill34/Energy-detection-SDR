#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 
# Copyright 2018 <+YOU OR YOUR COMPANY+>.
# 
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

import numpy as np
from gnuradio import gr
import math
class snr_estimator(gr.decim_block):
    """
    Taking the average of N values and scaling by that factor and
    mapping it to dB scale...
    """
    def __init__(self,length):
        gr.decim_block.__init__(self,
            name="snr_estimator",
            in_sig=[np.float32],
            out_sig=[np.float32],decim=length)
        self.length = length


    def work(self, input_items, output_items):
        in0 = input_items[0]
        out = output_items[0]
        decimation = self.length
        # Take the moving average of 100 samples
        k=0
        for j in range(len(out)):
            out[j] = 20*math.log(sum(in0[k:k+999])/decimation,10)#mapping the values to dB scale
            k=k+decimation
        return (len(out))

