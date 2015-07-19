cheatsheet do
  title 'x86-64 (GNU assembler)'
  docset_file_name 'x86_64_GNU_asm'
  keyword 'x86-64'

  category do
    id 'Data Movement'

    entry do
      command 'movq Src, Dest'
      name 'Dest = Src'
    end
    entry do
      command 'movsbq Src, Dest'
      name 'Dest (quad) = Src (byte), sign-extend'
    end
    entry do
      command 'movzbq Src, Dest'
      name 'Dest (quad) = Src (byte), zero-extend'
    end
  end

  category do
    id 'Conditional Move'

    entry do
      command 'cmove Src, Dest'
      command 'cmovz Src, Dest'
      name 'Equal / zero'
      notes '`ZF`'
    end
    entry do
      command 'cmovne Src, Dest'
      command 'cmovnz Src, Dest'
      name 'Not equal / not zero'
      notes '`~ZF`'
    end
    entry do
      command 'cmovs Src, Dest'
      name 'Negative'
      notes '`SF`'
    end
    entry do
      command 'cmovns Src, Dest'
      name 'Nonnegative'
      notes '`~SF`'
    end
    entry do
      command 'cmovg Src, Dest'
      command 'cmovnle Src, Dest'
      name 'Greater (signed >)'
      notes '`~(SF^OF)&~ZF`'
    end
    entry do
      command 'cmovge Src, Dest'
      command 'cmovnl Src, Dest'
      name 'Greater or equal (singed >=)'
      notes '`~(SF^OF)`'
    end
    entry do
      command 'cmovl Src, Dest'
      command 'cmovnge Src, Dest'
      name 'Less (singed <)'
      notes '`SF^OF`'
    end
    entry do
      command 'cmovle Src, Dest'
      command 'cmovng Src, Dest'
      name 'Less or equal (singed <=)'
      notes '`(SF^OF)|ZF`'
    end
    entry do
      command 'cmova Src, Dest'
      command 'cmovnbe Src, Dest'
      name 'Above (unisigned >)'
      notes '`~CF&~ZF`'
    end
    entry do
      command 'cmovae Src, Dest'
      command 'cmovnb Src, Dest'
      name 'Above or equal (unisgned >=)'
      notes '`~CF`'
    end
    entry do
      command 'cmovb Src, Dest'
      command 'cmovnae Src, Dest'
      name 'Below (unisgned <)'
      notes '`CF`'
    end
    entry do
      command 'cmovbe Src, Dest'
      command 'cmovna Src, Dest'
      name 'Below or equal (unisgned <=)'
      notes '`CF|ZF`'
    end
  end

  category do
    id 'Control Transfer'

    entry do
      command 'cmpq Src2, Src1'
      name 'Sets condition codes to Src1 - Src2'
    end
    entry do
      command 'testq Src2, Src1'
      name 'Sets condition codes to Src1 & Src2'
    end
    entry do
      command 'jmp label'
      name 'Jump to label'
    end
    entry do
      command 'jmp *operand'
      name 'Jump to specified location'
      notes 'Jump to adress resulting form `operand`'
    end
    entry do
      command 'je label'
      command 'jz label'
      name 'Jump equal'
      notes '`ZF`'
    end
    entry do
      command 'jne label'
      command 'jnz label'
      name 'Jump not equal'
      notes '`~ZF`'
    end
    entry do
      command 'js label'
      name 'Jump negative'
      notes '`SF`'
    end
    entry do
      command 'jns label'
      name 'Jump non-negative'
      notes '`~SF`'
    end
    entry do
      command 'jg label'
      command 'jnle label'
      name 'Jump greater (singed >)'
      notes '`~(SF^OF)&~ZF`'
    end
    entry do
      command 'jge label'
      command 'jnl label'
      name 'Jump greater or equal (singed >=)'
      notes '`~(SF^OF)`'
    end
    entry do
      command 'jl label'
      command 'jnge label'
      name 'Jump less (singed <)'
      notes '`SF^OF`'
    end
    entry do
      command 'jle label'
      command 'jng label'
      name 'Jump less or equal (signed <=)'
      notes '`(SF^OF)|ZF`'
    end
    entry do
      command 'ja label'
      command 'jnbe label'
      name 'Jump above (unsigned >)'
      notes '`~CF&~ZF`'
    end
    entry do
      command 'jae label'
      command 'jnb label'
      name 'Jump above or equal (unisgned >=)'
      notes '`~CF`'
    end
    entry do
      command 'jb label'
      command 'jnae label'
      name 'Jump below (unsigned <)'
      notes '`CF`'
    end
    entry do
      command 'jbe label'
      command 'jna label'
      name 'Jump below or equal (unsigned <=)'
      notes '`CF|ZF`'
    end
    entry do
      command 'pushq Src'
      name '`%rsp` = `%rsp` - 8, Mem[`%rsp`] = Src'
    end
    entry do
      command 'popq Dest'
      name 'Dest = Mem[`%rsp`], `%rsp` = `%rsp` + 8'
    end
    entry do
      command 'call label'
      name 'push address of next instruction, `jmp label`'
    end
    entry do
      command 'ret'
      name '`%rip` = Mem[`%rsp`], `%rsp` = `%rsp` + 8'
    end
  end

  category do
    id 'Arithmetic Operations'

    entry do
      command 'leaq Src, Dest'
      name 'Dest = address of Src'
    end
    entry do
      command 'incq Dest'
      name 'Dest = Dest + 1'
    end
    entry do
      command 'decq Dest'
      name 'Dest = Dest - 1'
    end
    entry do
      command 'addq Src, Dest'
      name 'Dest = Dest + Src'
    end
    entry do
      command 'subq Src, Dest'
      name 'Dest = Dest -Src'
    end
    entry do
      command 'imulq Src, Dest'
      name 'Dest = Dest * Src'
    end
    entry do
      command 'xorq Src, Dest'
      name 'Dest = Dest ^ Src'
    end
    entry do
      command 'orq Src, Dest'
      name 'Dest = Dest | Src'
    end
    entry do
      command 'andq Src, Dest'
      name 'Dest = Dest & Src'
    end
    entry do
      command 'negq Dest'
      name 'Dest = -Dest'
    end
    entry do
      command 'notq Dest'
      name 'Dest = ~Dest'
    end
    entry do
      command 'salq k, Dest'
      command 'shlq k, Dest'
      name 'Dest = Dest << k'
    end
    entry do
      command 'sarq k, Dest'
      name 'Dest = Dest >> k (arithmetic)'
    end
    entry do
      command 'shrq k, Dest'
      name 'Dest = Dest >> k (logical)'
    end
  end

  category do
    id 'Addressing Modes'

    entry do
      name 'Immediate'
      notes <<-'END'
        $val Val    
        val: contant integer value

        `movq $7, %rax`
      END
    end
    entry do
      name 'Normal'
      notes <<-'END'
        (R) Mem[Reg[R]]    
        R: register R specified memory address

        `movq (%rcx), %rax`
      END
    end
    entry do
      name 'Displacement'
      notes <<-'END'
        D(R) Mem[Reg[R] + D]    
        R: register specifies start of memory region    
        D: constant displacement D specifies offset

        `movq 8(%rdi), %rdx`
      END
    end
    entry do
      name 'Indexed'
      notes <<-'END'
        D(Rb, Ri, S) Mem[Reg[Rb] + S*Reg[Ri] + D]    
        D: constant displacement 1, 2 or 4 bytes     
        Rb: base register: any of 16 integer registers    
        Ri: index register: any, except %esp    
        S: scale: 1, 2, 4 or 8

        `movq 0x100(%rcx,%rax,4), %rdx`
      END
    end
  end

  category do
    id 'Instruction Suffixes'

    entry do
      command 'b'
      name 'byte'
    end
    entry do
      command 'w'
      name 'word (2 bytes)'
    end
    entry do
      command 'l'
      name 'long (4 bytes)'
    end
    entry do
      command 'q'
      name 'quad (8 bytes)'
    end
  end

  category do
    id 'Condition Codes'

    entry do
      command 'CF'
      name 'Carry Flag'
    end
    entry do
      command 'ZF'
      name 'Zero Flag'
    end
    entry do
      command 'SF'
      name 'Sign Flag'
    end
    entry do
      command 'OF'
      name 'Overflow Flag'
    end
  end

  category do
    id 'Integer Register'

    entry do
      command '%rax'
      name 'Return value'
    end
    entry do
      command '%rbx'
      name 'Callee saved'
    end
    entry do
      command '%rcx'
      name '4th argument'
    end
    entry do
      command '%rdx'
      name '3rd argument'
    end
    entry do
      command '%rsi'
      name '2nd argument'
    end
    entry do
      command '%rdi'
      name '1st argument'
    end
    entry do
      command '%rbp'
      name 'Callee saved (Base/Frame pointer)'
    end
    entry do
      command '%rsp'
      name 'Stack pointer'
    end
    entry do
      command '%r8'
      name '5th argument'
    end
    entry do
      command '%r9'
      name '6th argument'
    end
    entry do
      command '%r10'
      name 'Scratch register'
    end
    entry do
      command '%r11'
      name 'Scratch register'
    end
    entry do
      command '%r12'
      name 'Callee saved'
    end
    entry do
      command '%r13'
      name 'Callee saved'
    end
    entry do
      command '%r14'
      name 'Callee saved'
    end
    entry do
      command '%r15'
      name 'Callee saved'
    end
  end

  notes <<-'END'
    * Mainly based on the cheat sheet from the [Systems Group](http://systems.ethz.ch) at ETH Zürich. The original can be found [here](http://systems.ethz.ch/sites/default/files/file/COURSES/2014%20FALL%20COURSES/2014_Fall_SPCA/lectures/x86_64_asm_cheat_sheet.pdf) (PDF).
    * Exended with the cheat sheet from [Brown University](http://www.brown.edu/). The original can be found [here](https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf) (PDF).
    * Converted and extended by [David Keller](http://davidkeller.me).
  END
end
