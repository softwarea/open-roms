;; #LAYOUT# STD *        #TAKE
;; #LAYOUT# *   KERNAL_0 #TAKE
;; #LAYOUT# *   *        #IGNORE


; $EA7B - scan the keyboard, then clear the CIA1 interrupt flag and return
; from interrupt. In the original ROM this is the tail of the standard IRQ
; routine, and raster interrupt handlers commonly exit through it, so that
; the keyboard keeps working while they run.

scan_keyboard_clear_cia1_interrupt_flag_and_return_from_interrupt:

	jsr JSCNKEY

	; FALLTHROUGH to $EA7E
