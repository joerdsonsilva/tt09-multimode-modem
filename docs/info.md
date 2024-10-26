<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The multimode modem uses a clock signal to generate digitized signals over time, in sinusoidal format. From this digitized sinusoid, the modulation process is applied using different methods for each scheme, implemented through specific internal blocks to perform modulations ASK (switching the amplitude of the sine wave), FSK (switching the frequency of the sine wave through a digital signal modulator) and PSK (phase coding). In the demodulation stage, these three modulation schemes are analyzed to recover the original information, manifesting as '0' or '1' values that reflect the data signal already restored after the process.

## Inputs and Outputs

  The multimode modem has the following inputs and outputs:
     
| Type   | Function      | Size     |
|--------|---------------|----------|
| Input  | clock         | 1 bit    |
| Input  | reset         | 1 bit    |
| Input  | sel           | 2 bits   |
| Output | mod_out       | 7 bits   |
| Output | demod_out     | 1 bit    |

## How to test

Apply a clock of 5~10 MHz. Next, apply a “1” logic level “reset” signal to synchronize the modem system and then make the “reset” signal a “0” logic level. Then select the type of modulation to be used, according to the sequence below. After selecting the modulation type, the modulated signal is expressed at the “mod_out” output and the demodulated signal at the “demod_out” output.

- Sel = "01" <= ASK modulation and demodulation
- Sel = "10" <= FSK modulation and demodulation
- Sel = "11" <= PSK modulation and demodulation

## External hardware

Analog Discovery 2.
