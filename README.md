![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg) ![](../../workflows/fpga/badge.svg)

# Multimode Modem

<div align="justify">
  The multimode modem uses a clock signal to generate digitized signals over time, in sinusoidal format. From this digitized sinusoid, the modulation process is applied using different methods for each scheme, implemented through specific internal blocks to perform modulations ASK (switching the amplitude of the sine wave), FSK (switching the frequency of the sine wave through a digital signal modulator) and PSK (phase coding). In the demodulation stage, these three modulation schemes are analyzed to recover the original information, manifesting as '0' or '1' values that reflect the data signal already restored after the process.
  </div>

# Inputs and Outputs

The multimode modem has the following inputs and outputs:
     
| Type   | Function     | Size   |
|--------|--------------|--------|
| Input  | clock        | 1 bit  |
| Input  | reset        | 1 bit  |
| Input  | selection    | 2 bits |
| Output | modulation   | 7 bits |
| Output | demodulation | 1 bit  |

# How to Test

<div align="justify">
Apply a clock of 10 MHz. Next, apply a “1” logic level “reset” signal to synchronize the modem system and then make the “reset” signal a “0” logic level. Then select the type of modulation to be used, according to the sequence below. After selecting the modulation type, the modulated signal is expressed at the “mod_out” output and the demodulated signal at the “demod_out” output.
  </div>

 - Sel = "01" <= ASK modulation and demodulation

   ![01](https://github.com/user-attachments/assets/d0cb0f8c-a79d-4f97-8af0-c58135fc877b)

 - Sel = "10" <= FSK modulation and demodulation

   ![10](https://github.com/user-attachments/assets/7a91f7ac-0301-4489-8ce1-4a038119856c)

 - Sel = "11" <= PSK modulation and demodulation

   ![11](https://github.com/user-attachments/assets/3d95600f-e7eb-41d2-adda-66077c1725a6)

