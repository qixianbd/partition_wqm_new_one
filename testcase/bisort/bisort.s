	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc07354_0.i /home/keyming/Prophet/testcase/bisort/bisort.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/bisort/bisort.snt /home/keyming/Prophet/testcase/bisort/bisort.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/bisort/bisort.temp1 /home/keyming/Prophet/testcase/bisort/bisort.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/bisort/bisort.temp2 /home/keyming/Prophet/testcase/bisort/bisort.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/bisort/bisort.temp3 /home/keyming/Prophet/testcase/bisort/bisort.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/bisort/bisort.temp4 /home/keyming/Prophet/testcase/bisort/bisort.snp
	# history:  transform_print /home/keyming/Prophet/testcase/bisort/bisort.snp /home/keyming/Prophet/testcase/bisort/bisort.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/bisort/bisort.tp /home/keyming/Prophet/testcase/bisort/bisort.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/bisort/bisort.iocal /home/keyming/Prophet/testcase/bisort/bisort.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/bisort/bisort.bore /home/keyming/Prophet/testcase/bisort/bisort.porky
	# history:  suifvm /home/keyming/Prophet/testcase/bisort/bisort.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/bisort/bisort.pf /home/keyming/Prophet/testcase/bisort/bisort.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/bisort/bisort.swig /home/keyming/Prophet/testcase/bisort/bisort.mgen
	# history:  raga /home/keyming/Prophet/testcase/bisort/bisort.mgen /home/keyming/Prophet/testcase/bisort/bisort.raga
	# history:  partition /home/keyming/Prophet/testcase/bisort/bisort.sche /home/keyming/Prophet/testcase/bisort/bisort.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/bisort/bisort.par /home/keyming/Prophet/testcase/bisort/bisort.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/bisort/bisort.mfin /home/keyming/Prophet/testcase/bisort/bisort.nop
	# history:  transform_main /home/keyming/Prophet/testcase/bisort/bisort.nop /home/keyming/Prophet/testcase/bisort/bisort.entry
	# history:  printmachine /home/keyming/Prophet/testcase/bisort/bisort.entry /home/keyming/Prophet/testcase/bisort/bisort.s
	.set	noreorder
	.sdata	
	.globl	flag
	.align	2
	.align	0	# disable automatic alignment
flag:
	.word	1
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"%d @ 0x%x\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"Bisort with %d size\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"%d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_3:
	.ascii	"**************************************\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_4:
	.ascii	"BEGINNING BITONIC SORT ALGORITHM HERE\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_5:
	.ascii	"Sorted Tree:\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_6:
	.ascii	"%d\012\000"
	.file	2 "/home/keyming/Prophet/testcase/bisort/bisort.c"
	.text	
	.align	2
	.align	2
	.globl	dealwithargs
	# .loc	2, 256
	.ent	dealwithargs 
dealwithargs:
	spawn	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 40, $31
 # ["header/trailer":]
	cqip	dealwithargs.headerspawn
 # ["header/trailer":]
dealwithargs.headerspawn:
 # ["header/trailer":]
	pslice_entry	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	pslice_exit	dealwithargs.headerspawn
	# .loc	2, 259
 # ["exec_times": 0]
	li	$t0,3
 # ["exec_times": 1]
	slt	$t1,$t0,$a0
 # ["exec_times": 1]
	bnez	$t1,dealwithargs.__done3
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 262
 # ["exec_times": 0]
	li	$t2,1
 # ["exec_times": 1]
	sw	$t2,flag
dealwithargs.__done3:
	# .loc	2, 265
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 1]
	slt	$t4,$t3,$a0
 # ["exec_times": 1]
	bnez	$t4,dealwithargs.__done4
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 268
 # ["exec_times": 0]
	li	$v0,512
 # ["exec_times": 1]
dealwithargs.__done4:
	# .loc	2, 270
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	dealwithargs 
	.text	
	.align	2
	.align	2
	.globl	RandTree
	# .loc	2, 276
	.ent	RandTree 
RandTree:
	spawn	RandTree.headerspawn
 # ["header/trailer":]
	la	$sp,-224($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	sw	$s2,16($sp)
 # ["header/trailer":]
	sw	$s3,20($sp)
 # ["header/trailer":]
	sw	$s4,24($sp)
 # ["header/trailer":]
	sw	$s5,28($sp)
 # ["header/trailer":]
	.mask	0x803f0000, -224
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 224, $31
 # ["header/trailer":]
	cqip	RandTree.headerspawn
 # ["header/trailer":]
RandTree.headerspawn:
 # ["header/trailer":]
	pslice_entry	RandTree.headerspawn
 # ["header/trailer":]
	la	$sp,-224($sp)
 # ["header/trailer":]
	pslice_exit	RandTree.headerspawn
	spawn	RandTree.spawntail0
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 280
 # ["exec_times": 0]
	li	$t7,1
 # ["exec_times": 1023]
	slt	$t8,$t7,$s1
 # ["exec_times": 1023]
	beqz	$t8,RandTree.L1
 # ["exec_times": 1023]
 # ["instr_profile": 1023 512]
	nop	
	# .loc	2, 281
 # ["exec_times": 0]
	la	$t0,random
 # ["exec_times": 511]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 511]
 # ["proc_name": "random"]
 # ["call_overhead": 24]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
	# .loc	2, 282
 # ["exec_times": 0]
	li	$t9,100
 # ["exec_times": 511]
	rem	$s3,$s0,$t9
 # ["exec_times": 511]
	# .loc	2, 283
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 511]
	li	$a0,12
 # ["exec_times": 511]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 511]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s2,$v0
 # ["exec_times": 511]
	# .loc	2, 284
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 511]
	addu	$a1,$s2,$a0
 # ["fields": "value"]
 # ["exec_times": 511]
	sw	$s3,0($a1)
 # ["exec_times": 511]
	# .loc	2, 285
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 511]
	addu	$a3,$s2,$a2
 # ["fields": "left"]
 # ["exec_times": 511]
	la	$v0,0($zero)
 # ["exec_times": 511]
	sw	$v0,0($a3)
 # ["exec_times": 511]
	# .loc	2, 286
 # ["exec_times": 0]
	li	$v1,8
 # ["exec_times": 511]
	addu	$t0,$s2,$v1
 # ["fields": "right"]
 # ["exec_times": 511]
	la	$t1,0($zero)
 # ["exec_times": 511]
	sw	$t1,0($t0)
 # ["exec_times": 511]
	# .loc	2, 287
 # ["exec_times": 0]
	la	$s3,208($sp)
 # ["fields": "value"]
 # ["exec_times": 511]
	la	$t0,RandTree
 # ["exec_times": 511]
	li	$t2,2
 # ["exec_times": 511]
	div	$a0,$s1,$t2
 # ["exec_times": 511]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 511]
 # ["proc_name": "RandTree"]
 # ["call_overhead": 96]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s3)
 # ["exec_times": 511]
	# .loc	2, 288
 # ["exec_times": 0]
	la	$s5,204($sp)
 # ["fields": "value"]
 # ["exec_times": 511]
	la	$s3,RandTree
 # ["exec_times": 511]
	li	$t3,2
 # ["exec_times": 511]
	div	$s4,$s1,$t3
 # ["exec_times": 511]
	la	$t0,skiprand
 # ["exec_times": 511]
	li	$t4,1
 # ["exec_times": 511]
	addu	$a1,$s1,$t4
 # ["exec_times": 511]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 511]
 # ["proc_name": "skiprand"]
 # ["call_overhead": 126]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$a0,$s4
	move	$a1,$v0
	move	$fp,$sp
	fst	$sp
	move	$t0,$s3
	jalr	$t0,$ra
 # ["exec_times": 511]
 # ["proc_name": "RandTree"]
 # ["call_overhead": 60587]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s5)
 # ["exec_times": 511]
	# .loc	2, 289
 # ["exec_times": 0]
	li	$t5,4
 # ["exec_times": 511]
	addu	$t7,$s2,$t5
 # ["fields": "left"]
 # ["exec_times": 511]
	la	$t8,208($sp)
 # ["fields": "value"]
 # ["exec_times": 511]
	lw	$t6,0($t8)
 # ["exec_times": 511]
	sw	$t6,0($t7)
 # ["exec_times": 511]
	# .loc	2, 290
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 511]
	addu	$t9,$s2,$t8
 # ["fields": "right"]
 # ["exec_times": 511]
	la	$a0,204($sp)
 # ["fields": "value"]
 # ["exec_times": 511]
	lw	$t5,0($a0)
 # ["exec_times": 511]
	sw	$t5,0($t9)
 # ["exec_times": 511]
	j	RandTree.__done2
 # ["exec_times": 511]
 # ["instr_profile": 511 511]
	nop	
RandTree.L1:
	# .loc	2, 292
 # ["exec_times": 0]
	la	$s2,0($zero)
 # ["exec_times": 512]
RandTree.__done2:
	# .loc	2, 293
 # ["exec_times": 0]
	move	$v0,$s2
	cqip	RandTree.spawntail0
RandTree.spawntail0:
	pslice_entry	RandTree.spawntail0
	pslice_exit	RandTree.spawntail0
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$s3,20($sp)
 # ["header/trailer":]
	lw	$s4,24($sp)
 # ["header/trailer":]
	lw	$s5,28($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1023]
 # ["instr_ret": t:g43]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	RandTree 
	.text	
	.align	2
	.align	2
	.globl	SwapValue
	# .loc	2, 67
	.ent	SwapValue 
SwapValue:
	spawn	SwapValue.headerspawn
 # ["header/trailer":]
	la	$sp,-56($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 56, $31
 # ["header/trailer":]
	cqip	SwapValue.headerspawn
 # ["header/trailer":]
SwapValue.headerspawn:
 # ["header/trailer":]
	pslice_entry	SwapValue.headerspawn
 # ["header/trailer":]
	la	$sp,-56($sp)
 # ["header/trailer":]
	pslice_exit	SwapValue.headerspawn
	# .loc	2, 70
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 0]
	addu	$a2,$a0,$a2
 # ["fields": "value"]
 # ["exec_times": 0]
	lw	$a3,0($a2)
 # ["exec_times": 0]
	# .loc	2, 71
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	addu	$v1,$a1,$v0
 # ["fields": "value"]
 # ["exec_times": 0]
	lw	$t0,0($v1)
 # ["exec_times": 0]
	# .loc	2, 72
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$a1,$t1
 # ["fields": "value"]
 # ["exec_times": 0]
	sw	$a3,0($t2)
 # ["exec_times": 0]
	# .loc	2, 73
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	addu	$t4,$a0,$t3
 # ["fields": "value"]
 # ["exec_times": 0]
	sw	$t0,0($t4)
 # ["exec_times": 0]
	# .loc	2, 74
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	SwapValue 
	.text	
	.align	2
	.align	2
	.globl	SwapValLeft
	# .loc	2, 82
	.ent	SwapValLeft 
SwapValLeft:
	spawn	SwapValLeft.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 64, $31
 # ["header/trailer":]
	cqip	SwapValLeft.headerspawn
 # ["header/trailer":]
SwapValLeft.headerspawn:
 # ["header/trailer":]
	pslice_entry	SwapValLeft.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	SwapValLeft.headerspawn
	lw	$v0,40($sp)
	lw	$t7,44($sp)
	# .loc	2, 83
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 775]
	addu	$t6,$a1,$t5
 # ["fields": "value"]
 # ["exec_times": 775]
	sw	$t7,0($t6)
 # ["exec_times": 775]
	# .loc	2, 85
 # ["exec_times": 0]
	li	$t8,4
 # ["exec_times": 775]
	addu	$t9,$a1,$t8
 # ["fields": "left"]
 # ["exec_times": 775]
	sw	$a2,0($t9)
 # ["exec_times": 775]
	# .loc	2, 86
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 775]
	addu	$a1,$a0,$a1
 # ["fields": "left"]
 # ["exec_times": 775]
	sw	$a3,0($a1)
 # ["exec_times": 775]
	# .loc	2, 90
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 775]
	addu	$a3,$a0,$a2
 # ["fields": "value"]
 # ["exec_times": 775]
	sw	$v0,0($a3)
 # ["exec_times": 775]
	# .loc	2, 91
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 775]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	SwapValLeft 
	.text	
	.align	2
	.align	2
	.globl	SwapValRight
	# .loc	2, 100
	.ent	SwapValRight 
SwapValRight:
	spawn	SwapValRight.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 64, $31
 # ["header/trailer":]
	cqip	SwapValRight.headerspawn
 # ["header/trailer":]
SwapValRight.headerspawn:
 # ["header/trailer":]
	pslice_entry	SwapValRight.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	SwapValRight.headerspawn
	lw	$t8,40($sp)
	lw	$t1,44($sp)
	# .loc	2, 101
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 2194]
	addu	$t0,$a1,$v1
 # ["fields": "value"]
 # ["exec_times": 2194]
	sw	$t1,0($t0)
 # ["exec_times": 2194]
	# .loc	2, 103
 # ["exec_times": 0]
	li	$t2,8
 # ["exec_times": 2194]
	addu	$t3,$a1,$t2
 # ["fields": "right"]
 # ["exec_times": 2194]
	sw	$a2,0($t3)
 # ["exec_times": 2194]
	# .loc	2, 104
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 2194]
	addu	$t5,$a0,$t4
 # ["fields": "right"]
 # ["exec_times": 2194]
	sw	$a3,0($t5)
 # ["exec_times": 2194]
	# .loc	2, 108
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 2194]
	addu	$t7,$a0,$t6
 # ["fields": "value"]
 # ["exec_times": 2194]
	sw	$t8,0($t7)
 # ["exec_times": 2194]
	# .loc	2, 110
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 2194]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	SwapValRight 
	.text	
	.align	2
	.align	2
	.globl	Bimerge
	# .loc	2, 116
	.ent	Bimerge 
Bimerge:
	spawn	Bimerge.headerspawn
 # ["header/trailer":]
	la	$sp,-352($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	sw	$s2,16($sp)
 # ["header/trailer":]
	sw	$s3,20($sp)
 # ["header/trailer":]
	sw	$s4,24($sp)
 # ["header/trailer":]
	sw	$s5,28($sp)
 # ["header/trailer":]
	sw	$s6,32($sp)
 # ["header/trailer":]
	sw	$s7,36($sp)
 # ["header/trailer":]
	.mask	0x80ff0000, -352
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 352, $31
 # ["header/trailer":]
	cqip	Bimerge.headerspawn
 # ["header/trailer":]
Bimerge.headerspawn:
 # ["header/trailer":]
	pslice_entry	Bimerge.headerspawn
 # ["header/trailer":]
	la	$sp,-352($sp)
 # ["header/trailer":]
	pslice_exit	Bimerge.headerspawn
	spawn	Bimerge.L14
 # ["cqip_pos": <L:Bimerge.L14,0>]
	move	$s3,$a0
	move	$s2,$a1
	move	$s1,$a2
	# .loc	2, 131
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 7682]
	addu	$v0,$s3,$a3
 # ["fields": "value"]
 # ["exec_times": 7682]
	lw	$v0,0($v0)
 # ["exec_times": 7682]
	# .loc	2, 133
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 7682]
	addu	$t0,$s3,$v1
 # ["fields": "left"]
 # ["exec_times": 7682]
	lw	$a0,0($t0)
 # ["exec_times": 7682]
	# .loc	2, 134
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 7682]
	addu	$t2,$s3,$t1
 # ["fields": "right"]
 # ["exec_times": 7682]
	lw	$a1,0($t2)
 # ["exec_times": 7682]
	# .loc	2, 135
 # ["exec_times": 0]
	slt	$t9,$s2,$v0
 # ["exec_times": 7682]
	xor	$s0,$t9,$s1
 # ["exec_times": 7682]
	# .loc	2, 136
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 7682]
	sne	$t4,$s0,$t3
 # ["exec_times": 7682]
	beqz	$t4,Bimerge.L1
 # ["exec_times": 7682]
 # ["instr_profile": 7682 3727]
	nop	
	# .loc	2, 137
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 3955]
	addu	$t6,$s3,$t5
 # ["fields": "value"]
 # ["exec_times": 3955]
	sw	$s2,0($t6)
 # ["exec_times": 3955]
	# .loc	2, 138
 # ["exec_times": 0]
	move	$s2,$v0
 # ["exec_times": 3955]
Bimerge.L1:
	# .loc	2, 141
 # ["exec_times": 0]
	la	$t7,0($zero)
 # ["exec_times": 7682]
	sne	$t8,$a0,$t7
 # ["exec_times": 7682]
	beqz	$t8,Bimerge.L2
 # ["exec_times": 7682]
 # ["instr_profile": 7682 4096]
	nop	
Bimerge.L5:
	spawn	Bimerge.L13
 # ["cqip_pos": <L:Bimerge.L13,0>]
	# .loc	2, 143
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 6168]
	addu	$a2,$a0,$t9
 # ["fields": "value"]
 # ["exec_times": 6168]
	lw	$v1,0($a2)
 # ["exec_times": 6168]
	# .loc	2, 145
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 6168]
	addu	$a3,$a0,$a2
 # ["fields": "left"]
 # ["exec_times": 6168]
	lw	$s5,0($a3)
 # ["exec_times": 6168]
	# .loc	2, 146
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 6168]
	addu	$t0,$a0,$v0
 # ["fields": "right"]
 # ["exec_times": 6168]
	lw	$s4,0($t0)
 # ["exec_times": 6168]
	# .loc	2, 148
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 6168]
	addu	$t1,$a1,$t0
 # ["fields": "value"]
 # ["exec_times": 6168]
	lw	$v0,0($t1)
 # ["exec_times": 6168]
	# .loc	2, 150
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 6168]
	addu	$t3,$a1,$t2
 # ["fields": "left"]
 # ["exec_times": 6168]
	lw	$s6,0($t3)
 # ["exec_times": 6168]
	# .loc	2, 151
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 6168]
	addu	$t5,$a1,$t4
 # ["fields": "right"]
 # ["exec_times": 6168]
	lw	$s7,0($t5)
 # ["exec_times": 6168]
	# .loc	2, 153
 # ["exec_times": 0]
	slt	$a2,$v0,$v1
 # ["exec_times": 6168]
	xor	$a2,$a2,$s1
 # ["exec_times": 6168]
	# .loc	2, 154
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 6168]
	sne	$t7,$s0,$t6
 # ["exec_times": 6168]
	beqz	$t7,Bimerge.L6
 # ["exec_times": 6168]
 # ["instr_profile": 6168 2876]
	nop	
	# .loc	2, 155
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 3292]
	sne	$t9,$a2,$t8
 # ["exec_times": 3292]
	beqz	$t9,Bimerge.L7
 # ["exec_times": 3292]
 # ["instr_profile": 3292 1098]
	nop	
	# .loc	2, 156
 # ["exec_times": 0]
	la	$t0,SwapValRight
 # ["exec_times": 2194]
	move	$a2,$s4
	move	$a3,$s7
	move	$fp,$sp
	fst	$sp
	sw	$v1,-20($sp)
	sw	$v0,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 2194]
 # ["proc_name": "SwapValRight"]
 # ["call_overhead": 13]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 157
 # ["exec_times": 0]
	move	$a0,$s5
 # ["exec_times": 2194]
	# .loc	2, 158
 # ["exec_times": 0]
	move	$a1,$s6
 # ["exec_times": 2194]
	j	Bimerge.__done12
 # ["exec_times": 2194]
 # ["instr_profile": 2194 2194]
	nop	
Bimerge.L7:
	# .loc	2, 160
 # ["exec_times": 0]
	move	$a0,$s4
 # ["exec_times": 1098]
	# .loc	2, 161
 # ["exec_times": 0]
	move	$a1,$s7
 # ["exec_times": 1098]
	j	Bimerge.__done12
 # ["exec_times": 1098]
 # ["instr_profile": 1098 1098]
	nop	
Bimerge.L6:
	# .loc	2, 162
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 2876]
	sne	$a2,$a2,$a3
 # ["exec_times": 2876]
	beqz	$a2,Bimerge.L8
 # ["exec_times": 2876]
 # ["instr_profile": 2876 2101]
	nop	
	# .loc	2, 163
 # ["exec_times": 0]
	la	$t0,SwapValLeft
 # ["exec_times": 775]
	move	$a2,$s5
	move	$a3,$s6
	move	$fp,$sp
	fst	$sp
	sw	$v1,-20($sp)
	sw	$v0,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 775]
 # ["proc_name": "SwapValLeft"]
 # ["call_overhead": 13]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 164
 # ["exec_times": 0]
	move	$a0,$s4
 # ["exec_times": 775]
	# .loc	2, 165
 # ["exec_times": 0]
	move	$a1,$s7
 # ["exec_times": 775]
	j	Bimerge.__done12
 # ["exec_times": 775]
 # ["instr_profile": 775 775]
	nop	
Bimerge.L8:
	# .loc	2, 167
 # ["exec_times": 0]
	move	$a0,$s5
 # ["exec_times": 2101]
	# .loc	2, 168
 # ["exec_times": 0]
	move	$a1,$s6
 # ["exec_times": 2101]
Bimerge.__done12:
	la	$a2,0($zero)
 # ["exec_times": 6168]
	sne	$a3,$a0,$a2
 # ["exec_times": 6168]
	cqip	Bimerge.L13
 # ["cqip_pos": <L:Bimerge.L13,0>]
Bimerge.L13:
	pslice_entry	Bimerge.L13
 # ["pslice_entry_pos": <L:Bimerge.L13,0>]
	li	$a2,4
 # ["exec_times": 6168]
	addu	$a3,$a0,$a2
 # ["fields": "left"]
 # ["exec_times": 6168]
	lw	$s5,0($a3)
 # ["exec_times": 6168]
	move	$a0,$s5
 # ["exec_times": 2194]
	la	$a2,0($zero)
 # ["exec_times": 6168]
	sne	$a3,$a0,$a2
 # ["exec_times": 6168]
	pslice_exit	Bimerge.L13
 # ["pslice_exit_pos": <L:Bimerge.L13,0>]
	bnez	$a3,Bimerge.L5
 # ["exec_times": 6168]
 # ["instr_profile": 6168 2582]
	nop	
Bimerge.L2:
	cqip	Bimerge.L14
 # ["cqip_pos": <L:Bimerge.L14,0>]
Bimerge.L14:
	pslice_entry	Bimerge.L14
 # ["pslice_entry_pos": <L:Bimerge.L14,0>]
	pslice_exit	Bimerge.L14
 # ["pslice_exit_pos": <L:Bimerge.L14,0>]
	# .loc	2, 171
 # ["exec_times": 0]
	li	$v0,4
 # ["exec_times": 7682]
	addu	$v1,$s3,$v0
 # ["fields": "left"]
 # ["exec_times": 7682]
	lw	$t0,0($v1)
 # ["exec_times": 7682]
	la	$t1,0($zero)
 # ["exec_times": 7682]
	sne	$t2,$t0,$t1
 # ["exec_times": 7682]
	beqz	$t2,Bimerge.L9
 # ["exec_times": 7682]
 # ["instr_profile": 7682 4096]
	nop	
	# .loc	2, 175
 # ["exec_times": 0]
	li	$t3,4
 # ["exec_times": 3586]
	addu	$t4,$s3,$t3
 # ["fields": "left"]
 # ["exec_times": 3586]
	lw	$a0,0($t4)
 # ["exec_times": 3586]
	# .loc	2, 176
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 3586]
	addu	$t6,$s3,$t5
 # ["fields": "right"]
 # ["exec_times": 3586]
	lw	$s0,0($t6)
 # ["exec_times": 3586]
	# .loc	2, 177
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 3586]
	addu	$t8,$s3,$t7
 # ["fields": "value"]
 # ["exec_times": 3586]
	lw	$a1,0($t8)
 # ["exec_times": 3586]
	# .loc	2, 178
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 3586]
	addu	$s3,$s3,$t9
 # ["fields": "value"]
 # ["exec_times": 3586]
	la	$t0,Bimerge
 # ["exec_times": 3586]
	move	$a2,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 3586]
 # ["proc_name": "Bimerge"]
 # ["call_overhead": 91]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s3)
 # ["exec_times": 3586]
	# .loc	2, 179
 # ["exec_times": 0]
	la	$t0,Bimerge
 # ["exec_times": 3586]
	move	$a0,$s0
	move	$a1,$s2
	spawn	Bimerge.L15
 # ["cqip_pos": <L:Bimerge.L15,0>]
	move	$a2,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 3586]
 # ["proc_name": "Bimerge"]
 # ["call_overhead": 12763]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$s2,$v0
	# .loc	2, 181
 # ["exec_times": 0]
Bimerge.L9:
	cqip	Bimerge.L15
 # ["cqip_pos": <L:Bimerge.L15,0>]
Bimerge.L15:
	pslice_entry	Bimerge.L15
 # ["pslice_entry_pos": <L:Bimerge.L15,0>]
	move	$s2,$v0
	pslice_exit	Bimerge.L15
 # ["pslice_exit_pos": <L:Bimerge.L15,0>]
	# .loc	2, 184
 # ["exec_times": 0]
	move	$v0,$s2
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$s3,20($sp)
 # ["header/trailer":]
	lw	$s4,24($sp)
 # ["header/trailer":]
	lw	$s5,28($sp)
 # ["header/trailer":]
	lw	$s6,32($sp)
 # ["header/trailer":]
	lw	$s7,36($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 7682]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	Bimerge 
	.text	
	.align	2
	.align	2
	.globl	Bisort
	# .loc	2, 190
	.ent	Bisort 
Bisort:
	spawn	Bisort.headerspawn
 # ["header/trailer":]
	la	$sp,-208($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	sw	$s2,16($sp)
 # ["header/trailer":]
	sw	$s3,20($sp)
 # ["header/trailer":]
	sw	$s4,24($sp)
 # ["header/trailer":]
	.mask	0x801f0000, -208
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 208, $31
 # ["header/trailer":]
	cqip	Bisort.headerspawn
 # ["header/trailer":]
Bisort.headerspawn:
 # ["header/trailer":]
	pslice_entry	Bisort.headerspawn
 # ["header/trailer":]
	la	$sp,-208($sp)
 # ["header/trailer":]
	pslice_exit	Bisort.headerspawn
	spawn	Bisort.spawntail1
	move	$s2,$a0
	move	$s1,$a1
	move	$s0,$a2
	# .loc	2, 195
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 1022]
	addu	$a3,$s2,$a2
 # ["fields": "left"]
 # ["exec_times": 1022]
	lw	$v0,0($a3)
 # ["exec_times": 1022]
	la	$v1,0($zero)
 # ["exec_times": 1022]
	seq	$t0,$v0,$v1
 # ["exec_times": 1022]
	beqz	$t0,Bisort.L1
 # ["exec_times": 1022]
 # ["instr_profile": 1022 510]
	nop	
	# .loc	2, 197
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 512]
	addu	$t2,$s2,$t1
 # ["fields": "value"]
 # ["exec_times": 512]
	lw	$t3,0($t2)
 # ["exec_times": 512]
	slt	$a1,$s1,$t3
 # ["exec_times": 512]
	xor	$a0,$a1,$s0
 # ["exec_times": 512]
	move	$t4,$zero
 # ["exec_times": 512]
	sne	$t5,$a0,$t4
 # ["exec_times": 512]
	beqz	$t5,Bisort.__done3
 # ["exec_times": 512]
 # ["instr_profile": 512 248]
	nop	
	# .loc	2, 198
 # ["exec_times": 0]
	move	$a1,$s1
 # ["exec_times": 264]
	# .loc	2, 199
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 264]
	addu	$t7,$s2,$t6
 # ["fields": "value"]
 # ["exec_times": 264]
	lw	$s1,0($t7)
 # ["exec_times": 264]
	# .loc	2, 200
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 264]
	addu	$t9,$s2,$t8
 # ["fields": "value"]
 # ["exec_times": 264]
	sw	$a1,0($t9)
 # ["exec_times": 264]
	# .loc	2, 201
 # ["exec_times": 0]
	j	Bisort.__done3
 # ["exec_times": 264]
 # ["instr_profile": 264 264]
	nop	
Bisort.L1:
	# .loc	2, 205
 # ["exec_times": 0]
	li	$a0,4
 # ["exec_times": 510]
	addu	$a1,$s2,$a0
 # ["fields": "left"]
 # ["exec_times": 510]
	lw	$a0,0($a1)
 # ["exec_times": 510]
	# .loc	2, 206
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 510]
	addu	$a3,$s2,$a2
 # ["fields": "right"]
 # ["exec_times": 510]
	lw	$s3,0($a3)
 # ["exec_times": 510]
	# .loc	2, 207
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 510]
	addu	$v1,$s2,$v0
 # ["fields": "value"]
 # ["exec_times": 510]
	lw	$a1,0($v1)
 # ["exec_times": 510]
	# .loc	2, 208
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 510]
	addu	$s4,$s2,$t0
 # ["fields": "value"]
 # ["exec_times": 510]
	la	$t0,Bisort
 # ["exec_times": 510]
	move	$a2,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 510]
 # ["proc_name": "Bisort"]
 # ["call_overhead": 143]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s4)
 # ["exec_times": 510]
	# .loc	2, 209
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 510]
	sne	$t2,$s0,$t1
 # ["exec_times": 510]
	move	$t3,$zero
 # ["exec_times": 510]
	seq	$a2,$t2,$t3
 # ["exec_times": 510]
	# .loc	2, 210
 # ["exec_times": 0]
	la	$t0,Bisort
 # ["exec_times": 510]
	move	$a0,$s3
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 510]
 # ["proc_name": "Bisort"]
 # ["call_overhead": 78091]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$s1,$v0
	# .loc	2, 212
 # ["exec_times": 0]
	la	$t0,Bimerge
 # ["exec_times": 510]
	move	$a0,$s2
	move	$a1,$s1
	move	$a2,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 510]
 # ["proc_name": "Bimerge"]
 # ["call_overhead": 27837]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$s1,$v0
	# .loc	2, 213
 # ["exec_times": 0]
Bisort.__done3:
	# .loc	2, 216
 # ["exec_times": 0]
	move	$v0,$s1
	cqip	Bisort.spawntail1
Bisort.spawntail1:
	pslice_entry	Bisort.spawntail1
	pslice_exit	Bisort.spawntail1
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$s3,20($sp)
 # ["header/trailer":]
	lw	$s4,24($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1022]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	Bisort 
	.text	
	.align	2
	.align	2
	.globl	InOrder
	# .loc	2, 27
	.ent	InOrder 
InOrder:
	spawn	InOrder.headerspawn
 # ["header/trailer":]
	la	$sp,-88($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -88
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 88, $31
 # ["header/trailer":]
	cqip	InOrder.headerspawn
 # ["header/trailer":]
InOrder.headerspawn:
 # ["header/trailer":]
	pslice_entry	InOrder.headerspawn
 # ["header/trailer":]
	la	$sp,-88($sp)
 # ["header/trailer":]
	pslice_exit	InOrder.headerspawn
	move	$s0,$a0
	# .loc	2, 29
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 3069]
	sne	$t5,$s0,$t4
 # ["exec_times": 3069]
	beqz	$t5,InOrder.L1
 # ["exec_times": 3069]
 # ["instr_profile": 3069 1536]
	nop	
	# .loc	2, 30
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 1533]
	addu	$t7,$s0,$t6
 # ["fields": "left"]
 # ["exec_times": 1533]
	lw	$a0,0($t7)
 # ["exec_times": 1533]
	# .loc	2, 31
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 1533]
	addu	$t9,$s0,$t8
 # ["fields": "right"]
 # ["exec_times": 1533]
	lw	$s1,0($t9)
 # ["exec_times": 1533]
	# .loc	2, 32
 # ["exec_times": 0]
	la	$t0,InOrder
 # ["exec_times": 1533]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1533]
 # ["proc_name": "InOrder"]
 # ["call_overhead": 15]
 # ["regs_used": 5]
	nop	
	# .loc	2, 33
 # ["exec_times": 0]
	la	$t0,myprintf2
 # ["exec_times": 1533]
	la	$a0,__tmp_string_0
 # ["exec_times": 1533]
	move	$a1,$zero
 # ["exec_times": 1533]
	addu	$a1,$s0,$a1
 # ["fields": "value"]
 # ["exec_times": 1533]
	lw	$a1,0($a1)
 # ["exec_times": 1533]
	move	$a2,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1533]
 # ["proc_name": "myprintf2"]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 34
 # ["exec_times": 0]
	la	$t0,InOrder
 # ["exec_times": 1533]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1533]
 # ["proc_name": "InOrder"]
 # ["call_overhead": 4076]
 # ["regs_used": 5]
	nop	
InOrder.L1:
	# .loc	2, 36
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 3069]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	InOrder 
	.text	
	.align	2
	.align	2
	.globl	mult
	# .loc	2, 39
	.ent	mult 
mult:
	spawn	mult.headerspawn
 # ["header/trailer":]
	la	$sp,-88($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 88, $31
 # ["header/trailer":]
	cqip	mult.headerspawn
 # ["header/trailer":]
mult.headerspawn:
 # ["header/trailer":]
	pslice_entry	mult.headerspawn
 # ["header/trailer":]
	la	$sp,-88($sp)
 # ["header/trailer":]
	pslice_exit	mult.headerspawn
	# .loc	2, 41
 # ["exec_times": 0]
	li	$a2,10000
 # ["exec_times": 5631]
	div	$a3,$a0,$a2
 # ["exec_times": 5631]
	# .loc	2, 42
 # ["exec_times": 0]
	li	$v0,10000
 # ["exec_times": 5631]
	rem	$v1,$a0,$v0
 # ["exec_times": 5631]
	# .loc	2, 43
 # ["exec_times": 0]
	li	$t0,10000
 # ["exec_times": 5631]
	div	$t1,$a1,$t0
 # ["exec_times": 5631]
	# .loc	2, 44
 # ["exec_times": 0]
	li	$t2,10000
 # ["exec_times": 5631]
	rem	$t3,$a1,$t2
 # ["exec_times": 5631]
	# .loc	2, 45
 # ["exec_times": 0]
	mult	$v1,$t1
	mflo	$t4
 # ["exec_times": 5631]
	mult	$a3,$t3
	mflo	$t5
 # ["exec_times": 5631]
	addu	$t6,$t4,$t5
 # ["exec_times": 5631]
	li	$t7,10000
 # ["exec_times": 5631]
	rem	$t8,$t6,$t7
 # ["exec_times": 5631]
	li	$t9,10000
 # ["exec_times": 5631]
	mult	$t8,$t9
	mflo	$a0
 # ["exec_times": 5631]
	mult	$v1,$t3
	mflo	$a1
 # ["exec_times": 5631]
	addu	$v0,$a0,$a1
 # ["exec_times": 5631]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 5631]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	mult 
	.text	
	.align	2
	.align	2
	.globl	skiprand
	# .loc	2, 49
	.ent	skiprand 
skiprand:
	spawn	skiprand.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -48
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 48, $31
 # ["header/trailer":]
	cqip	skiprand.headerspawn
 # ["header/trailer":]
skiprand.headerspawn:
 # ["header/trailer":]
	pslice_entry	skiprand.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	pslice_exit	skiprand.headerspawn
	move	$v0,$a0
	move	$s0,$a1
	# .loc	2, 50
 # ["exec_times": 0]
	# .loc	2, 50
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 511]
	sne	$a3,$s0,$a2
 # ["exec_times": 511]
	beqz	$a3,skiprand.L4
 # ["exec_times": 511]
 # ["instr_profile": 511 0]
	nop	
skiprand.L3:
	spawn	skiprand.L5
 # ["cqip_pos": <L:skiprand.L5,0>]
	# .loc	2, 51
 # ["exec_times": 0]
	la	$t0,random
 # ["exec_times": 5119]
	move	$a0,$v0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 5119]
 # ["proc_name": "random"]
 # ["call_overhead": 24]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 50
 # ["exec_times": 0]
	li	$v1,1
 # ["exec_times": 5119]
	subu	$s0,$s0,$v1
 # ["exec_times": 5119]
	# .loc	2, 50
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 5119]
	sne	$t0,$s0,$v1
 # ["exec_times": 5119]
	cqip	skiprand.L5
 # ["cqip_pos": <L:skiprand.L5,0>]
skiprand.L5:
	pslice_entry	skiprand.L5
 # ["pslice_entry_pos": <L:skiprand.L5,0>]
	li	$v1,1
 # ["exec_times": 5119]
	subu	$s0,$s0,$v1
 # ["exec_times": 5119]
	move	$v1,$zero
 # ["exec_times": 5119]
	sne	$t0,$s0,$v1
 # ["exec_times": 5119]
	pslice_exit	skiprand.L5
 # ["pslice_exit_pos": <L:skiprand.L5,0>]
	bnez	$t0,skiprand.L3
 # ["exec_times": 5119]
 # ["instr_profile": 5119 4608]
	nop	
skiprand.L4:
	# .loc	2, 52
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 511]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	skiprand 
	.text	
	.align	2
	.align	2
	.globl	random
	# .loc	2, 55
	.ent	random 
random:
	spawn	random.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -40
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 40, $31
 # ["header/trailer":]
	cqip	random.headerspawn
 # ["header/trailer":]
random.headerspawn:
 # ["header/trailer":]
	pslice_entry	random.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	pslice_exit	random.headerspawn
	# .loc	2, 59
 # ["exec_times": 0]
	la	$t0,mult
 # ["exec_times": 5631]
	li	$a1,31415821
 # ["exec_times": 5631]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 5631]
 # ["proc_name": "mult"]
 # ["call_overhead": 18]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	li	$t1,1
 # ["exec_times": 5631]
	addu	$v0,$v0,$t1
 # ["exec_times": 5631]
	# .loc	2, 60
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 5631]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	random 
	.text	
	.align	2
	.align	2
	.globl	entry
	# .loc	2, 222
	.ent	entry 
entry:
	spawn	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-192($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -192
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 192, $31
 # ["header/trailer":]
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-192($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L4
 # ["cqip_pos": <L:entry.L4,0>]
	# .loc	2, 227
 # ["exec_times": 0]
	la	$t0,dealwithargs
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "dealwithargs"]
 # ["call_overhead": 9]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
	# .loc	2, 228
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_1
 # ["exec_times": 1]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 229
 # ["exec_times": 0]
	la	$t0,RandTree
 # ["exec_times": 1]
	li	$a1,12345768
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "RandTree"]
 # ["call_overhead": 203151]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L4
 # ["cqip_pos": <L:entry.L4,0>]
entry.L4:
	pslice_entry	entry.L4
 # ["pslice_entry_pos": <L:entry.L4,0>]
	pslice_exit	entry.L4
 # ["pslice_exit_pos": <L:entry.L4,0>]
	spawn	entry.L5
 # ["cqip_pos": <L:entry.L5,0>]
	move	$s0,$v0
	# .loc	2, 231
 # ["exec_times": 0]
	la	$t0,random
 # ["exec_times": 1]
	li	$a0,245867
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "random"]
 # ["call_overhead": 24]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	li	$t2,100
 # ["exec_times": 1]
	rem	$s1,$v0,$t2
 # ["exec_times": 1]
	# .loc	2, 232
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 1]
	lw	$t4,flag
	sne	$t5,$t4,$t3
 # ["exec_times": 1]
	beqz	$t5,entry.L1
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 233
 # ["exec_times": 0]
	la	$t0,InOrder
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "InOrder"]
 # ["call_overhead": 12268]
 # ["regs_used": 5]
	nop	
	# .loc	2, 234
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_2
 # ["exec_times": 1]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
entry.L1:
	cqip	entry.L5
 # ["cqip_pos": <L:entry.L5,0>]
entry.L5:
	pslice_entry	entry.L5
 # ["pslice_entry_pos": <L:entry.L5,0>]
	pslice_exit	entry.L5
 # ["pslice_exit_pos": <L:entry.L5,0>]
	# .loc	2, 236
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_3
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 237
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_4
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 238
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_3
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 239
 # ["exec_times": 0]
	la	$t0,Bisort
 # ["exec_times": 1]
	move	$a2,$zero
 # ["exec_times": 1]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "Bisort"]
 # ["call_overhead": 288453]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$s1,$v0
	# .loc	2, 240
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 1]
	lw	$t7,flag
	sne	$t8,$t7,$t6
 # ["exec_times": 1]
	beqz	$t8,entry.L2
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 241
 # ["exec_times": 0]
	spawn	entry.L6
 # ["cqip_pos": <L:entry.L6,0>]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_5
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 242
 # ["exec_times": 0]
	la	$t0,InOrder
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "InOrder"]
 # ["call_overhead": 12268]
 # ["regs_used": 5]
	nop	
	# .loc	2, 243
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_6
 # ["exec_times": 1]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
entry.L2:
	cqip	entry.L6
 # ["cqip_pos": <L:entry.L6,0>]
entry.L6:
	pslice_entry	entry.L6
 # ["pslice_entry_pos": <L:entry.L6,0>]
	pslice_exit	entry.L6
 # ["pslice_exit_pos": <L:entry.L6,0>]
	# .loc	2, 245
 # ["exec_times": 0]
	la	$t0,Bisort
 # ["exec_times": 1]
	li	$a2,1
 # ["exec_times": 1]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "Bisort"]
 # ["call_overhead": 291461]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$s1,$v0
	# .loc	2, 246
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 1]
	lw	$a0,flag
	sne	$a1,$a0,$t9
 # ["exec_times": 1]
	beqz	$a1,entry.L3
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 247
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_5
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 248
 # ["exec_times": 0]
	la	$t0,InOrder
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "InOrder"]
 # ["call_overhead": 12268]
 # ["regs_used": 5]
	nop	
	# .loc	2, 249
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_6
 # ["exec_times": 1]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
entry.L3:
	# .loc	2, 251
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	entry 
