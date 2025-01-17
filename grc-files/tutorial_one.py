#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Tutorial One
# Author: Kuldeep Gill
# Generated: Wed Sep 12 17:47:01 2018
##################################################

from gnuradio import analog
from gnuradio import audio
from gnuradio import eng_notation
from gnuradio import gr
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from optparse import OptionParser


class tutorial_one(gr.top_block):

    def __init__(self):
        gr.top_block.__init__(self, "Tutorial One")

        ##################################################
        # Variables
        ##################################################
        self.samp_rate = samp_rate = 32000

        ##################################################
        # Blocks
        ##################################################
        self.audio_sink_0 = audio.sink(samp_rate, '', True)
        self.analog_sig_source_x_1 = analog.sig_source_f(samp_rate, analog.GR_SIN_WAVE, 440, 0.1, 0)
        self.analog_sig_source_x_0 = analog.sig_source_f(samp_rate, analog.GR_SIN_WAVE, 350, 0.1, 0)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_sig_source_x_0, 0), (self.audio_sink_0, 1))    
        self.connect((self.analog_sig_source_x_1, 0), (self.audio_sink_0, 0))    

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_sig_source_x_1.set_sampling_freq(self.samp_rate)
        self.analog_sig_source_x_0.set_sampling_freq(self.samp_rate)


def main(top_block_cls=tutorial_one, options=None):

    tb = top_block_cls()
    tb.start()
    try:
        raw_input('Press Enter to quit: ')
    except EOFError:
        pass
    tb.stop()
    tb.wait()



if __name__ == '__main__':
    main()
