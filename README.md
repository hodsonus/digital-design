# digital-design
Digital Design

This was the repository that was used for the duration of my enrollment in EEL4712C - Digital Design with Professor Greg Stitt at the University of Florida.

Labs were completed on a week-to-week basis, focusing on digital design and computer architecture in VHDL and synthesizization to FPGAs. Topics covered include the implementation of combinational and sequential logic in VHDL code, finite state machines, and real world applications (read: VGA interface design and MIPs processor design).

Smaller labs completed in the beginning of the semester involved the design of a variety of basic components including CLAs, ALUs, sequential logic components, basic FSMs, etc. These components and labs laid the groundwork for the later two labs to be completed.

The first major lab that we had was to implement a circuit to interface with our DE10-Lite Board's VGA output. We implemented clock dividers, a memory that contained an image to display, and logic dictating where the image would display.

The final lab was a mini project, where we had to implement a basic, 32 bit, MIPs processor that implemented a small subset of the MIPs instruction set. It was constructed using a finite state machine that controlled a datapath. The datapath included a program counter, memory, registers file, instruction register, ALU, etc. R-type (operations on 2 registers), I-type (operations on 1 register and an immediate value), jumps, branches, load, and store instructions were all implemented. All previously learned concepts were used here - and it really concretely established everything taught in my mind.
