LDmicro0.2
MICRO=Atmel AVR ATmega328 28-PDIP
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0xB7A80C3C00000000
CRYSTAL=16000000 Hz
BAUD=9600 Hz, RATE=1000000 Hz, SPEED=100000 Hz
COMPILED=C:\Users\Usuario\Documents\Proyectos_Ladder\Jhony.hex
COMPILER=IHEX

PULL-UP LIST
    PB: 0xFFFFFFFF 
    PC: 0xFFFFFFFF 
    PD: 0xFFFFFFFF 
END

VAR LIST
    1 bytes T1
    1 bytes T2
    1 bytes T3
    1 bytes T4
    1 bytes T5
    1 bytes T6
    2 bytes Tnew 	Now no se usa!
    2 bytes dest 	Now no se usa!
    2 bytes recibir 	Now no se usa!
    2 bytes src 	Now no se usa!
END

IO LIST
    Xpulsador at 5 0 0
    YAlarma at 15 0 0
    YMemmoria_baja at 12 0 0
    YMemoria_arriba at 13 0 0
    YON_OFF at 16 0 0
    YTiempo at 14 0 0
END

PROGRAM
RUNG 1
  CONTACTS Xpulsador 0 0
  COIL R1 0 1 0 0
END
RUNG 2
  CONTACTS R1 0 0
  TON T1 1000000 0
  PARALLEL
    COIL R2 0 1 0 0
    COIL R1 0 0 1 0
  END
END
RUNG 3
  CONTACTS R2 0 0
  CONTACTS Xpulsador 0 0
  PARALLEL
    COIL R3 0 1 0 0
    COIL R2 0 0 1 0
  END
END
RUNG 4
  CONTACTS R3 0 0
  TON T2 1000000 0
  PARALLEL
    COIL R4 0 1 0 0
    COIL R3 0 0 1 0
  END
END
RUNG 5
  CONTACTS R4 0 0
  TON T3 1000000 0
  PARALLEL
    COIL R5 0 1 0 0
    COIL R4 0 0 1 0
  END
END
RUNG 6
  CONTACTS R5 0 0
  CONTACTS Xpulsador 0 0
  PARALLEL
    COIL R6 0 1 0 0
    COIL R5 0 0 1 0
  END
END
RUNG 7
  CONTACTS R6 0 0
  TON T4 1000000 0
  PARALLEL
    COIL R7 0 1 0 0
    COIL R6 0 0 1 0
  END
END
RUNG 8
  CONTACTS R7 0 0
  TON T5 1000000 0
  PARALLEL
    COIL R8 0 1 0 0
    COIL R7 0 0 1 0
  END
END
RUNG 9
  CONTACTS R8 0 0
  TON T6 1000000 0
  COIL R8 0 0 1 0
END
RUNG 10
  COMMENT Activaci\xF3n de salidas\r\n
END
RUNG 11
  CONTACTS R8 0 0
  COIL YON_OFF 0 0 0 0
END
RUNG 12
  PARALLEL
    CONTACTS R1 0 0
    CONTACTS R3 0 0
    CONTACTS R6 0 0
  END
  COIL YAlarma 0 0 0 0
END
RUNG 13
  PARALLEL
    CONTACTS R2 0 0
    CONTACTS R4 0 0
    CONTACTS R5 0 0
  END
  COIL YTiempo 0 0 0 0
END
RUNG 14
  CONTACTS R3 0 0
  COIL YMemoria_arriba 0 0 0 0
END
RUNG 15
  CONTACTS R7 0 0
  COIL YMemmoria_baja 0 0 0 0
END
