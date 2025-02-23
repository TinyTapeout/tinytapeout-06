## How it works

SPELL is a minimal, stack-based programming language created for [The Skull CTF](https://skullctf.com).

The language is defined by the following [cryptic piece of Arduino code](https://skullctf.com/spell):

```c
void spell() {

                  uint8_t*a,pc=16,sp=0,
               s[32]={0},op;while(!0){op=
            EEPROM.read(pc);switch(+op){case
          ',':delay(s[sp-1]);sp--;break;case'>':
         s[sp-1]>>=1|1;break;case'<':s[sp-1]<<=1;
        break;case'=':pc=s[sp-1]-1;sp--;break;case
       '@':if(s[sp-2]){s[sp-2]--;pc=s[sp-1]-1;sp+=
      1;}sp-=2;break;case'&':s[sp-2]&=s[sp-1];sp-=1;
      break;case'|':s[sp-2]|=s[sp-1];sp-=1;break;case
    '^':s[sp-2]^=s[sp-1];sp--;break;case'+':s[sp-2]+=
   s[sp-1];sp=sp-1;break;case'-':s[sp-2]-=s[sp-1];sp--;
   break;case'2':s[sp]=s[sp-1];sp=sp+1;break;case'?':s[
 sp-1]=EEPROM.         read(s[sp-1]|0        );break;case
  "!!!"[0]:             666,EEPROM              .write(s
   [sp-1]                ,s[sp-2]                );sp=+
    sp-02;               ;break;                 1;case
    "Arr"[               1]:  s[+               sp-1]=
    *(char*)            (s[+   sp-1           ]);break
      ;case'w':*   (char*)(     s[+sp-1])  =s[sp-+2];
        sp-=2;break;case+       'x':s[sp] =s[sp-1
           ];s[sp-1]=s[sp   +    -2];s[sp-2]=s[
            0|sp];break;    ;;    case"zzz"[0
             ]:sleep();"   Arrr  ";break;case
             255  :return;;  default:s  [sp]
              =+   op;sp+=    1,1   ;}pc=
               +    pc  +      1;      %>

}
```

This design is an hardware implementation of SPELL with the following features:

- 32 bytes of program memory (volatile, simulates EEPROM)
- 32 bytes of stack memory
- 8 bytes of internal RAM
- 8 I/O pins (uio)

Initially, all the program memory is filled with `0xFF`, and the stack and data memory are filled with `0x00`. The program counter and the stack pointer are both set to `0x00`.

To load a program or inspect the internal state, the design provides access to the following registers via a simple serial interface:

| Address | Register name | Description                                        |
|---------|---------------|----------------------------------------------------|
| 0x00    | PC            | Program counter                                    |
| 0x01    | SP            | Stack pointer                                      |
| 0x02    | EXEC          | Execute-in-place (write-only)                      |
| 0x03    | STACK         | Stack access (read the top value, or push a value) |

The serial interface is implemented using a shift register, which is controlled by the following signals:

| Pin         | Type   | Description                                                       |
|-------------|--------|-------------------------------------------------------------------|
| `reg_sel`   | input  | Select the register to read/write                                 |
| `load`      | input  | Load the selected register with the value from the shift register |
| `dump`      | input  | Dump the selected register value to the shift register            |
| `shift_in`  | input  | Serial data input                                                 |
| `shift_out` | output | Serial data output                                                |

When `load` is high, the value from the shift register is loaded into the selected register. When `dump` is high, the value of the selected register is dumped into the shift register, and can be read after two clock cycles by reading `shift_out` (MSB first).

For example, if you want to read the value of the program counter, you would:

1. Set `reg_sel` to 0x00 and set `dump` to 1
3. Wait for two clock cycles for the first bit (MSB) to appear on `shift_out`.
4. Read the remaining bits from `shift_out` on each clock cycle.

To write a value to the program counter, you would:

1. Write the value to the shift register, one bit at a time, starting with the **MSB**.
2. Set `reg_sel` to 0x00 and set `load` to 1.
3. Wait for a single clock cycle for the value to be loaded.

Writing an opcode to the `EXEC` register will execute the opcode in place, without modifying the program counter (unless the opcode is a jump instruction).

The `STACK` register is used to push a value onto the stack or read the top value from the stack (for debugging purposes).

### Data memory and I/O registers

The data memory space is divided into two regions:

| Address range | Description                                |
|---------------|--------------------------------------------|
| 0x00 - 0x07   | General-purpose data storage (data memory) |
| 0x20 - 0x5F   | I/O and control registers                  |

Other addresses are unmapped.

The following registers are available in the data memory space:

| Address | Name  | Description                                                              |
|---------|-------|--------------------------------------------------------------------------|
| 0x36    | PINB  | Read the value of the `portb` pins, or toggle the output when written to |
| 0x37    | DDRB  | Set the direction of the `portb` pins (0 = input, 1 = output)            |
| 0x38    | PORTB | Write to the `portb` pins                                                |

For example, to toggle the value of the `portb[2]` (`uio[2]`) pin, you would write `0x04` to the `PINB` register.

## How to test

To test SPELL, you need to load a program into the program memory and execute it. You can load the program by repeatedly executing the following steps for each byte of the program:

1. Write the byte to the top of the stack (using the `STACK` register)
2. Write the address of the byte in the program memory to top of the stack
3. Write the opcode `!` to the `EXEC` register

After loading the program, you can execute it by writing the address of the first byte in the program memory to the `PC` register, and then pulsing the `run` signal.

### Test program

The following program which will rapidly blink an LED connected to the `uio[0]` pin. The program bytes should be loaded into the program memory starting at address 0:

```python
[1, 55, 119, 1, 54, 119, 250, 44, 3, 61]
```

For a more complex test program, see the [TT06 SPELL bringup script](https://github.com/urish/tt06-spell/blob/main/bringup/spell-spell.py).

## External hardware

None
