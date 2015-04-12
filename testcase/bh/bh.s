	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc12293_0.i /home/keyming/Prophet/testcase/bh/bh.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/bh/bh.snt /home/keyming/Prophet/testcase/bh/bh.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/bh/bh.temp1 /home/keyming/Prophet/testcase/bh/bh.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/bh/bh.temp2 /home/keyming/Prophet/testcase/bh/bh.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/bh/bh.temp3 /home/keyming/Prophet/testcase/bh/bh.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/bh/bh.temp4 /home/keyming/Prophet/testcase/bh/bh.snp
	# history:  transform_print /home/keyming/Prophet/testcase/bh/bh.snp /home/keyming/Prophet/testcase/bh/bh.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/bh/bh.tp /home/keyming/Prophet/testcase/bh/bh.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/bh/bh.iocal /home/keyming/Prophet/testcase/bh/bh.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/bh/bh.bore /home/keyming/Prophet/testcase/bh/bh.porky
	# history:  suifvm /home/keyming/Prophet/testcase/bh/bh.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/bh/bh.pf /home/keyming/Prophet/testcase/bh/bh.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/bh/bh.swig /home/keyming/Prophet/testcase/bh/bh.mgen
	# history:  raga /home/keyming/Prophet/testcase/bh/bh.mgen /home/keyming/Prophet/testcase/bh/bh.raga
	# history:  partition /home/keyming/Prophet/testcase/bh/bh.sche /home/keyming/Prophet/testcase/bh/bh.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/bh/bh.par /home/keyming/Prophet/testcase/bh/bh.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/bh/bh.mfin /home/keyming/Prophet/testcase/bh/bh.nop
	# history:  transform_main /home/keyming/Prophet/testcase/bh/bh.nop /home/keyming/Prophet/testcase/bh/bh.entry
	# history:  printmachine /home/keyming/Prophet/testcase/bh/bh.entry /home/keyming/Prophet/testcase/bh/bh.s
	.set	noreorder
	.comm	NumNodes, 4
	.comm	nbody, 4
	.comm	root, 4
	.comm	rmin, 24
	.comm	rsize, 8
	.comm	arg1, 4
	.sdata	
	.globl	cp_free_list
	.align	2
	.align	0	# disable automatic alignment
cp_free_list:
	.word	0
	.sdata	
	.globl	bp_free_list
	.align	2
	.align	0	# disable automatic alignment
bp_free_list:
	.word	0
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"nbody = %d, numnodes = %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"bodies created \012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"Bodies per %d = %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_3:
	.ascii	"Assertion Failure #%d\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_4:
	.ascii	"testdata: not enough memory\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_5:
	.ascii	"x: %f\011y: %f\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_6:
	.ascii	"xrand: %f\011yrand: %f\011\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_7:
	.ascii	"seed: %f\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_8:
	.ascii	"Assertion Failure #%d\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_9:
	.ascii	"%d NULL TREE\012\000"
	.file	2 "bh.c"
	.text	
	.align	2
	.align	2
	.globl	dealwithargs
	# .loc	2, 24
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
	# .loc	2, 27
 # ["exec_times": 0]
	li	$t0,2
 # ["exec_times": 1]
	slt	$t1,$t0,$a0
 # ["exec_times": 1]
	bnez	$t1,dealwithargs.__done3
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 30
 # ["exec_times": 0]
	li	$t2,2
 # ["exec_times": 1]
	sw	$t2,NumNodes
dealwithargs.__done3:
	# .loc	2, 33
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 1]
	slt	$t4,$t3,$a0
 # ["exec_times": 1]
	bnez	$t4,dealwithargs.__done4
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 36
 # ["exec_times": 0]
	li	$t5,64
 # ["exec_times": 1]
	sw	$t5,nbody
dealwithargs.__done4:
	# .loc	2, 39
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
	.globl	my_rand
	# .loc	2, 62
	.ent	my_rand 
my_rand:
	spawn	my_rand.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 96, $31
 # ["header/trailer":]
	cqip	my_rand.headerspawn
 # ["header/trailer":]
my_rand.headerspawn:
 # ["header/trailer":]
	pslice_entry	my_rand.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	pslice_exit	my_rand.headerspawn
	# .loc	2, 63
 # ["exec_times": 0]
	li.d	$f14,1.680700000000000000e+04
 # ["exec_times": 934]
	mul.d	$f0,$f14,$f12
 # ["exec_times": 934]
	li.d	$f2,1.000000000000000000e+00
 # ["exec_times": 934]
	add.d	$f4,$f0,$f2
 # ["exec_times": 934]
	# .loc	2, 67
 # ["exec_times": 0]
	li.d	$f6,2.147483647000000000e+09
 # ["exec_times": 934]
	li.d	$f8,2.147483647000000000e+09
 # ["exec_times": 934]
	div.d	$f10,$f4,$f8
 # ["exec_times": 934]
	cvt.w.d	$f16,$f10
	mfc1	$t6,$f16
 # ["exec_times": 934]
	mtc1	$t6,$f18
	cvt.d.w	$f12,$f18
 # ["exec_times": 934]
	mul.d	$f14,$f6,$f12
 # ["exec_times": 934]
	sub.d	$f12,$f4,$f14
 # ["exec_times": 934]
	# .loc	2, 68
 # ["exec_times": 0]
	mov.d	$f0,$f12
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 934]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	my_rand 
	.text	
	.align	2
	.align	2
	.globl	xrand
	# .loc	2, 77
	.ent	xrand 
xrand:
	spawn	xrand.headerspawn
 # ["header/trailer":]
	la	$sp,-72($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 72, $31
 # ["header/trailer":]
	cqip	xrand.headerspawn
 # ["header/trailer":]
xrand.headerspawn:
 # ["header/trailer":]
	pslice_entry	xrand.headerspawn
 # ["header/trailer":]
	la	$sp,-72($sp)
 # ["header/trailer":]
	pslice_exit	xrand.headerspawn
	l.d	$f2,48($sp)
	# .loc	2, 80
 # ["exec_times": 0]
	sub.d	$f0,$f14,$f12
 # ["exec_times": 934]
	mul.d	$f4,$f0,$f2
 # ["exec_times": 934]
	li.d	$f6,2.147483647000000000e+09
 # ["exec_times": 934]
	div.d	$f8,$f4,$f6
 # ["exec_times": 934]
	add.d	$f0,$f12,$f8
 # ["exec_times": 934]
	# .loc	2, 81
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 934]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	xrand 
	.text	
	.align	2
	.align	2
	.globl	subdivp
	# .loc	2, 1115
	.ent	subdivp 
subdivp:
	spawn	subdivp.headerspawn
 # ["header/trailer":]
	la	$sp,-360($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 360, $31
 # ["header/trailer":]
	cqip	subdivp.headerspawn
 # ["header/trailer":]
subdivp.headerspawn:
 # ["header/trailer":]
	pslice_entry	subdivp.headerspawn
 # ["header/trailer":]
	la	$sp,-360($sp)
 # ["header/trailer":]
	pslice_exit	subdivp.headerspawn
	l.d	$f16,336($sp)
	mtc1	$a2,$f14
	mtc1	$a3,$f15
	# .loc	2, 1121
 # ["exec_times": 0]
	# .loc	2, 1122
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	addu	$t6,$a0,$t5
 # ["fields": "type"]
 # ["exec_times": 0]
	lh	$t3,0($t6)
 # ["exec_times": 0]
	li	$t7,1
 # ["exec_times": 0]
	seq	$t8,$t3,$t7
 # ["exec_times": 0]
	beqz	$t8,subdivp.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 1124
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g3]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
subdivp.L1:
	# .loc	2, 1126
 # ["exec_times": 0]
	# .loc	2, 1128
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
subdivp.L6:
	# .loc	2, 1129
 # ["exec_times": 0]
	la	$a1,240($sp)
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 0]
	mult	$t9,$a2
	mflo	$a2
 # ["exec_times": 0]
	addu	$a3,$a1,$a2
 # ["exec_times": 0]
	li	$v0,16
 # ["exec_times": 0]
	addu	$t4,$a0,$v0
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$v1,8
 # ["exec_times": 0]
	mult	$t9,$v1
	mflo	$t0
 # ["exec_times": 0]
	addu	$t1,$t4,$t0
 # ["exec_times": 0]
	l.d	$f0,0($t1)
 # ["exec_times": 0]
	la	$t2,280($sp)
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$t9,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	l.d	$f2,0($t5)
 # ["exec_times": 0]
	sub.d	$f2,$f0,$f2
 # ["exec_times": 0]
	s.d	$f2,0($a3)
 # ["exec_times": 0]
	li	$t6,1
 # ["exec_times": 0]
	addu	$t9,$t9,$t6
 # ["exec_times": 0]
	li	$t7,3
 # ["exec_times": 0]
	sle	$t8,$t7,$t9
 # ["exec_times": 0]
	beqz	$t8,subdivp.L6
 # ["exec_times": 0]
	nop	
	# .loc	2, 1128
 # ["exec_times": 0]
	# .loc	2, 1131
 # ["exec_times": 0]
	# .loc	2, 1133
 # ["exec_times": 0]
	li.d	$f4,0.000000000000000000e+00
 # ["exec_times": 0]
	# .loc	2, 1134
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
subdivp.L7:
	# .loc	2, 1135
 # ["exec_times": 0]
	la	$a0,240($sp)
 # ["exec_times": 0]
	li	$a1,8
 # ["exec_times": 0]
	mult	$t9,$a1
	mflo	$a2
 # ["exec_times": 0]
	addu	$a3,$a0,$a2
 # ["exec_times": 0]
	l.d	$f6,0($a3)
 # ["exec_times": 0]
	la	$v0,240($sp)
 # ["exec_times": 0]
	li	$v1,8
 # ["exec_times": 0]
	mult	$t9,$v1
	mflo	$t0
 # ["exec_times": 0]
	addu	$t1,$v0,$t0
 # ["exec_times": 0]
	l.d	$f8,0($t1)
 # ["exec_times": 0]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 0]
	add.d	$f4,$f4,$f10
 # ["exec_times": 0]
	li	$t2,1
 # ["exec_times": 0]
	addu	$t9,$t9,$t2
 # ["exec_times": 0]
	li	$t3,3
 # ["exec_times": 0]
	sle	$t4,$t3,$t9
 # ["exec_times": 0]
	beqz	$t4,subdivp.L7
 # ["exec_times": 0]
	nop	
	# .loc	2, 1134
 # ["exec_times": 0]
	# .loc	2, 1139
 # ["exec_times": 0]
	mul.d	$f18,$f16,$f4
 # ["exec_times": 0]
	li	$t5,1
	c.lt.d	$f18,$f14
 # ["exec_times": 0]
	bc1t	subdivp.L8
	nop	
	move	$t5,$zero
subdivp.L8:
	sll	$t6,$t5,16
	sra	$v0,$t6,16
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g3]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	subdivp 
	.text	
	.align	2
	.align	2
	.globl	walksub
	# .loc	2, 131
	.ent	walksub 
walksub:
	spawn	walksub.headerspawn
 # ["header/trailer":]
	la	$sp,-280($sp)
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
	.mask	0x807f0000, -280
 # ["header/trailer":]
	s.d	$f20,40($sp)
 # ["header/trailer":]
	s.d	$f22,48($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -280
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 280, $31
 # ["header/trailer":]
	cqip	walksub.headerspawn
 # ["header/trailer":]
walksub.headerspawn:
 # ["header/trailer":]
	pslice_entry	walksub.headerspawn
 # ["header/trailer":]
	la	$sp,-280($sp)
 # ["header/trailer":]
	pslice_exit	walksub.headerspawn
	l.d	$f22,256($sp)
	lw	$s2,188($sp)
	move	$s1,$a0
	move	$s0,$a1
	mtc1	$a2,$f14
	spawn	walksub.L8
 # ["cqip_pos": <L:walksub.L8,0>]
	mtc1	$a3,$f15
	mov.d	$f20,$f14
	# .loc	2, 137
 # ["exec_times": 0]
	la	$t0,subdivp
 # ["exec_times": 0]
	move	$a0,$s0
	mov.d	$f14,$f20
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	# BEGIN structure move
	la	$t8,192($sp)
	la	$s3,-88($sp)
	lw	$t9,0($t8)
	lw	$a1,4($t8)
	lw	$v0,8($t8)
	sw	$t9,0($s3)
	sw	$a1,4($s3)
	sw	$v0,8($s3)
	lw	$v0,12($t8)
	lw	$v1,16($t8)
	lw	$t1,20($t8)
	sw	$v0,12($s3)
	sw	$v1,16($s3)
	sw	$t1,20($s3)
	lw	$v1,24($t8)
	lw	$t1,28($t8)
	lw	$t2,32($t8)
	sw	$v1,24($s3)
	sw	$t1,28($s3)
	sw	$t2,32($s3)
	lw	$t2,36($t8)
	lw	$t3,40($t8)
	lw	$t4,44($t8)
	sw	$t2,36($s3)
	sw	$t3,40($s3)
	sw	$t4,44($s3)
	lw	$t5,48($t8)
	lw	$t6,52($t8)
	lw	$t7,56($t8)
	sw	$t5,48($s3)
	sw	$t6,52($s3)
	sw	$t7,56($s3)
	lw	$t8,60($t8)
	sw	$t8,60($s3)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "subdivp"]
 # ["struct alignment": 3 64]
 # ["regs_used": 5 34 7 8 34 35]
 # ["regs_defd": 9]
	nop	
	cqip	walksub.L8
 # ["cqip_pos": <L:walksub.L8,0>]
walksub.L8:
	pslice_entry	walksub.L8
 # ["pslice_entry_pos": <L:walksub.L8,0>]
	pslice_exit	walksub.L8
 # ["pslice_exit_pos": <L:walksub.L8,0>]
	move	$t9,$zero
 # ["exec_times": 0]
	sne	$a0,$v0,$t9
 # ["exec_times": 0]
	beqz	$a0,walksub.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 138
 # ["exec_times": 0]
	spawn	walksub.L9
 # ["cqip_pos": <L:walksub.L9,0>]
	move	$s3,$zero
 # ["exec_times": 0]
walksub.L6:
	# .loc	2, 139
 # ["exec_times": 0]
	li	$a1,48
 # ["exec_times": 0]
	addu	$t6,$s0,$a1
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 0]
	mult	$s3,$a2
	mflo	$a3
 # ["exec_times": 0]
	addu	$v0,$t6,$a3
 # ["exec_times": 0]
	lw	$a1,0($v0)
 # ["exec_times": 0]
	# .loc	2, 140
 # ["exec_times": 0]
	la	$v1,0($zero)
 # ["exec_times": 0]
	sne	$t0,$a1,$v1
 # ["exec_times": 0]
	beqz	$t0,walksub.L4
 # ["exec_times": 0]
	nop	
	# .loc	2, 141
 # ["exec_times": 0]
	la	$t0,walksub
 # ["exec_times": 0]
	li.d	$f2,4.000000000000000000e+00
 # ["exec_times": 0]
	div.d	$f14,$f20,$f2
 # ["exec_times": 0]
	li	$t1,1
 # ["exec_times": 0]
	addu	$s4,$s2,$t1
 # ["exec_times": 0]
	la	$a0,192($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	# BEGIN structure move
	la	$s6,192($sp)
	la	$s5,-88($sp)
	lw	$t2,0($s6)
	lw	$t3,4($s6)
	lw	$t4,8($s6)
	sw	$t2,0($s5)
	sw	$t3,4($s5)
	sw	$t4,8($s5)
	lw	$t5,12($s6)
	lw	$t6,16($s6)
	lw	$t7,20($s6)
	sw	$t5,12($s5)
	sw	$t6,16($s5)
	sw	$t7,20($s5)
	lw	$t8,24($s6)
	lw	$t9,28($s6)
	lw	$v0,32($s6)
	sw	$t8,24($s5)
	sw	$t9,28($s5)
	sw	$v0,32($s5)
	lw	$v0,36($s6)
	lw	$v1,40($s6)
	lw	$t1,44($s6)
	sw	$v0,36($s5)
	sw	$v1,40($s5)
	sw	$t1,44($s5)
	lw	$v0,48($s6)
	lw	$v1,52($s6)
	lw	$t1,56($s6)
	sw	$v0,48($s5)
	sw	$v1,52($s5)
	sw	$t1,56($s5)
	lw	$t1,60($s6)
	sw	$t1,60($s5)
	# END structure move
	sw	$s4,-92($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "walksub"]
 # ["struct alignment": 4 64]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
walksub.L4:
	li	$t2,1
 # ["exec_times": 0]
	addu	$s3,$s3,$t2
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	sle	$t4,$t3,$s3
 # ["exec_times": 0]
	beqz	$t4,walksub.L6
 # ["exec_times": 0]
	nop	
	# .loc	2, 138
 # ["exec_times": 0]
	j	walksub.__done7
 # ["exec_times": 0]
	nop	
walksub.L1:
	# .loc	2, 143
 # ["exec_times": 0]
	la	$t5,192($sp)
 # ["fields": "pskip"]
 # ["exec_times": 0]
	lw	$t7,0($t5)
 # ["exec_times": 0]
	sne	$t6,$s0,$t7
 # ["exec_times": 0]
	beqz	$t6,walksub.__done7
 # ["exec_times": 0]
	nop	
	# .loc	2, 144
 # ["exec_times": 0]
	spawn	walksub.L10
 # ["cqip_pos": <L:walksub.L10,0>]
	la	$t0,gravsub
 # ["exec_times": 0]
	la	$a0,192($sp)
	move	$a1,$s0
	# BEGIN structure move in genCall
	la	$t7,192($sp)
	lw	$a2,0($t7)
	lw	$a3,4($t7)
	move	$fp,$sp
	fst	$sp
	la	$t8,0($sp)
	lw	$t9,8($t7)
	sw	$t9,-56($t8)
	lw	$v0,12($t7)
	sw	$v0,-52($t8)
	lw	$v0,16($t7)
	sw	$v0,-48($t8)
	lw	$v0,20($t7)
	sw	$v0,-44($t8)
	lw	$v0,24($t7)
	sw	$v0,-40($t8)
	lw	$v0,28($t7)
	sw	$v0,-36($t8)
	lw	$v1,32($t7)
	sw	$v1,-32($t8)
	lw	$t1,36($t7)
	sw	$t1,-28($t8)
	lw	$t1,40($t7)
	sw	$t1,-24($t8)
	lw	$t2,44($t7)
	sw	$t2,-20($t8)
	lw	$t3,48($t7)
	sw	$t3,-16($t8)
	lw	$t4,52($t7)
	sw	$t4,-12($t8)
	lw	$t5,56($t7)
	sw	$t5,-8($t8)
	lw	$t6,60($t7)
	sw	$t6,-4($t8)
	# END structure move in genCall
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "gravsub"]
 # ["struct alignment": 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
walksub.__done7:
	cqip	walksub.L10
 # ["cqip_pos": <L:walksub.L10,0>]
walksub.L10:
	pslice_entry	walksub.L10
 # ["pslice_entry_pos": <L:walksub.L10,0>]
	pslice_exit	walksub.L10
 # ["pslice_exit_pos": <L:walksub.L10,0>]
	cqip	walksub.L9
 # ["cqip_pos": <L:walksub.L9,0>]
walksub.L9:
	pslice_entry	walksub.L9
 # ["pslice_entry_pos": <L:walksub.L9,0>]
	pslice_exit	walksub.L9
 # ["pslice_exit_pos": <L:walksub.L9,0>]
	# .loc	2, 148
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t7,192($sp)
 # ["struct alignment": 64]
	la	$t8,0($s1)
	lw	$t9,0($t7)
	lw	$a0,4($t7)
	lw	$a1,8($t7)
	sw	$t9,0($t8)
	sw	$a0,4($t8)
	sw	$a1,8($t8)
	lw	$a2,12($t7)
	lw	$a3,16($t7)
	lw	$v0,20($t7)
	sw	$a2,12($t8)
	sw	$a3,16($t8)
	sw	$v0,20($t8)
	lw	$v1,24($t7)
	lw	$t0,28($t7)
	lw	$t1,32($t7)
	sw	$v1,24($t8)
	sw	$t0,28($t8)
	sw	$t1,32($t8)
	lw	$t2,36($t7)
	lw	$t3,40($t7)
	lw	$t4,44($t7)
	sw	$t2,36($t8)
	sw	$t3,40($t8)
	sw	$t4,44($t8)
	lw	$t5,48($t7)
	lw	$t6,52($t7)
	lw	$t9,56($t7)
	sw	$t5,48($t8)
	sw	$t6,52($t8)
	sw	$t9,56($t8)
	lw	$t9,60($t7)
	sw	$t9,60($t8)
	# END structure move
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
	l.d	$f20,40($sp)
 # ["header/trailer":]
	l.d	$f22,48($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	walksub 
	.text	
	.align	2
	.align	2
	.globl	gravsub
	# .loc	2, 1189
	.ent	gravsub 
gravsub:
	spawn	gravsub.headerspawn
 # ["header/trailer":]
	la	$sp,-592($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -592
 # ["header/trailer":]
	s.d	$f20,16($sp)
 # ["header/trailer":]
	.fmask	0x00100000, -592
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 592, $31
 # ["header/trailer":]
	cqip	gravsub.headerspawn
 # ["header/trailer":]
gravsub.headerspawn:
 # ["header/trailer":]
	pslice_entry	gravsub.headerspawn
 # ["header/trailer":]
	la	$sp,-592($sp)
 # ["header/trailer":]
	pslice_exit	gravsub.headerspawn
	spawn	gravsub.L14
 # ["cqip_pos": <L:gravsub.L14,0>]
	move	$s1,$a0
	move	$s0,$a1
	sw	$a2,520($sp)
	sw	$a3,524($sp)
	# .loc	2, 1197
 # ["exec_times": 0]
	# .loc	2, 1199
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
gravsub.L10:
	# .loc	2, 1200
 # ["exec_times": 0]
	la	$t2,448($sp)
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$t1,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	li	$t6,16
 # ["exec_times": 0]
	addu	$t0,$s0,$t6
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	mult	$t1,$t7
	mflo	$t8
 # ["exec_times": 0]
	addu	$t9,$t0,$t8
 # ["exec_times": 0]
	l.d	$f4,0($t9)
 # ["exec_times": 0]
	la	$a0,528($sp)
 # ["exec_times": 0]
	li	$a1,8
 # ["exec_times": 0]
	mult	$t1,$a1
	mflo	$a2
 # ["exec_times": 0]
	addu	$a3,$a0,$a2
 # ["exec_times": 0]
	l.d	$f6,0($a3)
 # ["exec_times": 0]
	sub.d	$f8,$f4,$f6
 # ["exec_times": 0]
	s.d	$f8,0($t5)
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 0]
	addu	$t1,$t1,$v0
 # ["exec_times": 0]
	li	$v1,3
 # ["exec_times": 0]
	sle	$t0,$v1,$t1
 # ["exec_times": 0]
	beqz	$t0,gravsub.L10
 # ["exec_times": 0]
	nop	
	cqip	gravsub.L14
 # ["cqip_pos": <L:gravsub.L14,0>]
gravsub.L14:
	pslice_entry	gravsub.L14
 # ["pslice_entry_pos": <L:gravsub.L14,0>]
	pslice_exit	gravsub.L14
 # ["pslice_exit_pos": <L:gravsub.L14,0>]
	spawn	gravsub.L15
 # ["cqip_pos": <L:gravsub.L15,0>]
	# .loc	2, 1199
 # ["exec_times": 0]
	# .loc	2, 1202
 # ["exec_times": 0]
	# .loc	2, 1204
 # ["exec_times": 0]
	li.d	$f20,0.000000000000000000e+00
 # ["exec_times": 0]
	# .loc	2, 1205
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
gravsub.L11:
	# .loc	2, 1206
 # ["exec_times": 0]
	la	$t2,448($sp)
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$t1,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	l.d	$f10,0($t5)
 # ["exec_times": 0]
	la	$t6,448($sp)
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	mult	$t1,$t7
	mflo	$t8
 # ["exec_times": 0]
	addu	$t9,$t6,$t8
 # ["exec_times": 0]
	l.d	$f16,0($t9)
 # ["exec_times": 0]
	mul.d	$f18,$f10,$f16
 # ["exec_times": 0]
	add.d	$f20,$f20,$f18
 # ["exec_times": 0]
	li	$a0,1
 # ["exec_times": 0]
	addu	$t1,$t1,$a0
 # ["exec_times": 0]
	li	$a1,3
 # ["exec_times": 0]
	sle	$a2,$a1,$t1
 # ["exec_times": 0]
	beqz	$a2,gravsub.L11
 # ["exec_times": 0]
	nop	
	cqip	gravsub.L15
 # ["cqip_pos": <L:gravsub.L15,0>]
gravsub.L15:
	pslice_entry	gravsub.L15
 # ["pslice_entry_pos": <L:gravsub.L15,0>]
	pslice_exit	gravsub.L15
 # ["pslice_exit_pos": <L:gravsub.L15,0>]
	spawn	gravsub.L16
 # ["cqip_pos": <L:gravsub.L16,0>]
	# .loc	2, 1205
 # ["exec_times": 0]
	# .loc	2, 1209
 # ["exec_times": 0]
	li.d	$f12,2.500000000000000486e-03
 # ["exec_times": 0]
	add.d	$f20,$f20,$f12
 # ["exec_times": 0]
	# .loc	2, 1210
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 0]
	mov.d	$f12,$f20
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 1211
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	addu	$v0,$s0,$a3
 # ["fields": "mass"]
 # ["exec_times": 0]
	l.d	$f14,0($v0)
 # ["exec_times": 0]
	div.d	$f0,$f14,$f0
 # ["exec_times": 0]
	# .loc	2, 1212
 # ["exec_times": 0]
	la	$v1,552($sp)
 # ["exec_times": 0]
	la	$t0,552($sp)
 # ["exec_times": 0]
	l.d	$f2,0($t0)
 # ["exec_times": 0]
	sub.d	$f4,$f2,$f0
 # ["exec_times": 0]
	s.d	$f4,0($v1)
 # ["exec_times": 0]
	# .loc	2, 1213
 # ["exec_times": 0]
	div.d	$f6,$f0,$f20
 # ["exec_times": 0]
	# .loc	2, 1214
 # ["exec_times": 0]
	# .loc	2, 1216
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
gravsub.L12:
	cqip	gravsub.L16
 # ["cqip_pos": <L:gravsub.L16,0>]
gravsub.L16:
	pslice_entry	gravsub.L16
 # ["pslice_entry_pos": <L:gravsub.L16,0>]
	pslice_exit	gravsub.L16
 # ["pslice_exit_pos": <L:gravsub.L16,0>]
	spawn	gravsub.L17
 # ["cqip_pos": <L:gravsub.L17,0>]
	# .loc	2, 1217
 # ["exec_times": 0]
	la	$t2,472($sp)
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$t1,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	la	$t6,448($sp)
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	mult	$t1,$t7
	mflo	$t8
 # ["exec_times": 0]
	addu	$t9,$t6,$t8
 # ["exec_times": 0]
	l.d	$f8,0($t9)
 # ["exec_times": 0]
	mul.d	$f10,$f8,$f6
 # ["exec_times": 0]
	s.d	$f10,0($t5)
 # ["exec_times": 0]
	li	$a0,1
 # ["exec_times": 0]
	addu	$t1,$t1,$a0
 # ["exec_times": 0]
	li	$a1,3
 # ["exec_times": 0]
	sle	$a2,$a1,$t1
 # ["exec_times": 0]
	beqz	$a2,gravsub.L12
 # ["exec_times": 0]
	nop	
	cqip	gravsub.L17
 # ["cqip_pos": <L:gravsub.L17,0>]
gravsub.L17:
	pslice_entry	gravsub.L17
 # ["pslice_entry_pos": <L:gravsub.L17,0>]
	pslice_exit	gravsub.L17
 # ["pslice_exit_pos": <L:gravsub.L17,0>]
	# .loc	2, 1216
 # ["exec_times": 0]
	# .loc	2, 1219
 # ["exec_times": 0]
	# .loc	2, 1221
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 0]
gravsub.L13:
	# .loc	2, 1222
 # ["exec_times": 0]
	la	$v0,560($sp)
 # ["exec_times": 0]
	li	$v1,8
 # ["exec_times": 0]
	mult	$a3,$v1
	mflo	$t0
 # ["exec_times": 0]
	addu	$t1,$v0,$t0
 # ["exec_times": 0]
	la	$t2,560($sp)
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$a3,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	l.d	$f16,0($t5)
 # ["exec_times": 0]
	la	$t6,472($sp)
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	mult	$a3,$t7
	mflo	$t8
 # ["exec_times": 0]
	addu	$t9,$t6,$t8
 # ["exec_times": 0]
	l.d	$f18,0($t9)
 # ["exec_times": 0]
	add.d	$f12,$f16,$f18
 # ["exec_times": 0]
	s.d	$f12,0($t1)
 # ["exec_times": 0]
	li	$a0,1
 # ["exec_times": 0]
	addu	$a3,$a3,$a0
 # ["exec_times": 0]
	li	$a1,3
 # ["exec_times": 0]
	sle	$a2,$a1,$a3
 # ["exec_times": 0]
	beqz	$a2,gravsub.L13
 # ["exec_times": 0]
	nop	
	# .loc	2, 1221
 # ["exec_times": 0]
	# .loc	2, 1225
 # ["exec_times": 0]
	# .loc	2, 1092
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$a3,520($sp)
 # ["struct alignment": 64]
	la	$v0,0($s1)
	lw	$v1,0($a3)
	lw	$t0,4($a3)
	lw	$t1,8($a3)
	sw	$v1,0($v0)
	sw	$t0,4($v0)
	sw	$t1,8($v0)
	lw	$t2,12($a3)
	lw	$t3,16($a3)
	lw	$t4,20($a3)
	sw	$t2,12($v0)
	sw	$t3,16($v0)
	sw	$t4,20($v0)
	lw	$t5,24($a3)
	lw	$t6,28($a3)
	lw	$t7,32($a3)
	sw	$t5,24($v0)
	sw	$t6,28($v0)
	sw	$t7,32($v0)
	lw	$t8,36($a3)
	lw	$t9,40($a3)
	lw	$a0,44($a3)
	sw	$t8,36($v0)
	sw	$t9,40($v0)
	sw	$a0,44($v0)
	lw	$a1,48($a3)
	lw	$a2,52($a3)
	lw	$v1,56($a3)
	sw	$a1,48($v0)
	sw	$a2,52($v0)
	sw	$v1,56($v0)
	lw	$v1,60($a3)
	sw	$v1,60($v0)
	# END structure move
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	l.d	$f20,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	gravsub 
	.text	
	.align	2
	.align	2
	.globl	intcoord
	# .loc	2, 1440
	.ent	intcoord 
intcoord:
	spawn	intcoord.headerspawn
 # ["header/trailer":]
	la	$sp,-520($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -520
 # ["header/trailer":]
	s.d	$f20,8($sp)
 # ["header/trailer":]
	.fmask	0x00100000, -520
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 520, $31
 # ["header/trailer":]
	cqip	intcoord.headerspawn
 # ["header/trailer":]
intcoord.headerspawn:
 # ["header/trailer":]
	pslice_entry	intcoord.headerspawn
 # ["header/trailer":]
	la	$sp,-520($sp)
 # ["header/trailer":]
	pslice_exit	intcoord.headerspawn
	spawn	intcoord.L22
 # ["cqip_pos": <L:intcoord.L22,0>]
	# .loc	2, 1448
 # ["exec_times": 0]
	la	$a3,492($sp)
 # ["exec_times": 64]
	li	$v0,1
 # ["exec_times": 64]
	sh	$v0,0($a3)
 # ["exec_times": 64]
	# .loc	2, 1449
 # ["exec_times": 0]
	li	$v0,24
 # ["exec_times": 64]
	addu	$v1,$a2,$v0
 # ["fields": "rsize"]
 # ["exec_times": 64]
	l.d	$f20,0($v1)
 # ["exec_times": 64]
	# .loc	2, 1451
 # ["exec_times": 0]
	la	$t0,448($sp)
 # ["exec_times": 64]
	li	$t1,16
 # ["exec_times": 64]
	addu	$t8,$a1,$t1
 # ["fields": "pos"]
 # ["exec_times": 64]
	l.d	$f18,0($t8)
 # ["exec_times": 64]
	s.d	$f18,0($t0)
 # ["exec_times": 64]
	# .loc	2, 1452
 # ["exec_times": 0]
	la	$t2,456($sp)
 # ["exec_times": 64]
	li	$t3,24
 # ["exec_times": 64]
	addu	$t4,$a1,$t3
 # ["exec_times": 64]
	l.d	$f12,0($t4)
 # ["exec_times": 64]
	s.d	$f12,0($t2)
 # ["exec_times": 64]
	# .loc	2, 1453
 # ["exec_times": 0]
	la	$t5,464($sp)
 # ["exec_times": 64]
	li	$t6,32
 # ["exec_times": 64]
	addu	$t7,$a1,$t6
 # ["exec_times": 64]
	l.d	$f14,0($t7)
 # ["exec_times": 64]
	s.d	$f14,0($t5)
 # ["exec_times": 64]
	# .loc	2, 1457
 # ["exec_times": 0]
	la	$t8,448($sp)
 # ["exec_times": 64]
	l.d	$f0,0($t8)
 # ["exec_times": 64]
	move	$t9,$zero
 # ["exec_times": 64]
	addu	$t7,$a2,$t9
 # ["fields": "rmin"]
 # ["exec_times": 64]
	l.d	$f2,0($t7)
 # ["exec_times": 64]
	sub.d	$f4,$f0,$f2
 # ["exec_times": 64]
	div.d	$f6,$f4,$f20
 # ["exec_times": 64]
	# .loc	2, 1458
 # ["exec_times": 0]
	li.d	$f8,0.000000000000000000e+00
 # ["exec_times": 64]
	li	$t9,1
	c.le.d	$f8,$f6
 # ["exec_times": 64]
	bc1t	intcoord.L13
	nop	
	move	$t9,$zero
intcoord.L13:
	cqip	intcoord.L22
 # ["cqip_pos": <L:intcoord.L22,0>]
intcoord.L22:
	pslice_entry	intcoord.L22
 # ["pslice_entry_pos": <L:intcoord.L22,0>]
	pslice_exit	intcoord.L22
 # ["pslice_exit_pos": <L:intcoord.L22,0>]
	spawn	intcoord.L23
 # ["cqip_pos": <L:intcoord.L23,0>]
	bnez	$t9,intcoord.L1
 # ["exec_times": 64]
 # ["instr_profile": 64 64]
	nop	
intcoord.L19:
	j	intcoord.__done7
 # ["exec_times": 0]
	nop	
intcoord.L1:
	li.d	$f10,1.000000000000000000e+00
 # ["exec_times": 64]
	li	$t9,1
	c.lt.d	$f6,$f10
 # ["exec_times": 64]
	bc1t	intcoord.L14
	nop	
	move	$t9,$zero
intcoord.L14:
intcoord.__done7:
	beqz	$t9,intcoord.L2
 # ["exec_times": 64]
 # ["instr_profile": 64 0]
	nop	
	# .loc	2, 1459
 # ["exec_times": 0]
	la	$a1,480($sp)
 # ["exec_times": 64]
	li.d	$f16,1.073741824000000000e+09
 # ["exec_times": 64]
	mul.d	$f18,$f16,$f6
 # ["exec_times": 64]
	cvt.w.d	$f12,$f18
	mfc1	$a3,$f12
 # ["exec_times": 64]
	mtc1	$a3,$f14
	cvt.d.w	$f0,$f14
 # ["exec_times": 64]
	cvt.w.d	$f2,$f0
	mfc1	$a3,$f2
 # ["exec_times": 64]
	sw	$a3,0($a1)
 # ["exec_times": 64]
	j	intcoord.__done8
 # ["exec_times": 64]
 # ["instr_profile": 64 64]
	nop	
intcoord.L2:
	# .loc	2, 1461
 # ["exec_times": 0]
	la	$a3,492($sp)
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	sh	$v0,0($a3)
 # ["exec_times": 0]
intcoord.__done8:
	cqip	intcoord.L23
 # ["cqip_pos": <L:intcoord.L23,0>]
intcoord.L23:
	pslice_entry	intcoord.L23
 # ["pslice_entry_pos": <L:intcoord.L23,0>]
	move	$t9,$zero
	pslice_exit	intcoord.L23
 # ["pslice_exit_pos": <L:intcoord.L23,0>]
	# .loc	2, 1464
 # ["exec_times": 0]
	la	$v1,456($sp)
 # ["exec_times": 64]
	l.d	$f4,0($v1)
 # ["exec_times": 64]
	li	$t0,8
 # ["exec_times": 64]
	addu	$t1,$a2,$t0
 # ["exec_times": 64]
	l.d	$f6,0($t1)
 # ["exec_times": 64]
	sub.d	$f8,$f4,$f6
 # ["exec_times": 64]
	div.d	$f6,$f8,$f20
 # ["exec_times": 64]
	# .loc	2, 1465
 # ["exec_times": 0]
	li.d	$f10,0.000000000000000000e+00
 # ["exec_times": 64]
	li	$a1,1
	c.le.d	$f10,$f6
 # ["exec_times": 64]
	bc1t	intcoord.L15
	nop	
	move	$a1,$zero
intcoord.L15:
	bnez	$a1,intcoord.L3
 # ["exec_times": 64]
 # ["instr_profile": 64 62]
	nop	
intcoord.L20:
	j	intcoord.__done9
 # ["exec_times": 2]
 # ["instr_profile": 2 2]
	nop	
intcoord.L3:
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 62]
	li	$a1,1
	c.lt.d	$f6,$f16
 # ["exec_times": 62]
	bc1t	intcoord.L16
	nop	
	move	$a1,$zero
intcoord.L16:
intcoord.__done9:
	beqz	$a1,intcoord.L4
 # ["exec_times": 64]
 # ["instr_profile": 64 2]
	nop	
	# .loc	2, 1466
 # ["exec_times": 0]
	la	$t2,484($sp)
 # ["exec_times": 62]
	li.d	$f18,1.073741824000000000e+09
 # ["exec_times": 62]
	mul.d	$f12,$f18,$f6
 # ["exec_times": 62]
	cvt.w.d	$f14,$f12
	mfc1	$t3,$f14
 # ["exec_times": 62]
	mtc1	$t3,$f0
	cvt.d.w	$f2,$f0
 # ["exec_times": 62]
	cvt.w.d	$f4,$f2
	mfc1	$t4,$f4
 # ["exec_times": 62]
	sw	$t4,0($t2)
 # ["exec_times": 62]
	j	intcoord.__done10
 # ["exec_times": 62]
 # ["instr_profile": 62 62]
	nop	
intcoord.L4:
	# .loc	2, 1468
 # ["exec_times": 0]
	la	$t5,492($sp)
 # ["exec_times": 2]
	move	$t6,$zero
 # ["exec_times": 2]
	sh	$t6,0($t5)
 # ["exec_times": 2]
intcoord.__done10:
	# .loc	2, 1471
 # ["exec_times": 0]
	la	$t7,464($sp)
 # ["exec_times": 64]
	l.d	$f6,0($t7)
 # ["exec_times": 64]
	li	$t8,16
 # ["exec_times": 64]
	addu	$t9,$a2,$t8
 # ["exec_times": 64]
	l.d	$f8,0($t9)
 # ["exec_times": 64]
	sub.d	$f10,$f6,$f8
 # ["exec_times": 64]
	div.d	$f6,$f10,$f20
 # ["exec_times": 64]
	# .loc	2, 1472
 # ["exec_times": 0]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 64]
	li	$a1,1
	c.le.d	$f16,$f6
 # ["exec_times": 64]
	bc1t	intcoord.L17
	nop	
	move	$a1,$zero
intcoord.L17:
	bnez	$a1,intcoord.L5
 # ["exec_times": 64]
 # ["instr_profile": 64 63]
	nop	
intcoord.L21:
	j	intcoord.__done11
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
intcoord.L5:
	li.d	$f18,1.000000000000000000e+00
 # ["exec_times": 63]
	li	$a1,1
	c.lt.d	$f6,$f18
 # ["exec_times": 63]
	bc1t	intcoord.L18
	nop	
	move	$a1,$zero
intcoord.L18:
intcoord.__done11:
	beqz	$a1,intcoord.L6
 # ["exec_times": 64]
 # ["instr_profile": 64 1]
	nop	
	# .loc	2, 1473
 # ["exec_times": 0]
	la	$a1,488($sp)
 # ["exec_times": 63]
	li.d	$f12,1.073741824000000000e+09
 # ["exec_times": 63]
	mul.d	$f14,$f12,$f6
 # ["exec_times": 63]
	cvt.w.d	$f0,$f14
	mfc1	$a2,$f0
 # ["exec_times": 63]
	mtc1	$a2,$f2
	cvt.d.w	$f4,$f2
 # ["exec_times": 63]
	cvt.w.d	$f6,$f4
	mfc1	$a2,$f6
 # ["exec_times": 63]
	sw	$a2,0($a1)
 # ["exec_times": 63]
	j	intcoord.__done12
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
intcoord.L6:
	# .loc	2, 1475
 # ["exec_times": 0]
	la	$a3,492($sp)
 # ["exec_times": 1]
	move	$v0,$zero
 # ["exec_times": 1]
	sh	$v0,0($a3)
 # ["exec_times": 1]
intcoord.__done12:
	# .loc	2, 1479
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$v1,480($sp)
 # ["struct alignment": 32]
	la	$t0,0($a0)
	lw	$t1,0($v1)
	lw	$t2,4($v1)
	lw	$t3,8($v1)
	sw	$t1,0($t0)
	sw	$t2,4($t0)
	sw	$t3,8($t0)
	lw	$t4,12($v1)
	sw	$t4,12($t0)
	# END structure move
	lw	$ra,4($sp)
 # ["header/trailer":]
	l.d	$f20,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 64]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	intcoord 
	.text	
	.align	2
	.align	2
	.globl	computegrav
	# .loc	2, 868
	.ent	computegrav 
computegrav:
	spawn	computegrav.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
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
	.mask	0x80070000, -160
 # ["header/trailer":]
	s.d	$f20,24($sp)
 # ["header/trailer":]
	s.d	$f22,32($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -160
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 160, $31
 # ["header/trailer":]
	cqip	computegrav.headerspawn
 # ["header/trailer":]
computegrav.headerspawn:
 # ["header/trailer":]
	pslice_entry	computegrav.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
 # ["header/trailer":]
	pslice_exit	computegrav.headerspawn
	spawn	computegrav.spawntail0
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 879
 # ["exec_times": 0]
	li	$t3,24
 # ["exec_times": 0]
	addu	$t4,$s1,$t3
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f20,0($t4)
 # ["exec_times": 0]
	# .loc	2, 881
 # ["exec_times": 0]
	li.d	$f22,6.250000000000000347e-03
 # ["exec_times": 0]
	# .loc	2, 884
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	li	$t6,1
 # ["exec_times": 0]
	lw	$t7,NumNodes
	subu	$t8,$t7,$t6
 # ["exec_times": 0]
	sle	$t9,$t5,$t8
 # ["exec_times": 0]
	beqz	$t9,computegrav.L3
 # ["exec_times": 0]
	nop	
	li	$a0,1
 # ["exec_times": 0]
	lw	$a1,NumNodes
	subu	$s2,$a1,$a0
 # ["exec_times": 0]
computegrav.L4:
	# .loc	2, 885
 # ["exec_times": 0]
	li	$a2,32
 # ["exec_times": 0]
	addu	$a3,$s1,$a2
 # ["fields": "root"]
 # ["exec_times": 0]
	lw	$a2,0($a3)
 # ["exec_times": 0]
	# .loc	2, 886
 # ["exec_times": 0]
	li	$v0,292
 # ["exec_times": 0]
	addu	$t2,$s1,$v0
 # ["fields": "bodiesperproc"]
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 0]
	mult	$s2,$v1
	mflo	$t0
 # ["exec_times": 0]
	addu	$t1,$t2,$t0
 # ["exec_times": 0]
	lw	$a3,0($t1)
 # ["exec_times": 0]
	# .loc	2, 888
 # ["exec_times": 0]
	la	$t0,grav
 # ["exec_times": 0]
	mov.d	$f12,$f20
	move	$fp,$sp
	fst	$sp
	sw	$s0,-20($sp)
	s.d	$f22,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "grav"]
 # ["regs_used": 32 7 8]
	nop	
	li	$t2,-1
 # ["exec_times": 0]
	addu	$s2,$s2,$t2
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	slt	$t4,$s2,$t3
 # ["exec_times": 0]
	beqz	$t4,computegrav.L4
 # ["exec_times": 0]
	nop	
computegrav.L6:
	j	computegrav.__done5
 # ["exec_times": 0]
	nop	
computegrav.L3:
	li	$t5,1
 # ["exec_times": 0]
	lw	$t6,NumNodes
	subu	$s2,$t6,$t5
 # ["exec_times": 0]
computegrav.__done5:
	# .loc	2, 901
 # ["exec_times": 0]
	cqip	computegrav.spawntail0
computegrav.spawntail0:
	pslice_entry	computegrav.spawntail0
	pslice_exit	computegrav.spawntail0
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	l.d	$f20,24($sp)
 # ["header/trailer":]
	l.d	$f22,32($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	computegrav 
	.text	
	.align	2
	.align	2
	.globl	maketree
	# .loc	2, 1192
	.ent	maketree 
maketree:
	spawn	maketree.headerspawn
 # ["header/trailer":]
	la	$sp,-264($sp)
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
	.mask	0x801f0000, -264
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 264, $31
 # ["header/trailer":]
	cqip	maketree.headerspawn
 # ["header/trailer":]
maketree.headerspawn:
 # ["header/trailer":]
	pslice_entry	maketree.headerspawn
 # ["header/trailer":]
	la	$sp,-264($sp)
 # ["header/trailer":]
	pslice_exit	maketree.headerspawn
	spawn	maketree.spawntail1
	lw	$s3,244($sp)
	move	$s2,$a0
	move	$s1,$a2
	move	$s0,$a3
	# .loc	2, 1199
 # ["exec_times": 0]
	li	$t8,32
 # ["exec_times": 0]
	addu	$t9,$s1,$t8
 # ["fields": "root"]
 # ["exec_times": 0]
	la	$a0,0($zero)
 # ["exec_times": 0]
	sw	$a0,0($t9)
 # ["exec_times": 0]
	# .loc	2, 1200
 # ["exec_times": 0]
	sw	$a1,nbody
	# .loc	2, 1203
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	li	$a2,1
 # ["exec_times": 0]
	lw	$a3,NumNodes
	subu	$v0,$a3,$a2
 # ["exec_times": 0]
	sle	$v1,$a1,$v0
 # ["exec_times": 0]
	beqz	$v1,maketree.L8
 # ["exec_times": 0]
	nop	
	li	$t0,1
 # ["exec_times": 0]
	lw	$t1,NumNodes
	subu	$s4,$t1,$t0
 # ["exec_times": 0]
maketree.L9:
	# .loc	2, 1204
 # ["exec_times": 0]
	li	$t2,292
 # ["exec_times": 0]
	addu	$t7,$s1,$t2
 # ["fields": "bodiesperproc"]
 # ["exec_times": 0]
	li	$t3,4
 # ["exec_times": 0]
	mult	$s4,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t7,$t4
 # ["exec_times": 0]
	lw	$s2,0($t5)
 # ["exec_times": 0]
	# .loc	2, 1210
 # ["exec_times": 0]
	# .loc	2, 1210
 # ["exec_times": 0]
	la	$t6,0($zero)
 # ["exec_times": 0]
	sne	$t7,$s2,$t6
 # ["exec_times": 0]
	beqz	$t7,maketree.L6
 # ["exec_times": 0]
	nop	
maketree.L5:
	# .loc	2, 1211
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 0]
	addu	$t9,$s2,$t8
 # ["fields": "mass"]
 # ["exec_times": 0]
	l.d	$f4,0($t9)
 # ["exec_times": 0]
	li.d	$f6,0.000000000000000000e+00
 # ["exec_times": 0]
	move	$a0,$zero
	c.seq.d	$f4,$f6
 # ["exec_times": 0]
	bc1t	maketree.L11
	nop	
	li	$a0,1
maketree.L11:
	beqz	$a0,maketree.L7
 # ["exec_times": 0]
	nop	
	# .loc	2, 1212
 # ["exec_times": 0]
	la	$t0,expandbox
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s1
	move	$a2,$s0
	move	$a3,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "expandbox"]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 1213
 # ["exec_times": 0]
	la	$t0,intcoord
 # ["exec_times": 0]
	la	$a0,216($sp)
	move	$a1,$s2
	move	$a2,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "intcoord"]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 1214
 # ["exec_times": 0]
	li	$a1,32
 # ["exec_times": 0]
	addu	$a2,$s1,$a1
 # ["fields": "root"]
 # ["exec_times": 0]
	lw	$v0,0($a2)
 # ["exec_times": 0]
	# .loc	2, 1215
 # ["exec_times": 0]
	la	$t0,loadtree
 # ["exec_times": 0]
	li	$v1,536870912
 # ["exec_times": 0]
	move	$a0,$s2
	# BEGIN structure move in genCall
	la	$t1,216($sp)
	lw	$a1,0($t1)
	lw	$a2,4($t1)
	lw	$a3,8($t1)
	move	$fp,$sp
	fst	$sp
	la	$t2,0($sp)
	lw	$t1,12($t1)
	sw	$t1,-4($t2)
	# END structure move in genCall
	sw	$v0,-24($sp)
	sw	$v1,-28($sp)
	sw	$s1,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "loadtree"]
 # ["struct alignment": 1 32]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 1218
 # ["exec_times": 0]
	li	$t1,32
 # ["exec_times": 0]
	addu	$t2,$s1,$t1
 # ["fields": "root"]
 # ["exec_times": 0]
	sw	$v0,0($t2)
 # ["exec_times": 0]
maketree.L7:
	# .loc	2, 1210
 # ["exec_times": 0]
	li	$t3,132
 # ["exec_times": 0]
	addu	$t4,$s2,$t3
 # ["fields": "proc_next"]
 # ["exec_times": 0]
	lw	$s2,0($t4)
 # ["exec_times": 0]
	# .loc	2, 1210
 # ["exec_times": 0]
	la	$t5,0($zero)
 # ["exec_times": 0]
	sne	$t6,$s2,$t5
 # ["exec_times": 0]
	bnez	$t6,maketree.L5
 # ["exec_times": 0]
	nop	
maketree.L6:
	li	$t7,-1
 # ["exec_times": 0]
	addu	$s4,$s4,$t7
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	slt	$t9,$s4,$t8
 # ["exec_times": 0]
	beqz	$t9,maketree.L9
 # ["exec_times": 0]
	nop	
maketree.L12:
	j	maketree.__done10
 # ["exec_times": 0]
	nop	
maketree.L8:
	li	$a0,1
 # ["exec_times": 0]
	lw	$a1,NumNodes
	subu	$s4,$a1,$a0
 # ["exec_times": 0]
maketree.__done10:
	# .loc	2, 1227
 # ["exec_times": 0]
	la	$t0,hackcofm
 # ["exec_times": 0]
	li	$a2,32
 # ["exec_times": 0]
	addu	$a3,$s1,$a2
 # ["fields": "root"]
 # ["exec_times": 0]
	lw	$a0,0($a3)
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "hackcofm"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 1231
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 0]
	addu	$v1,$s1,$v0
 # ["fields": "root"]
 # ["exec_times": 0]
	lw	$v0,0($v1)
 # ["exec_times": 0]
	cqip	maketree.spawntail1
maketree.spawntail1:
	pslice_entry	maketree.spawntail1
	pslice_exit	maketree.spawntail1
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
 # ["exec_times": 0]
 # ["instr_ret": t:g58]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	maketree 
	.text	
	.align	2
	.align	2
	.globl	vp
	# .loc	2, 929
	.ent	vp 
vp:
	spawn	vp.headerspawn
 # ["header/trailer":]
	la	$sp,-2208($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -2208
 # ["header/trailer":]
	s.d	$f20,16($sp)
 # ["header/trailer":]
	s.d	$f22,24($sp)
 # ["header/trailer":]
	s.d	$f24,32($sp)
 # ["header/trailer":]
	.fmask	0x01500000, -2208
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 2208, $31
 # ["header/trailer":]
	cqip	vp.headerspawn
 # ["header/trailer":]
vp.headerspawn:
 # ["header/trailer":]
	pslice_entry	vp.headerspawn
 # ["header/trailer":]
	la	$sp,-2208($sp)
 # ["header/trailer":]
	pslice_exit	vp.headerspawn
	spawn	vp.spawntail2
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 933
 # ["exec_times": 0]
	li.d	$f22,6.250000000000000347e-03
 # ["exec_times": 0]
	# .loc	2, 936
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 0]
	sne	$t1,$s1,$t0
 # ["exec_times": 0]
	beqz	$t1,vp.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 937
 # ["exec_times": 0]
vp.L1:
	# .loc	2, 941
 # ["exec_times": 0]
	# .loc	2, 941
 # ["exec_times": 0]
	la	$t2,0($zero)
 # ["exec_times": 0]
	sne	$t3,$s1,$t2
 # ["exec_times": 0]
	beqz	$t3,vp.L5
 # ["exec_times": 0]
	nop	
vp.L4:
	# .loc	2, 945
 # ["exec_times": 0]
	# .loc	2, 947
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
vp.L67:
	# .loc	2, 948
 # ["exec_times": 0]
	la	$t5,2168($sp)
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 0]
	mult	$t4,$t6
	mflo	$t7
 # ["exec_times": 0]
	addu	$t8,$t5,$t7
 # ["exec_times": 0]
	li	$t9,96
 # ["exec_times": 0]
	addu	$t2,$s1,$t9
 # ["fields": "new_acc"]
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 0]
	mult	$t4,$a0
	mflo	$a1
 # ["exec_times": 0]
	addu	$a2,$t2,$a1
 # ["exec_times": 0]
	l.d	$f12,0($a2)
 # ["exec_times": 0]
	s.d	$f12,0($t8)
 # ["exec_times": 0]
	li	$a3,1
 # ["exec_times": 0]
	addu	$t4,$t4,$a3
 # ["exec_times": 0]
	li	$v0,3
 # ["exec_times": 0]
	sle	$v1,$v0,$t4
 # ["exec_times": 0]
	beqz	$v1,vp.L67
 # ["exec_times": 0]
	nop	
	# .loc	2, 947
 # ["exec_times": 0]
	# .loc	2, 950
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 0]
	slt	$t1,$t0,$s0
 # ["exec_times": 0]
	beqz	$t1,vp.L8
 # ["exec_times": 0]
	nop	
	# .loc	2, 951
 # ["exec_times": 0]
	# .loc	2, 953
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 0]
vp.L68:
	# .loc	2, 954
 # ["exec_times": 0]
	la	$t3,2144($sp)
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 0]
	mult	$t2,$t4
	mflo	$t5
 # ["exec_times": 0]
	addu	$t6,$t3,$t5
 # ["exec_times": 0]
	la	$t7,2168($sp)
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 0]
	mult	$t2,$t8
	mflo	$t9
 # ["exec_times": 0]
	addu	$a0,$t7,$t9
 # ["exec_times": 0]
	l.d	$f14,0($a0)
 # ["exec_times": 0]
	li	$a1,72
 # ["exec_times": 0]
	addu	$t3,$s1,$a1
 # ["fields": "acc"]
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 0]
	mult	$t2,$a2
	mflo	$a3
 # ["exec_times": 0]
	addu	$v0,$t3,$a3
 # ["exec_times": 0]
	l.d	$f0,0($v0)
 # ["exec_times": 0]
	sub.d	$f2,$f14,$f0
 # ["exec_times": 0]
	s.d	$f2,0($t6)
 # ["exec_times": 0]
	li	$v1,1
 # ["exec_times": 0]
	addu	$t2,$t2,$v1
 # ["exec_times": 0]
	li	$t0,3
 # ["exec_times": 0]
	sle	$t1,$t0,$t2
 # ["exec_times": 0]
	beqz	$t1,vp.L68
 # ["exec_times": 0]
	nop	
	# .loc	2, 953
 # ["exec_times": 0]
	# .loc	2, 956
 # ["exec_times": 0]
	# .loc	2, 958
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 0]
vp.L69:
	# .loc	2, 959
 # ["exec_times": 0]
	la	$t3,2120($sp)
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 0]
	mult	$t2,$t4
	mflo	$t5
 # ["exec_times": 0]
	addu	$t6,$t3,$t5
 # ["exec_times": 0]
	la	$t7,2144($sp)
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 0]
	mult	$t2,$t8
	mflo	$t9
 # ["exec_times": 0]
	addu	$a0,$t7,$t9
 # ["exec_times": 0]
	l.d	$f4,0($a0)
 # ["exec_times": 0]
	mul.d	$f6,$f4,$f22
 # ["exec_times": 0]
	s.d	$f6,0($t6)
 # ["exec_times": 0]
	li	$a1,1
 # ["exec_times": 0]
	addu	$t2,$t2,$a1
 # ["exec_times": 0]
	li	$a2,3
 # ["exec_times": 0]
	sle	$a3,$a2,$t2
 # ["exec_times": 0]
	beqz	$a3,vp.L69
 # ["exec_times": 0]
	nop	
	# .loc	2, 958
 # ["exec_times": 0]
	# .loc	2, 962
 # ["exec_times": 0]
	# .loc	2, 964
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
vp.L70:
	# .loc	2, 965
 # ["exec_times": 0]
	la	$v1,2120($sp)
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 0]
	mult	$v0,$t0
	mflo	$t1
 # ["exec_times": 0]
	addu	$t2,$v1,$t1
 # ["exec_times": 0]
	li	$t3,48
 # ["exec_times": 0]
	addu	$t4,$s1,$t3
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	mult	$v0,$t5
	mflo	$t5
 # ["exec_times": 0]
	addu	$t6,$t4,$t5
 # ["exec_times": 0]
	l.d	$f8,0($t6)
 # ["exec_times": 0]
	la	$t7,2120($sp)
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 0]
	mult	$v0,$t8
	mflo	$t9
 # ["exec_times": 0]
	addu	$a0,$t7,$t9
 # ["exec_times": 0]
	l.d	$f10,0($a0)
 # ["exec_times": 0]
	add.d	$f16,$f8,$f10
 # ["exec_times": 0]
	s.d	$f16,0($t2)
 # ["exec_times": 0]
	li	$a1,1
 # ["exec_times": 0]
	addu	$v0,$v0,$a1
 # ["exec_times": 0]
	li	$a2,3
 # ["exec_times": 0]
	sle	$a3,$a2,$v0
 # ["exec_times": 0]
	beqz	$a3,vp.L70
 # ["exec_times": 0]
	nop	
	# .loc	2, 964
 # ["exec_times": 0]
	# .loc	2, 967
 # ["exec_times": 0]
	# .loc	2, 969
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
vp.L71:
	# .loc	2, 970
 # ["exec_times": 0]
	li	$v1,48
 # ["exec_times": 0]
	addu	$t5,$s1,$v1
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 0]
	mult	$v0,$t0
	mflo	$t1
 # ["exec_times": 0]
	addu	$t2,$t5,$t1
 # ["exec_times": 0]
	la	$t3,2120($sp)
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 0]
	mult	$v0,$t4
	mflo	$t5
 # ["exec_times": 0]
	addu	$t6,$t3,$t5
 # ["exec_times": 0]
	l.d	$f18,0($t6)
 # ["exec_times": 0]
	s.d	$f18,0($t2)
 # ["exec_times": 0]
	li	$t7,1
 # ["exec_times": 0]
	addu	$v0,$v0,$t7
 # ["exec_times": 0]
	li	$t8,3
 # ["exec_times": 0]
	sle	$t9,$t8,$v0
 # ["exec_times": 0]
	beqz	$t9,vp.L71
 # ["exec_times": 0]
	nop	
	# .loc	2, 969
 # ["exec_times": 0]
	# .loc	2, 971
 # ["exec_times": 0]
vp.L8:
	# .loc	2, 975
 # ["exec_times": 0]
	li	$a0,16
 # ["exec_times": 0]
	addu	$t6,$s1,$a0
 # ["fields": "pos"]
 # ["exec_times": 0]
	l.d	$f8,0($t6)
 # ["exec_times": 0]
	# .loc	2, 976
 # ["exec_times": 0]
	li	$a1,24
 # ["exec_times": 0]
	addu	$a2,$s1,$a1
 # ["exec_times": 0]
	l.d	$f20,0($a2)
 # ["exec_times": 0]
	# .loc	2, 977
 # ["exec_times": 0]
	li	$a3,32
 # ["exec_times": 0]
	addu	$v0,$s1,$a3
 # ["exec_times": 0]
	l.d	$f24,0($v0)
 # ["exec_times": 0]
	# .loc	2, 978
 # ["exec_times": 0]
	# .loc	2, 990
 # ["exec_times": 0]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$v1,1
	c.lt.d	$f12,$f8
 # ["exec_times": 0]
	bc1t	vp.L79
	nop	
	move	$v1,$zero
vp.L79:
	beqz	$v1,vp.L20
 # ["exec_times": 0]
	nop	
vp.L103:
	j	vp.__done1
 # ["exec_times": 0]
	nop	
vp.L20:
	neg.d	$f8,$f8
 # ["exec_times": 0]
vp.__done1:
	li.d	$f14,1.000000000000000000e+01
 # ["exec_times": 0]
	li	$t0,1
	c.lt.d	$f8,$f14
 # ["exec_times": 0]
	bc1t	vp.L80
	nop	
	move	$t0,$zero
vp.L80:
	move	$t1,$zero
 # ["exec_times": 0]
	seq	$t2,$t0,$t1
 # ["exec_times": 0]
	beqz	$t2,vp.L21
 # ["exec_times": 0]
	nop	
	# .loc	2, 991
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,96
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 992
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L21:
	# .loc	2, 994
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t3,1
	c.lt.d	$f0,$f20
 # ["exec_times": 0]
	bc1t	vp.L81
	nop	
	move	$t3,$zero
vp.L81:
	beqz	$t3,vp.L22
 # ["exec_times": 0]
	nop	
vp.L104:
	j	vp.__done2
 # ["exec_times": 0]
	nop	
vp.L22:
	neg.d	$f20,$f20
 # ["exec_times": 0]
vp.__done2:
	li.d	$f2,1.000000000000000000e+01
 # ["exec_times": 0]
	li	$t4,1
	c.lt.d	$f20,$f2
 # ["exec_times": 0]
	bc1t	vp.L82
	nop	
	move	$t4,$zero
vp.L82:
	move	$t5,$zero
 # ["exec_times": 0]
	seq	$t6,$t4,$t5
 # ["exec_times": 0]
	beqz	$t6,vp.L23
 # ["exec_times": 0]
	nop	
	# .loc	2, 995
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,95
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 996
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L23:
	# .loc	2, 998
 # ["exec_times": 0]
	li.d	$f4,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t7,1
	c.lt.d	$f4,$f24
 # ["exec_times": 0]
	bc1t	vp.L83
	nop	
	move	$t7,$zero
vp.L83:
	beqz	$t7,vp.L24
 # ["exec_times": 0]
	nop	
vp.L105:
	j	vp.__done3
 # ["exec_times": 0]
	nop	
vp.L24:
	neg.d	$f24,$f24
 # ["exec_times": 0]
vp.__done3:
	li.d	$f6,1.000000000000000000e+01
 # ["exec_times": 0]
	li	$t8,1
	c.lt.d	$f24,$f6
 # ["exec_times": 0]
	bc1t	vp.L84
	nop	
	move	$t8,$zero
vp.L84:
	move	$t9,$zero
 # ["exec_times": 0]
	seq	$a0,$t8,$t9
 # ["exec_times": 0]
	beqz	$a0,vp.L25
 # ["exec_times": 0]
	nop	
	# .loc	2, 999
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,94
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1000
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L25:
	# .loc	2, 1001
 # ["exec_times": 0]
	# .loc	2, 1006
 # ["exec_times": 0]
	# .loc	2, 1008
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
vp.L72:
	# .loc	2, 1009
 # ["exec_times": 0]
	li	$a2,72
 # ["exec_times": 0]
	addu	$t7,$s1,$a2
 # ["fields": "acc"]
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	mult	$a1,$a3
	mflo	$v0
 # ["exec_times": 0]
	addu	$v1,$t7,$v0
 # ["exec_times": 0]
	la	$t0,2168($sp)
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 0]
	mult	$a1,$t1
	mflo	$t2
 # ["exec_times": 0]
	addu	$t3,$t0,$t2
 # ["exec_times": 0]
	l.d	$f8,0($t3)
 # ["exec_times": 0]
	s.d	$f8,0($v1)
 # ["exec_times": 0]
	li	$t4,1
 # ["exec_times": 0]
	addu	$a1,$a1,$t4
 # ["exec_times": 0]
	li	$t5,3
 # ["exec_times": 0]
	sle	$t6,$t5,$a1
 # ["exec_times": 0]
	beqz	$t6,vp.L72
 # ["exec_times": 0]
	nop	
	# .loc	2, 1008
 # ["exec_times": 0]
	# .loc	2, 1010
 # ["exec_times": 0]
	# .loc	2, 1013
 # ["exec_times": 0]
	li	$t7,72
 # ["exec_times": 0]
	addu	$t8,$s1,$t7
 # ["fields": "acc"]
 # ["exec_times": 0]
	l.d	$f10,0($t8)
 # ["exec_times": 0]
	# .loc	2, 1014
 # ["exec_times": 0]
	li	$t8,80
 # ["exec_times": 0]
	addu	$t9,$s1,$t8
 # ["exec_times": 0]
	l.d	$f20,0($t9)
 # ["exec_times": 0]
	# .loc	2, 1015
 # ["exec_times": 0]
	li	$a0,88
 # ["exec_times": 0]
	addu	$a1,$s1,$a0
 # ["exec_times": 0]
	l.d	$f24,0($a1)
 # ["exec_times": 0]
	# .loc	2, 1016
 # ["exec_times": 0]
	# .loc	2, 1028
 # ["exec_times": 0]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$a2,1
	c.lt.d	$f16,$f10
 # ["exec_times": 0]
	bc1t	vp.L85
	nop	
	move	$a2,$zero
vp.L85:
	beqz	$a2,vp.L31
 # ["exec_times": 0]
	nop	
vp.L106:
	j	vp.__done4
 # ["exec_times": 0]
	nop	
vp.L31:
	neg.d	$f10,$f10
 # ["exec_times": 0]
vp.__done4:
	li.d	$f16,1.000000000000000000e+04
 # ["exec_times": 0]
	li	$a3,1
	c.lt.d	$f10,$f16
 # ["exec_times": 0]
	bc1t	vp.L86
	nop	
	move	$a3,$zero
vp.L86:
	move	$v0,$zero
 # ["exec_times": 0]
	seq	$v1,$a3,$v0
 # ["exec_times": 0]
	beqz	$v1,vp.L32
 # ["exec_times": 0]
	nop	
	# .loc	2, 1029
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,86
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1030
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L32:
	# .loc	2, 1032
 # ["exec_times": 0]
	li.d	$f18,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t0,1
	c.lt.d	$f18,$f20
 # ["exec_times": 0]
	bc1t	vp.L87
	nop	
	move	$t0,$zero
vp.L87:
	beqz	$t0,vp.L33
 # ["exec_times": 0]
	nop	
vp.L107:
	j	vp.__done5
 # ["exec_times": 0]
	nop	
vp.L33:
	neg.d	$f20,$f20
 # ["exec_times": 0]
vp.__done5:
	li.d	$f12,1.000000000000000000e+04
 # ["exec_times": 0]
	li	$t1,1
	c.lt.d	$f20,$f12
 # ["exec_times": 0]
	bc1t	vp.L88
	nop	
	move	$t1,$zero
vp.L88:
	move	$t2,$zero
 # ["exec_times": 0]
	seq	$t3,$t1,$t2
 # ["exec_times": 0]
	beqz	$t3,vp.L34
 # ["exec_times": 0]
	nop	
	# .loc	2, 1033
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,85
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1034
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L34:
	# .loc	2, 1036
 # ["exec_times": 0]
	li.d	$f14,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t4,1
	c.lt.d	$f14,$f24
 # ["exec_times": 0]
	bc1t	vp.L89
	nop	
	move	$t4,$zero
vp.L89:
	beqz	$t4,vp.L35
 # ["exec_times": 0]
	nop	
vp.L108:
	j	vp.__done6
 # ["exec_times": 0]
	nop	
vp.L35:
	neg.d	$f24,$f24
 # ["exec_times": 0]
vp.__done6:
	li.d	$f0,1.000000000000000000e+04
 # ["exec_times": 0]
	li	$t5,1
	c.lt.d	$f24,$f0
 # ["exec_times": 0]
	bc1t	vp.L90
	nop	
	move	$t5,$zero
vp.L90:
	move	$t6,$zero
 # ["exec_times": 0]
	seq	$t7,$t5,$t6
 # ["exec_times": 0]
	beqz	$t7,vp.L36
 # ["exec_times": 0]
	nop	
	# .loc	2, 1037
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,84
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1038
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L36:
	# .loc	2, 1039
 # ["exec_times": 0]
	# .loc	2, 1043
 # ["exec_times": 0]
	# .loc	2, 1045
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
vp.L73:
	# .loc	2, 1046
 # ["exec_times": 0]
	la	$t9,2120($sp)
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 0]
	mult	$t8,$a0
	mflo	$a1
 # ["exec_times": 0]
	addu	$a2,$t9,$a1
 # ["exec_times": 0]
	li	$a3,72
 # ["exec_times": 0]
	addu	$t9,$s1,$a3
 # ["fields": "acc"]
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 0]
	mult	$t8,$v0
	mflo	$v1
 # ["exec_times": 0]
	addu	$t0,$t9,$v1
 # ["exec_times": 0]
	l.d	$f2,0($t0)
 # ["exec_times": 0]
	mul.d	$f4,$f2,$f22
 # ["exec_times": 0]
	s.d	$f4,0($a2)
 # ["exec_times": 0]
	li	$t1,1
 # ["exec_times": 0]
	addu	$t8,$t8,$t1
 # ["exec_times": 0]
	li	$t2,3
 # ["exec_times": 0]
	sle	$t3,$t2,$t8
 # ["exec_times": 0]
	beqz	$t3,vp.L73
 # ["exec_times": 0]
	nop	
	# .loc	2, 1045
 # ["exec_times": 0]
	# .loc	2, 1047
 # ["exec_times": 0]
	# .loc	2, 1050
 # ["exec_times": 0]
	li	$t4,48
 # ["exec_times": 0]
	addu	$a0,$s1,$t4
 # ["fields": "vel"]
 # ["exec_times": 0]
	l.d	$f16,0($a0)
 # ["exec_times": 0]
	# .loc	2, 1051
 # ["exec_times": 0]
	li	$t5,56
 # ["exec_times": 0]
	addu	$t6,$s1,$t5
 # ["exec_times": 0]
	l.d	$f20,0($t6)
 # ["exec_times": 0]
	# .loc	2, 1052
 # ["exec_times": 0]
	li	$t7,64
 # ["exec_times": 0]
	addu	$t8,$s1,$t7
 # ["exec_times": 0]
	l.d	$f24,0($t8)
 # ["exec_times": 0]
	# .loc	2, 1053
 # ["exec_times": 0]
	# .loc	2, 1065
 # ["exec_times": 0]
	li.d	$f6,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t9,1
	c.lt.d	$f6,$f16
 # ["exec_times": 0]
	bc1t	vp.L91
	nop	
	move	$t9,$zero
vp.L91:
	beqz	$t9,vp.L42
 # ["exec_times": 0]
	nop	
vp.L109:
	j	vp.__done7
 # ["exec_times": 0]
	nop	
vp.L42:
	neg.d	$f16,$f16
 # ["exec_times": 0]
vp.__done7:
	li.d	$f8,1.000000000000000000e+04
 # ["exec_times": 0]
	li	$a0,1
	c.lt.d	$f16,$f8
 # ["exec_times": 0]
	bc1t	vp.L92
	nop	
	move	$a0,$zero
vp.L92:
	move	$a1,$zero
 # ["exec_times": 0]
	seq	$a2,$a0,$a1
 # ["exec_times": 0]
	beqz	$a2,vp.L43
 # ["exec_times": 0]
	nop	
	# .loc	2, 1066
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,76
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1067
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L43:
	# .loc	2, 1069
 # ["exec_times": 0]
	li.d	$f10,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$a3,1
	c.lt.d	$f10,$f20
 # ["exec_times": 0]
	bc1t	vp.L93
	nop	
	move	$a3,$zero
vp.L93:
	beqz	$a3,vp.L44
 # ["exec_times": 0]
	nop	
vp.L110:
	j	vp.__done8
 # ["exec_times": 0]
	nop	
vp.L44:
	neg.d	$f20,$f20
 # ["exec_times": 0]
vp.__done8:
	li.d	$f16,1.000000000000000000e+04
 # ["exec_times": 0]
	li	$v0,1
	c.lt.d	$f20,$f16
 # ["exec_times": 0]
	bc1t	vp.L94
	nop	
	move	$v0,$zero
vp.L94:
	move	$v1,$zero
 # ["exec_times": 0]
	seq	$t0,$v0,$v1
 # ["exec_times": 0]
	beqz	$t0,vp.L45
 # ["exec_times": 0]
	nop	
	# .loc	2, 1070
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,75
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1071
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L45:
	# .loc	2, 1073
 # ["exec_times": 0]
	li.d	$f18,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t1,1
	c.lt.d	$f18,$f24
 # ["exec_times": 0]
	bc1t	vp.L95
	nop	
	move	$t1,$zero
vp.L95:
	beqz	$t1,vp.L46
 # ["exec_times": 0]
	nop	
vp.L111:
	j	vp.__done9
 # ["exec_times": 0]
	nop	
vp.L46:
	neg.d	$f24,$f24
 # ["exec_times": 0]
vp.__done9:
	li.d	$f12,1.000000000000000000e+04
 # ["exec_times": 0]
	li	$t2,1
	c.lt.d	$f24,$f12
 # ["exec_times": 0]
	bc1t	vp.L96
	nop	
	move	$t2,$zero
vp.L96:
	move	$t3,$zero
 # ["exec_times": 0]
	seq	$t4,$t2,$t3
 # ["exec_times": 0]
	beqz	$t4,vp.L47
 # ["exec_times": 0]
	nop	
	# .loc	2, 1074
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,74
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1075
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L47:
	# .loc	2, 1076
 # ["exec_times": 0]
	# .loc	2, 1079
 # ["exec_times": 0]
	# .loc	2, 1081
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
vp.L74:
	# .loc	2, 1082
 # ["exec_times": 0]
	la	$t6,2096($sp)
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	mult	$t5,$t7
	mflo	$t8
 # ["exec_times": 0]
	addu	$t9,$t6,$t8
 # ["exec_times": 0]
	li	$a0,48
 # ["exec_times": 0]
	addu	$a1,$s1,$a0
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 0]
	mult	$t5,$a2
	mflo	$a2
 # ["exec_times": 0]
	addu	$a3,$a1,$a2
 # ["exec_times": 0]
	l.d	$f14,0($a3)
 # ["exec_times": 0]
	la	$v0,2120($sp)
 # ["exec_times": 0]
	li	$v1,8
 # ["exec_times": 0]
	mult	$t5,$v1
	mflo	$t0
 # ["exec_times": 0]
	addu	$t1,$v0,$t0
 # ["exec_times": 0]
	l.d	$f0,0($t1)
 # ["exec_times": 0]
	add.d	$f2,$f14,$f0
 # ["exec_times": 0]
	s.d	$f2,0($t9)
 # ["exec_times": 0]
	li	$t2,1
 # ["exec_times": 0]
	addu	$t5,$t5,$t2
 # ["exec_times": 0]
	li	$t3,3
 # ["exec_times": 0]
	sle	$t4,$t3,$t5
 # ["exec_times": 0]
	beqz	$t4,vp.L74
 # ["exec_times": 0]
	nop	
	# .loc	2, 1081
 # ["exec_times": 0]
	# .loc	2, 1084
 # ["exec_times": 0]
	# .loc	2, 1086
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
vp.L75:
	# .loc	2, 1087
 # ["exec_times": 0]
	la	$t6,2072($sp)
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	mult	$t5,$t7
	mflo	$t8
 # ["exec_times": 0]
	addu	$t9,$t6,$t8
 # ["exec_times": 0]
	la	$a0,2096($sp)
 # ["exec_times": 0]
	li	$a1,8
 # ["exec_times": 0]
	mult	$t5,$a1
	mflo	$a2
 # ["exec_times": 0]
	addu	$a3,$a0,$a2
 # ["exec_times": 0]
	l.d	$f4,0($a3)
 # ["exec_times": 0]
	li.d	$f6,1.250000000000000069e-02
 # ["exec_times": 0]
	mul.d	$f8,$f4,$f6
 # ["exec_times": 0]
	s.d	$f8,0($t9)
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 0]
	addu	$t5,$t5,$v0
 # ["exec_times": 0]
	li	$v1,3
 # ["exec_times": 0]
	sle	$t0,$v1,$t5
 # ["exec_times": 0]
	beqz	$t0,vp.L75
 # ["exec_times": 0]
	nop	
	# .loc	2, 1086
 # ["exec_times": 0]
	# .loc	2, 1089
 # ["exec_times": 0]
	# .loc	2, 1091
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
vp.L76:
	# .loc	2, 1092
 # ["exec_times": 0]
	la	$t2,2072($sp)
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$t1,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	li	$t6,16
 # ["exec_times": 0]
	addu	$a2,$s1,$t6
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	mult	$t1,$t7
	mflo	$t8
 # ["exec_times": 0]
	addu	$t9,$a2,$t8
 # ["exec_times": 0]
	l.d	$f10,0($t9)
 # ["exec_times": 0]
	la	$a0,2072($sp)
 # ["exec_times": 0]
	li	$a1,8
 # ["exec_times": 0]
	mult	$t1,$a1
	mflo	$a2
 # ["exec_times": 0]
	addu	$a3,$a0,$a2
 # ["exec_times": 0]
	l.d	$f16,0($a3)
 # ["exec_times": 0]
	add.d	$f18,$f10,$f16
 # ["exec_times": 0]
	s.d	$f18,0($t5)
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 0]
	addu	$t1,$t1,$v0
 # ["exec_times": 0]
	li	$v1,3
 # ["exec_times": 0]
	sle	$t0,$v1,$t1
 # ["exec_times": 0]
	beqz	$t0,vp.L76
 # ["exec_times": 0]
	nop	
	# .loc	2, 1091
 # ["exec_times": 0]
	# .loc	2, 1094
 # ["exec_times": 0]
	# .loc	2, 1096
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
vp.L77:
	# .loc	2, 1097
 # ["exec_times": 0]
	li	$t2,16
 # ["exec_times": 0]
	addu	$a3,$s1,$t2
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$t1,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$a3,$t4
 # ["exec_times": 0]
	la	$t6,2072($sp)
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	mult	$t1,$t7
	mflo	$t8
 # ["exec_times": 0]
	addu	$t9,$t6,$t8
 # ["exec_times": 0]
	l.d	$f12,0($t9)
 # ["exec_times": 0]
	s.d	$f12,0($t5)
 # ["exec_times": 0]
	li	$a0,1
 # ["exec_times": 0]
	addu	$t1,$t1,$a0
 # ["exec_times": 0]
	li	$a1,3
 # ["exec_times": 0]
	sle	$a2,$a1,$t1
 # ["exec_times": 0]
	beqz	$a2,vp.L77
 # ["exec_times": 0]
	nop	
	# .loc	2, 1096
 # ["exec_times": 0]
	# .loc	2, 1099
 # ["exec_times": 0]
	# .loc	2, 1101
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 0]
vp.L78:
	# .loc	2, 1102
 # ["exec_times": 0]
	li	$v0,48
 # ["exec_times": 0]
	addu	$v0,$s1,$v0
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$v1,8
 # ["exec_times": 0]
	mult	$a3,$v1
	mflo	$t0
 # ["exec_times": 0]
	addu	$t1,$v0,$t0
 # ["exec_times": 0]
	la	$t2,2096($sp)
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$a3,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	l.d	$f14,0($t5)
 # ["exec_times": 0]
	la	$t6,2120($sp)
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	mult	$a3,$t7
	mflo	$t8
 # ["exec_times": 0]
	addu	$t9,$t6,$t8
 # ["exec_times": 0]
	l.d	$f0,0($t9)
 # ["exec_times": 0]
	add.d	$f2,$f14,$f0
 # ["exec_times": 0]
	s.d	$f2,0($t1)
 # ["exec_times": 0]
	li	$a0,1
 # ["exec_times": 0]
	addu	$a3,$a3,$a0
 # ["exec_times": 0]
	li	$a1,3
 # ["exec_times": 0]
	sle	$a2,$a1,$a3
 # ["exec_times": 0]
	beqz	$a2,vp.L78
 # ["exec_times": 0]
	nop	
	# .loc	2, 1101
 # ["exec_times": 0]
	# .loc	2, 1103
 # ["exec_times": 0]
	# .loc	2, 1106
 # ["exec_times": 0]
	li	$a3,16
 # ["exec_times": 0]
	addu	$v1,$s1,$a3
 # ["fields": "pos"]
 # ["exec_times": 0]
	l.d	$f18,0($v1)
 # ["exec_times": 0]
	# .loc	2, 1107
 # ["exec_times": 0]
	li	$v0,24
 # ["exec_times": 0]
	addu	$v1,$s1,$v0
 # ["exec_times": 0]
	l.d	$f20,0($v1)
 # ["exec_times": 0]
	# .loc	2, 1108
 # ["exec_times": 0]
	li	$t0,32
 # ["exec_times": 0]
	addu	$t1,$s1,$t0
 # ["exec_times": 0]
	l.d	$f24,0($t1)
 # ["exec_times": 0]
	# .loc	2, 1109
 # ["exec_times": 0]
	# .loc	2, 1121
 # ["exec_times": 0]
	li.d	$f4,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t2,1
	c.lt.d	$f4,$f18
 # ["exec_times": 0]
	bc1t	vp.L97
	nop	
	move	$t2,$zero
vp.L97:
	beqz	$t2,vp.L61
 # ["exec_times": 0]
	nop	
vp.L112:
	j	vp.__done10
 # ["exec_times": 0]
	nop	
vp.L61:
	neg.d	$f18,$f18
 # ["exec_times": 0]
vp.__done10:
	li.d	$f6,1.000000000000000000e+04
 # ["exec_times": 0]
	li	$t3,1
	c.lt.d	$f18,$f6
 # ["exec_times": 0]
	bc1t	vp.L98
	nop	
	move	$t3,$zero
vp.L98:
	move	$t4,$zero
 # ["exec_times": 0]
	seq	$t5,$t3,$t4
 # ["exec_times": 0]
	beqz	$t5,vp.L62
 # ["exec_times": 0]
	nop	
	# .loc	2, 1122
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,66
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1123
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L62:
	# .loc	2, 1125
 # ["exec_times": 0]
	li.d	$f8,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t6,1
	c.lt.d	$f8,$f20
 # ["exec_times": 0]
	bc1t	vp.L99
	nop	
	move	$t6,$zero
vp.L99:
	beqz	$t6,vp.L63
 # ["exec_times": 0]
	nop	
vp.L113:
	j	vp.__done11
 # ["exec_times": 0]
	nop	
vp.L63:
	neg.d	$f20,$f20
 # ["exec_times": 0]
vp.__done11:
	li.d	$f10,1.000000000000000000e+04
 # ["exec_times": 0]
	li	$t7,1
	c.lt.d	$f20,$f10
 # ["exec_times": 0]
	bc1t	vp.L100
	nop	
	move	$t7,$zero
vp.L100:
	move	$t8,$zero
 # ["exec_times": 0]
	seq	$t9,$t7,$t8
 # ["exec_times": 0]
	beqz	$t9,vp.L64
 # ["exec_times": 0]
	nop	
	# .loc	2, 1126
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,65
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1127
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L64:
	# .loc	2, 1129
 # ["exec_times": 0]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$a0,1
	c.lt.d	$f16,$f24
 # ["exec_times": 0]
	bc1t	vp.L101
	nop	
	move	$a0,$zero
vp.L101:
	beqz	$a0,vp.L65
 # ["exec_times": 0]
	nop	
vp.L114:
	j	vp.__done12
 # ["exec_times": 0]
	nop	
vp.L65:
	neg.d	$f24,$f24
 # ["exec_times": 0]
vp.__done12:
	li.d	$f18,1.000000000000000000e+04
 # ["exec_times": 0]
	li	$a1,1
	c.lt.d	$f24,$f18
 # ["exec_times": 0]
	bc1t	vp.L102
	nop	
	move	$a1,$zero
vp.L102:
	move	$a2,$zero
 # ["exec_times": 0]
	seq	$a3,$a1,$a2
 # ["exec_times": 0]
	beqz	$a3,vp.L66
 # ["exec_times": 0]
	nop	
	# .loc	2, 1130
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,64
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1131
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
vp.L66:
	# .loc	2, 1132
 # ["exec_times": 0]
	# .loc	2, 941
 # ["exec_times": 0]
	li	$v0,132
 # ["exec_times": 0]
	addu	$v1,$s1,$v0
 # ["fields": "proc_next"]
 # ["exec_times": 0]
	lw	$s1,0($v1)
 # ["exec_times": 0]
	# .loc	2, 941
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 0]
	sne	$t1,$s1,$t0
 # ["exec_times": 0]
	bnez	$t1,vp.L4
 # ["exec_times": 0]
	nop	
vp.L5:
	# .loc	2, 1138
 # ["exec_times": 0]
	cqip	vp.spawntail2
vp.spawntail2:
	pslice_entry	vp.spawntail2
	pslice_exit	vp.spawntail2
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	l.d	$f20,16($sp)
 # ["header/trailer":]
	l.d	$f22,24($sp)
 # ["header/trailer":]
	l.d	$f24,32($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	vp 
	.text	
	.align	2
	.align	2
	.globl	gravstep
	# .loc	2, 1144
	.ent	gravstep 
gravstep:
	spawn	gravstep.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -48
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 48, $31
 # ["header/trailer":]
	cqip	gravstep.headerspawn
 # ["header/trailer":]
gravstep.headerspawn:
 # ["header/trailer":]
	pslice_entry	gravstep.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	pslice_exit	gravstep.headerspawn
	move	$t6,$a2
	# .loc	2, 1146
 # ["exec_times": 0]
	la	$t0,hackgrav
 # ["exec_times": 0]
	move	$a0,$a3
	mov.d	$f14,$f12
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	sw	$t6,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "hackgrav"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 1147
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	gravstep 
	.text	
	.align	2
	.align	2
	.globl	ptree
	# .loc	2, 1669
	.ent	ptree 
ptree:
	spawn	ptree.headerspawn
 # ["header/trailer":]
	la	$sp,-136($sp)
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
	.mask	0x80070000, -136
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 136, $31
 # ["header/trailer":]
	cqip	ptree.headerspawn
 # ["header/trailer":]
ptree.headerspawn:
 # ["header/trailer":]
	pslice_entry	ptree.headerspawn
 # ["header/trailer":]
	la	$sp,-136($sp)
 # ["header/trailer":]
	pslice_exit	ptree.headerspawn
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 1673
 # ["exec_times": 0]
	la	$t9,0($zero)
 # ["exec_times": 0]
	sne	$a0,$s1,$t9
 # ["exec_times": 0]
	beqz	$a0,ptree.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 1674
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	addu	$a2,$s1,$a1
 # ["fields": "type"]
 # ["exec_times": 0]
	lh	$t7,0($a2)
 # ["exec_times": 0]
	li	$a3,1
 # ["exec_times": 0]
	seq	$v0,$t7,$a3
 # ["exec_times": 0]
	bnez	$v0,ptree.__done6
 # ["exec_times": 0]
	nop	
	# .loc	2, 1681
 # ["exec_times": 0]
	move	$s2,$zero
 # ["exec_times": 0]
ptree.L5:
	# .loc	2, 1682
 # ["exec_times": 0]
	li	$v1,48
 # ["exec_times": 0]
	addu	$t8,$s1,$v1
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$t0,4
 # ["exec_times": 0]
	mult	$s2,$t0
	mflo	$t1
 # ["exec_times": 0]
	addu	$t2,$t8,$t1
 # ["exec_times": 0]
	lw	$a0,0($t2)
 # ["exec_times": 0]
	# .loc	2, 1683
 # ["exec_times": 0]
	la	$t0,ptree
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 0]
	addu	$a1,$s0,$t3
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ptree"]
 # ["regs_used": 5 6]
	nop	
	li	$t4,1
 # ["exec_times": 0]
	addu	$s2,$s2,$t4
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	sle	$t6,$t5,$s2
 # ["exec_times": 0]
	beqz	$t6,ptree.L5
 # ["exec_times": 0]
	nop	
	# .loc	2, 1681
 # ["exec_times": 0]
	j	ptree.__done6
 # ["exec_times": 0]
	nop	
ptree.L1:
	# .loc	2, 1687
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_9
 # ["exec_times": 0]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
ptree.__done6:
	# .loc	2, 1688
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	ptree 
	.text	
	.align	2
	.align	2
	.globl	testdata
	# .loc	2, 447
	.ent	testdata 
testdata:
	spawn	testdata.headerspawn
 # ["header/trailer":]
	la	$sp,-1960($sp)
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
	.mask	0x803f0000, -1960
 # ["header/trailer":]
	s.d	$f20,32($sp)
 # ["header/trailer":]
	s.d	$f22,40($sp)
 # ["header/trailer":]
	s.d	$f24,48($sp)
 # ["header/trailer":]
	s.d	$f26,56($sp)
 # ["header/trailer":]
	s.d	$f28,64($sp)
 # ["header/trailer":]
	s.d	$f30,72($sp)
 # ["header/trailer":]
	.fmask	0x55500000, -1960
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 1960, $31
 # ["header/trailer":]
	cqip	testdata.headerspawn
 # ["header/trailer":]
testdata.headerspawn:
 # ["header/trailer":]
	pslice_entry	testdata.headerspawn
 # ["header/trailer":]
	la	$sp,-1960($sp)
 # ["header/trailer":]
	pslice_exit	testdata.headerspawn
	spawn	testdata.L66
 # ["cqip_pos": <L:testdata.L66,0>]
	# .loc	2, 453
 # ["exec_times": 0]
	li.d	$f24,1.230000000000000000e+02
 # ["exec_times": 0]
	# .loc	2, 459
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_3
 # ["exec_times": 0]
	li	$a1,99
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 460
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 462
 # ["exec_times": 0]
	li.d	$f22,5.890486225480862092e-01
 # ["exec_times": 0]
	# .loc	2, 463
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 0]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 0]
	div.d	$f12,$f14,$f22
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	cqip	testdata.L66
 # ["cqip_pos": <L:testdata.L66,0>]
testdata.L66:
	pslice_entry	testdata.L66
 # ["pslice_entry_pos": <L:testdata.L66,0>]
	pslice_exit	testdata.L66
 # ["pslice_exit_pos": <L:testdata.L66,0>]
	spawn	testdata.L67
 # ["cqip_pos": <L:testdata.L67,0>]
	mov.d	$f20,$f0
	# .loc	2, 464
 # ["exec_times": 0]
	# .loc	2, 466
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
testdata.L48:
	# .loc	2, 467
 # ["exec_times": 0]
	la	$t8,1888($sp)
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	mult	$t7,$t9
	mflo	$a0
 # ["exec_times": 0]
	addu	$a1,$t8,$a0
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 0]
	s.d	$f0,0($a1)
 # ["exec_times": 0]
	li	$a2,1
 # ["exec_times": 0]
	addu	$t7,$t7,$a2
 # ["exec_times": 0]
	li	$a3,3
 # ["exec_times": 0]
	sle	$v0,$a3,$t7
 # ["exec_times": 0]
	beqz	$v0,testdata.L48
 # ["exec_times": 0]
	nop	
	# .loc	2, 466
 # ["exec_times": 0]
	# .loc	2, 469
 # ["exec_times": 0]
	# .loc	2, 471
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
testdata.L49:
	cqip	testdata.L67
 # ["cqip_pos": <L:testdata.L67,0>]
testdata.L67:
	pslice_entry	testdata.L67
 # ["pslice_entry_pos": <L:testdata.L67,0>]
	pslice_exit	testdata.L67
 # ["pslice_exit_pos": <L:testdata.L67,0>]
	spawn	testdata.L68
 # ["cqip_pos": <L:testdata.L68,0>]
	# .loc	2, 472
 # ["exec_times": 0]
	la	$t0,1864($sp)
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 0]
	mult	$v1,$t1
	mflo	$t2
 # ["exec_times": 0]
	addu	$t3,$t0,$t2
 # ["exec_times": 0]
	li.d	$f2,0.000000000000000000e+00
 # ["exec_times": 0]
	s.d	$f2,0($t3)
 # ["exec_times": 0]
	li	$t4,1
 # ["exec_times": 0]
	addu	$v1,$v1,$t4
 # ["exec_times": 0]
	li	$t5,3
 # ["exec_times": 0]
	sle	$t6,$t5,$v1
 # ["exec_times": 0]
	beqz	$t6,testdata.L49
 # ["exec_times": 0]
	nop	
	# .loc	2, 471
 # ["exec_times": 0]
	# .loc	2, 474
 # ["exec_times": 0]
	la	$t0,ubody_alloc
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ubody_alloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	cqip	testdata.L68
 # ["cqip_pos": <L:testdata.L68,0>]
testdata.L68:
	pslice_entry	testdata.L68
 # ["pslice_entry_pos": <L:testdata.L68,0>]
	pslice_exit	testdata.L68
 # ["pslice_exit_pos": <L:testdata.L68,0>]
	move	$s1,$v0
	# .loc	2, 475
 # ["exec_times": 0]
	move	$s0,$s1
 # ["exec_times": 0]
	# .loc	2, 477
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
	lw	$t8,nbody
	slt	$t9,$t7,$t8
 # ["exec_times": 0]
	beqz	$t9,testdata.L46
 # ["exec_times": 0]
	nop	
	move	$s3,$zero
 # ["exec_times": 0]
	spawn	testdata.L69
 # ["cqip_pos": <L:testdata.L69,0>]
testdata.L47:
	# .loc	2, 478
 # ["exec_times": 0]
	la	$t0,ubody_alloc
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ubody_alloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s2,$v0
	# .loc	2, 480
 # ["exec_times": 0]
	la	$a0,0($zero)
 # ["exec_times": 0]
	seq	$a1,$s2,$a0
 # ["exec_times": 0]
	beqz	$a1,testdata.L8
 # ["exec_times": 0]
	nop	
	# .loc	2, 481
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 0]
	la	$a0,__tmp_string_4
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
testdata.L8:
	# .loc	2, 482
 # ["exec_times": 0]
	li	$a2,128
 # ["exec_times": 0]
	addu	$a3,$s0,$a2
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s2,0($a3)
 # ["exec_times": 0]
	# .loc	2, 483
 # ["exec_times": 0]
	move	$s0,$s2
 # ["exec_times": 0]
	# .loc	2, 484
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	addu	$v1,$s2,$v0
 # ["fields": "type"]
 # ["exec_times": 0]
	li	$t0,1
 # ["exec_times": 0]
	sh	$t0,0($v1)
 # ["exec_times": 0]
	# .loc	2, 485
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 0]
	addu	$t2,$s2,$t1
 # ["fields": "mass"]
 # ["exec_times": 0]
	li.d	$f4,1.000000000000000000e+00
 # ["exec_times": 0]
	lw	$t3,nbody
	mtc1	$t3,$f6
	cvt.d.w	$f8,$f6
 # ["exec_times": 0]
	div.d	$f10,$f4,$f8
 # ["exec_times": 0]
	s.d	$f10,0($t2)
 # ["exec_times": 0]
	# .loc	2, 486
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 0]
	mov.d	$f12,$f24
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "my_rand"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	2, 487
 # ["exec_times": 0]
	la	$t0,xrand
 # ["exec_times": 0]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 0]
	li.d	$f14,9.989999999999999991e-01
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	s.d	$f24,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "xrand"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 488
 # ["exec_times": 0]
	la	$t0,pow
 # ["exec_times": 0]
	li.d	$f14,-6.666666666666666297e-01
 # ["exec_times": 0]
	mov.d	$f12,$f0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "pow"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 0]
	sub.d	$f12,$f0,$f16
 # ["exec_times": 0]
	# .loc	2, 489
 # ["exec_times": 0]
	li.d	$f26,1.000000000000000000e+00
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	div.d	$f28,$f26,$f0
 # ["exec_times": 0]
	# .loc	2, 492
 # ["exec_times": 0]
	mul.d	$f26,$f22,$f28
 # ["exec_times": 0]
testdata.L11:
	# .loc	2, 494
 # ["exec_times": 0]
	move	$s4,$zero
 # ["exec_times": 0]
testdata.L50:
	# .loc	2, 495
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 0]
	mov.d	$f12,$f24
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "my_rand"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	2, 496
 # ["exec_times": 0]
	li	$t4,16
 # ["exec_times": 0]
	addu	$t7,$s2,$t4
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	mult	$s4,$t5
	mflo	$t6
 # ["exec_times": 0]
	addu	$s5,$t7,$t6
 # ["exec_times": 0]
	la	$t0,xrand
 # ["exec_times": 0]
	li.d	$f12,-1.000000000000000000e+00
 # ["exec_times": 0]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	s.d	$f24,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "xrand"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	s.d	$f0,0($s5)
 # ["exec_times": 0]
	li	$t7,1
 # ["exec_times": 0]
	addu	$s4,$s4,$t7
 # ["exec_times": 0]
	li	$t8,3
 # ["exec_times": 0]
	sle	$t9,$t8,$s4
 # ["exec_times": 0]
	beqz	$t9,testdata.L50
 # ["exec_times": 0]
	nop	
	# .loc	2, 498
 # ["exec_times": 0]
	# .loc	2, 500
 # ["exec_times": 0]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 0]
	# .loc	2, 501
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
testdata.L51:
	# .loc	2, 502
 # ["exec_times": 0]
	li	$a1,16
 # ["exec_times": 0]
	addu	$t9,$s2,$a1
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 0]
	mult	$a0,$a2
	mflo	$a3
 # ["exec_times": 0]
	addu	$v0,$t9,$a3
 # ["exec_times": 0]
	l.d	$f18,0($v0)
 # ["exec_times": 0]
	li	$v1,16
 # ["exec_times": 0]
	addu	$t8,$s2,$v1
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 0]
	mult	$a0,$t0
	mflo	$t1
 # ["exec_times": 0]
	addu	$t2,$t8,$t1
 # ["exec_times": 0]
	l.d	$f14,0($t2)
 # ["exec_times": 0]
	mul.d	$f14,$f18,$f14
 # ["exec_times": 0]
	add.d	$f12,$f12,$f14
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 0]
	addu	$a0,$a0,$t3
 # ["exec_times": 0]
	li	$t4,3
 # ["exec_times": 0]
	sle	$t5,$t4,$a0
 # ["exec_times": 0]
	beqz	$t5,testdata.L51
 # ["exec_times": 0]
	nop	
	# .loc	2, 501
 # ["exec_times": 0]
	# .loc	2, 503
 # ["exec_times": 0]
	li.d	$f0,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t6,1
	c.lt.d	$f0,$f12
 # ["exec_times": 0]
	bc1t	testdata.L62
	nop	
	move	$t6,$zero
testdata.L62:
	bnez	$t6,testdata.L11
 # ["exec_times": 0]
	nop	
	# .loc	2, 505
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	div.d	$f2,$f26,$f0
 # ["exec_times": 0]
	# .loc	2, 506
 # ["exec_times": 0]
	# .loc	2, 508
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
testdata.L52:
	# .loc	2, 509
 # ["exec_times": 0]
	li	$t8,16
 # ["exec_times": 0]
	addu	$a1,$s2,$t8
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	mult	$t7,$t9
	mflo	$a0
 # ["exec_times": 0]
	addu	$a1,$a1,$a0
 # ["exec_times": 0]
	li	$a2,16
 # ["exec_times": 0]
	addu	$a0,$s2,$a2
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	mult	$t7,$a3
	mflo	$v0
 # ["exec_times": 0]
	addu	$v1,$a0,$v0
 # ["exec_times": 0]
	l.d	$f4,0($v1)
 # ["exec_times": 0]
	mul.d	$f6,$f4,$f2
 # ["exec_times": 0]
	s.d	$f6,0($a1)
 # ["exec_times": 0]
	li	$t0,1
 # ["exec_times": 0]
	addu	$t7,$t7,$t0
 # ["exec_times": 0]
	li	$t1,3
 # ["exec_times": 0]
	sle	$t2,$t1,$t7
 # ["exec_times": 0]
	beqz	$t2,testdata.L52
 # ["exec_times": 0]
	nop	
	# .loc	2, 508
 # ["exec_times": 0]
	# .loc	2, 512
 # ["exec_times": 0]
	# .loc	2, 514
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
testdata.L53:
	# .loc	2, 515
 # ["exec_times": 0]
	la	$t4,1888($sp)
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	mult	$t3,$t5
	mflo	$t6
 # ["exec_times": 0]
	addu	$t7,$t4,$t6
 # ["exec_times": 0]
	la	$t8,1888($sp)
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	mult	$t3,$t9
	mflo	$a0
 # ["exec_times": 0]
	addu	$a1,$t8,$a0
 # ["exec_times": 0]
	l.d	$f8,0($a1)
 # ["exec_times": 0]
	li	$a2,16
 # ["exec_times": 0]
	addu	$a2,$s2,$a2
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	mult	$t3,$a3
	mflo	$v0
 # ["exec_times": 0]
	addu	$v1,$a2,$v0
 # ["exec_times": 0]
	l.d	$f10,0($v1)
 # ["exec_times": 0]
	add.d	$f16,$f8,$f10
 # ["exec_times": 0]
	s.d	$f16,0($t7)
 # ["exec_times": 0]
	li	$t0,1
 # ["exec_times": 0]
	addu	$t3,$t3,$t0
 # ["exec_times": 0]
	li	$t1,3
 # ["exec_times": 0]
	sle	$t2,$t1,$t3
 # ["exec_times": 0]
	beqz	$t2,testdata.L53
 # ["exec_times": 0]
	nop	
	# .loc	2, 514
 # ["exec_times": 0]
	# .loc	2, 516
 # ["exec_times": 0]
testdata.L22:
	# .loc	2, 518
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 0]
	mov.d	$f12,$f24
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "my_rand"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	2, 519
 # ["exec_times": 0]
	la	$t0,xrand
 # ["exec_times": 0]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 0]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	s.d	$f24,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "xrand"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	mov.d	$f30,$f0
	# .loc	2, 520
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 0]
	mov.d	$f12,$f24
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "my_rand"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	2, 521
 # ["exec_times": 0]
	la	$t0,xrand
 # ["exec_times": 0]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 0]
	li.d	$f14,1.000000000000000056e-01
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	s.d	$f24,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "xrand"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	mov.d	$f26,$f0
	# .loc	2, 522
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_5
 # ["exec_times": 0]
	mov.d	$f14,$f30
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f26,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	mul.d	$f18,$f30,$f30
 # ["exec_times": 0]
	s.d	$f18,960($sp)
	la	$t0,pow
 # ["exec_times": 0]
	li.d	$f18,1.000000000000000000e+00
 # ["exec_times": 0]
	mul.d	$f12,$f30,$f30
 # ["exec_times": 0]
	sub.d	$f12,$f18,$f12
 # ["exec_times": 0]
	li.d	$f14,3.500000000000000000e+00
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "pow"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	l.d	$f16,960($sp)
	mul.d	$f14,$f16,$f0
 # ["exec_times": 0]
	li	$t3,1
	c.lt.d	$f14,$f26
 # ["exec_times": 0]
	bc1t	testdata.L63
	nop	
	move	$t3,$zero
testdata.L63:
	bnez	$t3,testdata.L22
 # ["exec_times": 0]
	nop	
	# .loc	2, 524
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 0]
	li.d	$f12,2.000000000000000000e+00
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mul.d	$f26,$f0,$f30
 # ["exec_times": 0]
	la	$t0,pow
 # ["exec_times": 0]
	li.d	$f0,1.000000000000000000e+00
 # ["exec_times": 0]
	mul.d	$f2,$f28,$f28
 # ["exec_times": 0]
	add.d	$f12,$f0,$f2
 # ["exec_times": 0]
	li.d	$f14,2.500000000000000000e-01
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "pow"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	div.d	$f4,$f26,$f0
 # ["exec_times": 0]
	# .loc	2, 527
 # ["exec_times": 0]
	mul.d	$f26,$f20,$f4
 # ["exec_times": 0]
testdata.L25:
	# .loc	2, 530
 # ["exec_times": 0]
	move	$s4,$zero
 # ["exec_times": 0]
testdata.L54:
	# .loc	2, 531
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 0]
	mov.d	$f12,$f24
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "my_rand"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	2, 532
 # ["exec_times": 0]
	li	$t4,48
 # ["exec_times": 0]
	addu	$a3,$s2,$t4
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	mult	$s4,$t5
	mflo	$t6
 # ["exec_times": 0]
	addu	$s5,$a3,$t6
 # ["exec_times": 0]
	la	$t0,xrand
 # ["exec_times": 0]
	li.d	$f12,-1.000000000000000000e+00
 # ["exec_times": 0]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	s.d	$f24,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "xrand"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	s.d	$f0,0($s5)
 # ["exec_times": 0]
	li	$t7,1
 # ["exec_times": 0]
	addu	$s4,$s4,$t7
 # ["exec_times": 0]
	li	$t8,3
 # ["exec_times": 0]
	sle	$t9,$t8,$s4
 # ["exec_times": 0]
	beqz	$t9,testdata.L54
 # ["exec_times": 0]
	nop	
	# .loc	2, 534
 # ["exec_times": 0]
	# .loc	2, 536
 # ["exec_times": 0]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 0]
	# .loc	2, 537
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
testdata.L55:
	# .loc	2, 538
 # ["exec_times": 0]
	li	$a1,48
 # ["exec_times": 0]
	addu	$v1,$s2,$a1
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 0]
	mult	$a0,$a2
	mflo	$a3
 # ["exec_times": 0]
	addu	$v0,$v1,$a3
 # ["exec_times": 0]
	l.d	$f6,0($v0)
 # ["exec_times": 0]
	li	$v1,48
 # ["exec_times": 0]
	addu	$v0,$s2,$v1
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 0]
	mult	$a0,$t0
	mflo	$t1
 # ["exec_times": 0]
	addu	$t2,$v0,$t1
 # ["exec_times": 0]
	l.d	$f8,0($t2)
 # ["exec_times": 0]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 0]
	add.d	$f12,$f12,$f10
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 0]
	addu	$a0,$a0,$t3
 # ["exec_times": 0]
	li	$t4,3
 # ["exec_times": 0]
	sle	$t5,$t4,$a0
 # ["exec_times": 0]
	beqz	$t5,testdata.L55
 # ["exec_times": 0]
	nop	
	# .loc	2, 537
 # ["exec_times": 0]
	# .loc	2, 539
 # ["exec_times": 0]
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t6,1
	c.lt.d	$f16,$f12
 # ["exec_times": 0]
	bc1t	testdata.L64
	nop	
	move	$t6,$zero
testdata.L64:
	bnez	$t6,testdata.L25
 # ["exec_times": 0]
	nop	
	# .loc	2, 541
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	div.d	$f2,$f26,$f0
 # ["exec_times": 0]
	# .loc	2, 542
 # ["exec_times": 0]
	# .loc	2, 544
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
testdata.L56:
	# .loc	2, 545
 # ["exec_times": 0]
	li	$t8,48
 # ["exec_times": 0]
	addu	$t1,$s2,$t8
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	mult	$t7,$t9
	mflo	$a0
 # ["exec_times": 0]
	addu	$a1,$t1,$a0
 # ["exec_times": 0]
	li	$a2,48
 # ["exec_times": 0]
	addu	$t0,$s2,$a2
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	mult	$t7,$a3
	mflo	$v0
 # ["exec_times": 0]
	addu	$v1,$t0,$v0
 # ["exec_times": 0]
	l.d	$f18,0($v1)
 # ["exec_times": 0]
	mul.d	$f12,$f18,$f2
 # ["exec_times": 0]
	s.d	$f12,0($a1)
 # ["exec_times": 0]
	li	$t0,1
 # ["exec_times": 0]
	addu	$t7,$t7,$t0
 # ["exec_times": 0]
	li	$t1,3
 # ["exec_times": 0]
	sle	$t2,$t1,$t7
 # ["exec_times": 0]
	beqz	$t2,testdata.L56
 # ["exec_times": 0]
	nop	
	# .loc	2, 544
 # ["exec_times": 0]
	# .loc	2, 547
 # ["exec_times": 0]
	# .loc	2, 549
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
testdata.L57:
	# .loc	2, 550
 # ["exec_times": 0]
	la	$t4,1864($sp)
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	mult	$t3,$t5
	mflo	$t6
 # ["exec_times": 0]
	addu	$t7,$t4,$t6
 # ["exec_times": 0]
	la	$t8,1864($sp)
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	mult	$t3,$t9
	mflo	$a0
 # ["exec_times": 0]
	addu	$a1,$t8,$a0
 # ["exec_times": 0]
	l.d	$f14,0($a1)
 # ["exec_times": 0]
	li	$a2,48
 # ["exec_times": 0]
	addu	$t2,$s2,$a2
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	mult	$t3,$a3
	mflo	$v0
 # ["exec_times": 0]
	addu	$v1,$t2,$v0
 # ["exec_times": 0]
	l.d	$f0,0($v1)
 # ["exec_times": 0]
	add.d	$f2,$f14,$f0
 # ["exec_times": 0]
	s.d	$f2,0($t7)
 # ["exec_times": 0]
	li	$t0,1
 # ["exec_times": 0]
	addu	$t3,$t3,$t0
 # ["exec_times": 0]
	li	$t1,3
 # ["exec_times": 0]
	sle	$t2,$t1,$t3
 # ["exec_times": 0]
	beqz	$t2,testdata.L57
 # ["exec_times": 0]
	nop	
	# .loc	2, 549
 # ["exec_times": 0]
	# .loc	2, 551
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 0]
	addu	$s3,$s3,$t3
 # ["exec_times": 0]
	lw	$t4,nbody
	sle	$t5,$t4,$s3
 # ["exec_times": 0]
	beqz	$t5,testdata.L47
 # ["exec_times": 0]
	nop	
testdata.L65:
	j	testdata.__done55
 # ["exec_times": 0]
	nop	
testdata.L46:
	move	$s3,$zero
 # ["exec_times": 0]
testdata.__done55:
	cqip	testdata.L69
 # ["cqip_pos": <L:testdata.L69,0>]
testdata.L69:
	pslice_entry	testdata.L69
 # ["pslice_entry_pos": <L:testdata.L69,0>]
	pslice_exit	testdata.L69
 # ["pslice_exit_pos": <L:testdata.L69,0>]
	spawn	testdata.L70
 # ["cqip_pos": <L:testdata.L70,0>]
	# .loc	2, 556
 # ["exec_times": 0]
	li	$t6,128
 # ["exec_times": 0]
	addu	$t7,$s0,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	la	$t8,0($zero)
 # ["exec_times": 0]
	sw	$t8,0($t7)
 # ["exec_times": 0]
	# .loc	2, 557
 # ["exec_times": 0]
	li	$t9,128
 # ["exec_times": 0]
	addu	$a0,$s1,$t9
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s1,0($a0)
 # ["exec_times": 0]
	# .loc	2, 559
 # ["exec_times": 0]
	# .loc	2, 561
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
testdata.L58:
	# .loc	2, 562
 # ["exec_times": 0]
	la	$a2,1888($sp)
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	mult	$a1,$a3
	mflo	$v0
 # ["exec_times": 0]
	addu	$v1,$a2,$v0
 # ["exec_times": 0]
	la	$t0,1888($sp)
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 0]
	mult	$a1,$t1
	mflo	$t2
 # ["exec_times": 0]
	addu	$t3,$t0,$t2
 # ["exec_times": 0]
	l.d	$f4,0($t3)
 # ["exec_times": 0]
	lw	$t4,nbody
	mtc1	$t4,$f6
	cvt.d.w	$f8,$f6
 # ["exec_times": 0]
	div.d	$f10,$f4,$f8
 # ["exec_times": 0]
	s.d	$f10,0($v1)
 # ["exec_times": 0]
	li	$t5,1
 # ["exec_times": 0]
	addu	$a1,$a1,$t5
 # ["exec_times": 0]
	li	$t6,3
 # ["exec_times": 0]
	sle	$t7,$t6,$a1
 # ["exec_times": 0]
	beqz	$t7,testdata.L58
 # ["exec_times": 0]
	nop	
	cqip	testdata.L70
 # ["cqip_pos": <L:testdata.L70,0>]
testdata.L70:
	pslice_entry	testdata.L70
 # ["pslice_entry_pos": <L:testdata.L70,0>]
	pslice_exit	testdata.L70
 # ["pslice_exit_pos": <L:testdata.L70,0>]
	# .loc	2, 561
 # ["exec_times": 0]
	# .loc	2, 564
 # ["exec_times": 0]
	# .loc	2, 566
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
testdata.L59:
	# .loc	2, 567
 # ["exec_times": 0]
	la	$t9,1864($sp)
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 0]
	mult	$t8,$a0
	mflo	$a1
 # ["exec_times": 0]
	addu	$a2,$t9,$a1
 # ["exec_times": 0]
	la	$a3,1864($sp)
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 0]
	mult	$t8,$v0
	mflo	$v1
 # ["exec_times": 0]
	addu	$t0,$a3,$v1
 # ["exec_times": 0]
	l.d	$f16,0($t0)
 # ["exec_times": 0]
	lw	$t1,nbody
	mtc1	$t1,$f18
	cvt.d.w	$f12,$f18
 # ["exec_times": 0]
	div.d	$f14,$f16,$f12
 # ["exec_times": 0]
	s.d	$f14,0($a2)
 # ["exec_times": 0]
	li	$t2,1
 # ["exec_times": 0]
	addu	$t8,$t8,$t2
 # ["exec_times": 0]
	li	$t3,3
 # ["exec_times": 0]
	sle	$t4,$t3,$t8
 # ["exec_times": 0]
	beqz	$t4,testdata.L59
 # ["exec_times": 0]
	nop	
	# .loc	2, 566
 # ["exec_times": 0]
	# .loc	2, 569
 # ["exec_times": 0]
	move	$s2,$s1
 # ["exec_times": 0]
	# .loc	2, 569
 # ["exec_times": 0]
	la	$t5,0($zero)
 # ["exec_times": 0]
	sne	$t6,$s2,$t5
 # ["exec_times": 0]
	beqz	$t6,testdata.L41
 # ["exec_times": 0]
	nop	
testdata.L40:
	spawn	testdata.L71
 # ["cqip_pos": <L:testdata.L71,0>]
	# .loc	2, 570
 # ["exec_times": 0]
	# .loc	2, 572
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
testdata.L60:
	# .loc	2, 573
 # ["exec_times": 0]
	li	$t8,16
 # ["exec_times": 0]
	addu	$t4,$s2,$t8
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	mult	$t7,$t9
	mflo	$a0
 # ["exec_times": 0]
	addu	$a1,$t4,$a0
 # ["exec_times": 0]
	li	$a2,16
 # ["exec_times": 0]
	addu	$t3,$s2,$a2
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	mult	$t7,$a3
	mflo	$v0
 # ["exec_times": 0]
	addu	$v1,$t3,$v0
 # ["exec_times": 0]
	l.d	$f0,0($v1)
 # ["exec_times": 0]
	la	$t0,1888($sp)
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 0]
	mult	$t7,$t1
	mflo	$t2
 # ["exec_times": 0]
	addu	$t3,$t0,$t2
 # ["exec_times": 0]
	l.d	$f2,0($t3)
 # ["exec_times": 0]
	sub.d	$f4,$f0,$f2
 # ["exec_times": 0]
	s.d	$f4,0($a1)
 # ["exec_times": 0]
	li	$t4,1
 # ["exec_times": 0]
	addu	$t7,$t7,$t4
 # ["exec_times": 0]
	li	$t5,3
 # ["exec_times": 0]
	sle	$t6,$t5,$t7
 # ["exec_times": 0]
	beqz	$t6,testdata.L60
 # ["exec_times": 0]
	nop	
	# .loc	2, 572
 # ["exec_times": 0]
	# .loc	2, 575
 # ["exec_times": 0]
	# .loc	2, 577
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
testdata.L61:
	# .loc	2, 578
 # ["exec_times": 0]
	li	$t8,48
 # ["exec_times": 0]
	addu	$t6,$s2,$t8
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	mult	$t7,$t9
	mflo	$a0
 # ["exec_times": 0]
	addu	$a1,$t6,$a0
 # ["exec_times": 0]
	li	$a2,48
 # ["exec_times": 0]
	addu	$t5,$s2,$a2
 # ["fields": "vel"]
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	mult	$t7,$a3
	mflo	$v0
 # ["exec_times": 0]
	addu	$v1,$t5,$v0
 # ["exec_times": 0]
	l.d	$f6,0($v1)
 # ["exec_times": 0]
	la	$t0,1864($sp)
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 0]
	mult	$t7,$t1
	mflo	$t2
 # ["exec_times": 0]
	addu	$t3,$t0,$t2
 # ["exec_times": 0]
	l.d	$f8,0($t3)
 # ["exec_times": 0]
	sub.d	$f10,$f6,$f8
 # ["exec_times": 0]
	s.d	$f10,0($a1)
 # ["exec_times": 0]
	li	$t4,1
 # ["exec_times": 0]
	addu	$t7,$t7,$t4
 # ["exec_times": 0]
	li	$t5,3
 # ["exec_times": 0]
	sle	$t6,$t5,$t7
 # ["exec_times": 0]
	beqz	$t6,testdata.L61
 # ["exec_times": 0]
	nop	
	# .loc	2, 577
 # ["exec_times": 0]
	# .loc	2, 579
 # ["exec_times": 0]
	# .loc	2, 569
 # ["exec_times": 0]
	li	$t7,128
 # ["exec_times": 0]
	addu	$t8,$s2,$t7
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s2,0($t8)
 # ["exec_times": 0]
	# .loc	2, 569
 # ["exec_times": 0]
	la	$t9,0($zero)
 # ["exec_times": 0]
	sne	$a0,$s2,$t9
 # ["exec_times": 0]
	bnez	$a0,testdata.L40
 # ["exec_times": 0]
	nop	
testdata.L41:
	cqip	testdata.L71
 # ["cqip_pos": <L:testdata.L71,0>]
testdata.L71:
	pslice_entry	testdata.L71
 # ["pslice_entry_pos": <L:testdata.L71,0>]
	pslice_exit	testdata.L71
 # ["pslice_exit_pos": <L:testdata.L71,0>]
	# .loc	2, 581
 # ["exec_times": 0]
	move	$v0,$s1
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
	l.d	$f20,32($sp)
 # ["header/trailer":]
	l.d	$f22,40($sp)
 # ["header/trailer":]
	l.d	$f24,48($sp)
 # ["header/trailer":]
	l.d	$f26,56($sp)
 # ["header/trailer":]
	l.d	$f28,64($sp)
 # ["header/trailer":]
	l.d	$f30,72($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g60]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	testdata 
	.text	
	.align	2
	.align	2
	.globl	uniform_testdata
	# .loc	2, 752
	.ent	uniform_testdata 
uniform_testdata:
	spawn	uniform_testdata.headerspawn
 # ["header/trailer":]
	la	$sp,-1392($sp)
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
	.mask	0x80ff0000, -1392
 # ["header/trailer":]
	s.d	$f20,40($sp)
 # ["header/trailer":]
	s.d	$f22,48($sp)
 # ["header/trailer":]
	s.d	$f24,56($sp)
 # ["header/trailer":]
	s.d	$f26,64($sp)
 # ["header/trailer":]
	s.d	$f28,72($sp)
 # ["header/trailer":]
	s.d	$f30,80($sp)
 # ["header/trailer":]
	.fmask	0x55500000, -1392
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 1392, $31
 # ["header/trailer":]
	cqip	uniform_testdata.headerspawn
 # ["header/trailer":]
uniform_testdata.headerspawn:
 # ["header/trailer":]
	pslice_entry	uniform_testdata.headerspawn
 # ["header/trailer":]
	la	$sp,-1392($sp)
 # ["header/trailer":]
	pslice_exit	uniform_testdata.headerspawn
	spawn	uniform_testdata.L40
 # ["cqip_pos": <L:uniform_testdata.L40,0>]
	move	$s2,$a0
	move	$s1,$a1
	move	$s0,$a2
	# .loc	2, 758
 # ["exec_times": 0]
	li.d	$f4,1.230000000000000000e+02
 # ["exec_times": 32]
	mtc1	$a3,$f6
	cvt.d.w	$f8,$f6
 # ["exec_times": 32]
	mul.d	$f22,$f4,$f8
 # ["exec_times": 32]
	# .loc	2, 771
 # ["exec_times": 0]
	li.d	$f10,5.890486225480862092e-01
 # ["exec_times": 32]
	# .loc	2, 772
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 32]
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 32]
	div.d	$f12,$f16,$f10
 # ["exec_times": 32]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 32]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f20,$f0
	# .loc	2, 773
 # ["exec_times": 0]
	# .loc	2, 775
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 32]
uniform_testdata.L26:
	cqip	uniform_testdata.L40
 # ["cqip_pos": <L:uniform_testdata.L40,0>]
uniform_testdata.L40:
	pslice_entry	uniform_testdata.L40
 # ["pslice_entry_pos": <L:uniform_testdata.L40,0>]
	pslice_exit	uniform_testdata.L40
 # ["pslice_exit_pos": <L:uniform_testdata.L40,0>]
	spawn	uniform_testdata.L41
 # ["cqip_pos": <L:uniform_testdata.L41,0>]
	# .loc	2, 776
 # ["exec_times": 0]
	la	$t3,1320($sp)
 # ["exec_times": 96]
	li	$t4,8
 # ["exec_times": 96]
	mult	$t2,$t4
	mflo	$t5
 # ["exec_times": 96]
	addu	$t6,$t3,$t5
 # ["exec_times": 96]
	li.d	$f18,0.000000000000000000e+00
 # ["exec_times": 96]
	s.d	$f18,0($t6)
 # ["exec_times": 96]
	li	$t7,1
 # ["exec_times": 96]
	addu	$t2,$t2,$t7
 # ["exec_times": 96]
	li	$t8,3
 # ["exec_times": 96]
	sle	$t9,$t8,$t2
 # ["exec_times": 96]
	beqz	$t9,uniform_testdata.L26
 # ["exec_times": 96]
 # ["instr_profile": 96 64]
	nop	
	# .loc	2, 775
 # ["exec_times": 0]
	# .loc	2, 778
 # ["exec_times": 0]
	# .loc	2, 780
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 32]
uniform_testdata.L27:
	# .loc	2, 781
 # ["exec_times": 0]
	la	$a1,1344($sp)
 # ["exec_times": 96]
	li	$a2,8
 # ["exec_times": 96]
	mult	$a0,$a2
	mflo	$a3
 # ["exec_times": 96]
	addu	$v0,$a1,$a3
 # ["exec_times": 96]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 96]
	s.d	$f12,0($v0)
 # ["exec_times": 96]
	li	$v1,1
 # ["exec_times": 96]
	addu	$a0,$a0,$v1
 # ["exec_times": 96]
	li	$t0,3
 # ["exec_times": 96]
	sle	$t1,$t0,$a0
 # ["exec_times": 96]
	beqz	$t1,uniform_testdata.L27
 # ["exec_times": 96]
 # ["instr_profile": 96 64]
	nop	
	cqip	uniform_testdata.L41
 # ["cqip_pos": <L:uniform_testdata.L41,0>]
uniform_testdata.L41:
	pslice_entry	uniform_testdata.L41
 # ["pslice_entry_pos": <L:uniform_testdata.L41,0>]
	pslice_exit	uniform_testdata.L41
 # ["pslice_exit_pos": <L:uniform_testdata.L41,0>]
	spawn	uniform_testdata.L42
 # ["cqip_pos": <L:uniform_testdata.L42,0>]
	# .loc	2, 780
 # ["exec_times": 0]
	# .loc	2, 783
 # ["exec_times": 0]
	la	$t0,ubody_alloc
 # ["exec_times": 32]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 32]
 # ["proc_name": "ubody_alloc"]
 # ["call_overhead": 19]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	cqip	uniform_testdata.L42
 # ["cqip_pos": <L:uniform_testdata.L42,0>]
uniform_testdata.L42:
	pslice_entry	uniform_testdata.L42
 # ["pslice_entry_pos": <L:uniform_testdata.L42,0>]
	pslice_exit	uniform_testdata.L42
 # ["pslice_exit_pos": <L:uniform_testdata.L42,0>]
	spawn	uniform_testdata.L43
 # ["cqip_pos": <L:uniform_testdata.L43,0>]
	move	$s4,$v0
	# .loc	2, 784
 # ["exec_times": 0]
	move	$s3,$s4
 # ["exec_times": 32]
	# .loc	2, 786
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 32]
	slt	$t3,$t2,$s0
 # ["exec_times": 32]
	beqz	$t3,uniform_testdata.L34
 # ["exec_times": 32]
 # ["instr_profile": 32 0]
	nop	
	move	$s6,$zero
 # ["exec_times": 32]
uniform_testdata.L35:
	# .loc	2, 787
 # ["exec_times": 0]
	la	$t0,ubody_alloc
 # ["exec_times": 64]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "ubody_alloc"]
 # ["call_overhead": 19]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s5,$v0
	# .loc	2, 789
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 64]
	seq	$t5,$s5,$t4
 # ["exec_times": 64]
	beqz	$t5,uniform_testdata.L7
 # ["exec_times": 64]
 # ["instr_profile": 64 64]
	nop	
	# .loc	2, 790
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 0]
	la	$a0,__tmp_string_4
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
uniform_testdata.L7:
	# .loc	2, 791
 # ["exec_times": 0]
	li	$t6,128
 # ["exec_times": 64]
	addu	$t7,$s3,$t6
 # ["fields": "next"]
 # ["exec_times": 64]
	sw	$s5,0($t7)
 # ["exec_times": 64]
	# .loc	2, 792
 # ["exec_times": 0]
	move	$s3,$s5
 # ["exec_times": 64]
	# .loc	2, 793
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 64]
	addu	$t9,$s5,$t8
 # ["fields": "type"]
 # ["exec_times": 64]
	li	$a0,1
 # ["exec_times": 64]
	sh	$a0,0($t9)
 # ["exec_times": 64]
	# .loc	2, 794
 # ["exec_times": 0]
	li	$a1,8
 # ["exec_times": 64]
	addu	$a2,$s5,$a1
 # ["fields": "mass"]
 # ["exec_times": 64]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 64]
	mtc1	$s0,$f0
	cvt.d.w	$f2,$f0
 # ["exec_times": 64]
	div.d	$f4,$f14,$f2
 # ["exec_times": 64]
	s.d	$f4,0($a2)
 # ["exec_times": 64]
	# .loc	2, 795
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 64]
	mov.d	$f12,$f22
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "my_rand"]
 # ["call_overhead": 12]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f22,$f0
	# .loc	2, 796
 # ["exec_times": 0]
	la	$t0,xrand
 # ["exec_times": 64]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 64]
	li.d	$f14,9.989999999999999991e-01
 # ["exec_times": 64]
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "xrand"]
 # ["call_overhead": 6]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 797
 # ["exec_times": 0]
	la	$t0,pow
 # ["exec_times": 64]
	li.d	$f14,-6.666666666666666297e-01
 # ["exec_times": 64]
	mov.d	$f12,$f0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "pow"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	li.d	$f6,1.000000000000000000e+00
 # ["exec_times": 64]
	sub.d	$f12,$f0,$f6
 # ["exec_times": 64]
	# .loc	2, 798
 # ["exec_times": 0]
	li.d	$f24,1.000000000000000000e+00
 # ["exec_times": 64]
	la	$t0,sqrt
 # ["exec_times": 64]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	div.d	$f24,$f24,$f0
 # ["exec_times": 64]
	# .loc	2, 800
 # ["exec_times": 0]
	li.d	$f26,4.000000000000000000e+00
 # ["exec_times": 64]
	# .loc	2, 801
 # ["exec_times": 0]
	move	$s7,$zero
 # ["exec_times": 64]
uniform_testdata.L28:
	# .loc	2, 802
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 192]
	mov.d	$f12,$f22
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 192]
 # ["proc_name": "my_rand"]
 # ["call_overhead": 12]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f22,$f0
	# .loc	2, 803
 # ["exec_times": 0]
	la	$t0,xrand
 # ["exec_times": 192]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 192]
	li.d	$f14,9.989999999999999991e-01
 # ["exec_times": 192]
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 192]
 # ["proc_name": "xrand"]
 # ["call_overhead": 6]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	2, 804
 # ["exec_times": 0]
	li	$a3,16
 # ["exec_times": 192]
	addu	$a0,$s5,$a3
 # ["fields": "pos"]
 # ["exec_times": 192]
	li	$v0,8
 # ["exec_times": 192]
	mult	$s7,$v0
	mflo	$v1
 # ["exec_times": 192]
	addu	$t0,$a0,$v1
 # ["exec_times": 192]
	mul.d	$f8,$f26,$f24
 # ["exec_times": 192]
	s.d	$f8,0($t0)
 # ["exec_times": 192]
	li	$t1,1
 # ["exec_times": 192]
	addu	$s7,$s7,$t1
 # ["exec_times": 192]
	li	$t2,3
 # ["exec_times": 192]
	sle	$t3,$t2,$s7
 # ["exec_times": 192]
	beqz	$t3,uniform_testdata.L28
 # ["exec_times": 192]
 # ["instr_profile": 192 128]
	nop	
	# .loc	2, 807
 # ["exec_times": 0]
	# .loc	2, 809
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 64]
uniform_testdata.L29:
	# .loc	2, 810
 # ["exec_times": 0]
	la	$t4,1320($sp)
 # ["exec_times": 192]
	li	$t5,8
 # ["exec_times": 192]
	mult	$t2,$t5
	mflo	$t6
 # ["exec_times": 192]
	addu	$t7,$t4,$t6
 # ["exec_times": 192]
	la	$t8,1320($sp)
 # ["exec_times": 192]
	li	$t9,8
 # ["exec_times": 192]
	mult	$t2,$t9
	mflo	$a0
 # ["exec_times": 192]
	addu	$a1,$t8,$a0
 # ["exec_times": 192]
	l.d	$f10,0($a1)
 # ["exec_times": 192]
	li	$a2,16
 # ["exec_times": 192]
	addu	$a1,$s5,$a2
 # ["fields": "pos"]
 # ["exec_times": 192]
	li	$a3,8
 # ["exec_times": 192]
	mult	$t2,$a3
	mflo	$v0
 # ["exec_times": 192]
	addu	$v1,$a1,$v0
 # ["exec_times": 192]
	l.d	$f16,0($v1)
 # ["exec_times": 192]
	add.d	$f18,$f10,$f16
 # ["exec_times": 192]
	s.d	$f18,0($t7)
 # ["exec_times": 192]
	li	$t0,1
 # ["exec_times": 192]
	addu	$t2,$t2,$t0
 # ["exec_times": 192]
	li	$t1,3
 # ["exec_times": 192]
	sle	$t3,$t1,$t2
 # ["exec_times": 192]
	beqz	$t3,uniform_testdata.L29
 # ["exec_times": 192]
 # ["instr_profile": 192 128]
	nop	
	# .loc	2, 809
 # ["exec_times": 0]
	# .loc	2, 811
 # ["exec_times": 0]
uniform_testdata.L14:
	# .loc	2, 813
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 144]
	mov.d	$f12,$f22
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "my_rand"]
 # ["call_overhead": 12]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f22,$f0
	# .loc	2, 814
 # ["exec_times": 0]
	la	$t0,xrand
 # ["exec_times": 144]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 144]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 144]
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "xrand"]
 # ["call_overhead": 6]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	mov.d	$f30,$f0
	# .loc	2, 815
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 144]
	mov.d	$f12,$f22
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "my_rand"]
 # ["call_overhead": 12]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f22,$f0
	# .loc	2, 816
 # ["exec_times": 0]
	la	$t0,xrand
 # ["exec_times": 144]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 144]
	li.d	$f14,1.000000000000000056e-01
 # ["exec_times": 144]
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "xrand"]
 # ["call_overhead": 6]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	mov.d	$f28,$f0
	# .loc	2, 817
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 144]
	la	$a0,__tmp_string_6
 # ["exec_times": 144]
	mov.d	$f14,$f30
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f28,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 818
 # ["exec_times": 0]
	la	$t0,myprintf4
 # ["exec_times": 144]
	la	$a0,__tmp_string_7
 # ["exec_times": 144]
	mov.d	$f14,$f22
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "myprintf4"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	mul.d	$f26,$f30,$f30
 # ["exec_times": 144]
	la	$t0,pow
 # ["exec_times": 144]
	li.d	$f12,1.000000000000000000e+00
 # ["exec_times": 144]
	mul.d	$f14,$f30,$f30
 # ["exec_times": 144]
	sub.d	$f12,$f12,$f14
 # ["exec_times": 144]
	li.d	$f14,3.500000000000000000e+00
 # ["exec_times": 144]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "pow"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	mul.d	$f0,$f26,$f0
 # ["exec_times": 144]
	li	$t4,1
	c.lt.d	$f0,$f28
 # ["exec_times": 144]
	bc1t	uniform_testdata.L37
	nop	
	move	$t4,$zero
uniform_testdata.L37:
	bnez	$t4,uniform_testdata.L14
 # ["exec_times": 144]
 # ["instr_profile": 144 80]
	nop	
	# .loc	2, 821
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 64]
	li.d	$f12,2.000000000000000000e+00
 # ["exec_times": 64]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mul.d	$f26,$f0,$f30
 # ["exec_times": 64]
	la	$t0,pow
 # ["exec_times": 64]
	li.d	$f2,1.000000000000000000e+00
 # ["exec_times": 64]
	mul.d	$f4,$f24,$f24
 # ["exec_times": 64]
	add.d	$f12,$f2,$f4
 # ["exec_times": 64]
	li.d	$f14,2.500000000000000000e-01
 # ["exec_times": 64]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "pow"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	div.d	$f6,$f26,$f0
 # ["exec_times": 64]
	# .loc	2, 824
 # ["exec_times": 0]
	mul.d	$f24,$f20,$f6
 # ["exec_times": 64]
uniform_testdata.L17:
	# .loc	2, 827
 # ["exec_times": 0]
	move	$s7,$zero
 # ["exec_times": 130]
uniform_testdata.L30:
	# .loc	2, 828
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 390]
	mov.d	$f12,$f22
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 390]
 # ["proc_name": "my_rand"]
 # ["call_overhead": 12]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f22,$f0
	# .loc	2, 829
 # ["exec_times": 0]
	li	$t5,48
 # ["exec_times": 390]
	addu	$a2,$s5,$t5
 # ["fields": "vel"]
 # ["exec_times": 390]
	li	$t6,8
 # ["exec_times": 390]
	mult	$s7,$t6
	mflo	$t7
 # ["exec_times": 390]
	addu	$v1,$a2,$t7
 # ["exec_times": 390]
	sw	$v1,452($sp)
	la	$t0,xrand
 # ["exec_times": 390]
	li.d	$f12,-1.000000000000000000e+00
 # ["exec_times": 390]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 390]
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 390]
 # ["proc_name": "xrand"]
 # ["call_overhead": 6]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	lw	$v0,452($sp)
	s.d	$f0,0($v0)
 # ["exec_times": 390]
	li	$t8,1
 # ["exec_times": 390]
	addu	$s7,$s7,$t8
 # ["exec_times": 390]
	li	$t9,3
 # ["exec_times": 390]
	sle	$a0,$t9,$s7
 # ["exec_times": 390]
	beqz	$a0,uniform_testdata.L30
 # ["exec_times": 390]
 # ["instr_profile": 390 260]
	nop	
	# .loc	2, 831
 # ["exec_times": 0]
	# .loc	2, 833
 # ["exec_times": 0]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 130]
	# .loc	2, 834
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 130]
uniform_testdata.L31:
	# .loc	2, 835
 # ["exec_times": 0]
	li	$a2,48
 # ["exec_times": 390]
	addu	$v0,$s5,$a2
 # ["fields": "vel"]
 # ["exec_times": 390]
	li	$a3,8
 # ["exec_times": 390]
	mult	$a1,$a3
	mflo	$v1
 # ["exec_times": 390]
	addu	$v1,$v0,$v1
 # ["exec_times": 390]
	l.d	$f8,0($v1)
 # ["exec_times": 390]
	li	$t0,48
 # ["exec_times": 390]
	addu	$a3,$s5,$t0
 # ["fields": "vel"]
 # ["exec_times": 390]
	li	$t1,8
 # ["exec_times": 390]
	mult	$a1,$t1
	mflo	$t2
 # ["exec_times": 390]
	addu	$t3,$a3,$t2
 # ["exec_times": 390]
	l.d	$f10,0($t3)
 # ["exec_times": 390]
	mul.d	$f16,$f8,$f10
 # ["exec_times": 390]
	add.d	$f12,$f12,$f16
 # ["exec_times": 390]
	li	$t4,1
 # ["exec_times": 390]
	addu	$a1,$a1,$t4
 # ["exec_times": 390]
	li	$t5,3
 # ["exec_times": 390]
	sle	$t6,$t5,$a1
 # ["exec_times": 390]
	beqz	$t6,uniform_testdata.L31
 # ["exec_times": 390]
 # ["instr_profile": 390 260]
	nop	
	# .loc	2, 834
 # ["exec_times": 0]
	# .loc	2, 836
 # ["exec_times": 0]
	li.d	$f18,1.000000000000000000e+00
 # ["exec_times": 130]
	li	$t7,1
	c.lt.d	$f18,$f12
 # ["exec_times": 130]
	bc1t	uniform_testdata.L38
	nop	
	move	$t7,$zero
uniform_testdata.L38:
	bnez	$t7,uniform_testdata.L17
 # ["exec_times": 130]
 # ["instr_profile": 130 66]
	nop	
	# .loc	2, 838
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 64]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	div.d	$f12,$f24,$f0
 # ["exec_times": 64]
	# .loc	2, 839
 # ["exec_times": 0]
	# .loc	2, 841
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 64]
uniform_testdata.L32:
	# .loc	2, 842
 # ["exec_times": 0]
	li	$t9,48
 # ["exec_times": 192]
	addu	$t0,$s5,$t9
 # ["fields": "vel"]
 # ["exec_times": 192]
	li	$a0,8
 # ["exec_times": 192]
	mult	$t8,$a0
	mflo	$a1
 # ["exec_times": 192]
	addu	$a2,$t0,$a1
 # ["exec_times": 192]
	li	$a3,48
 # ["exec_times": 192]
	addu	$v1,$s5,$a3
 # ["fields": "vel"]
 # ["exec_times": 192]
	li	$v0,8
 # ["exec_times": 192]
	mult	$t8,$v0
	mflo	$t0
 # ["exec_times": 192]
	addu	$t0,$v1,$t0
 # ["exec_times": 192]
	l.d	$f14,0($t0)
 # ["exec_times": 192]
	mul.d	$f0,$f14,$f12
 # ["exec_times": 192]
	s.d	$f0,0($a2)
 # ["exec_times": 192]
	li	$t1,1
 # ["exec_times": 192]
	addu	$t8,$t8,$t1
 # ["exec_times": 192]
	li	$t2,3
 # ["exec_times": 192]
	sle	$t3,$t2,$t8
 # ["exec_times": 192]
	beqz	$t3,uniform_testdata.L32
 # ["exec_times": 192]
 # ["instr_profile": 192 128]
	nop	
	# .loc	2, 841
 # ["exec_times": 0]
	# .loc	2, 844
 # ["exec_times": 0]
	# .loc	2, 846
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 64]
uniform_testdata.L33:
	# .loc	2, 847
 # ["exec_times": 0]
	la	$t4,1344($sp)
 # ["exec_times": 192]
	li	$t5,8
 # ["exec_times": 192]
	mult	$t2,$t5
	mflo	$t6
 # ["exec_times": 192]
	addu	$t7,$t4,$t6
 # ["exec_times": 192]
	la	$t8,1344($sp)
 # ["exec_times": 192]
	li	$t9,8
 # ["exec_times": 192]
	mult	$t2,$t9
	mflo	$a0
 # ["exec_times": 192]
	addu	$a1,$t8,$a0
 # ["exec_times": 192]
	l.d	$f2,0($a1)
 # ["exec_times": 192]
	li	$a2,48
 # ["exec_times": 192]
	addu	$t1,$s5,$a2
 # ["fields": "vel"]
 # ["exec_times": 192]
	li	$a3,8
 # ["exec_times": 192]
	mult	$t2,$a3
	mflo	$v0
 # ["exec_times": 192]
	addu	$v1,$t1,$v0
 # ["exec_times": 192]
	l.d	$f4,0($v1)
 # ["exec_times": 192]
	add.d	$f6,$f2,$f4
 # ["exec_times": 192]
	s.d	$f6,0($t7)
 # ["exec_times": 192]
	li	$t0,1
 # ["exec_times": 192]
	addu	$t2,$t2,$t0
 # ["exec_times": 192]
	li	$t1,3
 # ["exec_times": 192]
	sle	$t3,$t1,$t2
 # ["exec_times": 192]
	beqz	$t3,uniform_testdata.L33
 # ["exec_times": 192]
 # ["instr_profile": 192 128]
	nop	
	# .loc	2, 846
 # ["exec_times": 0]
	# .loc	2, 848
 # ["exec_times": 0]
	li	$t4,1
 # ["exec_times": 64]
	addu	$s6,$s6,$t4
 # ["exec_times": 64]
	sle	$t5,$s0,$s6
 # ["exec_times": 64]
	beqz	$t5,uniform_testdata.L35
 # ["exec_times": 64]
 # ["instr_profile": 64 32]
	nop	
uniform_testdata.L39:
	j	uniform_testdata.__done36
 # ["exec_times": 32]
 # ["instr_profile": 32 32]
	nop	
uniform_testdata.L34:
	move	$s6,$zero
 # ["exec_times": 0]
uniform_testdata.__done36:
	cqip	uniform_testdata.L43
 # ["cqip_pos": <L:uniform_testdata.L43,0>]
uniform_testdata.L43:
	pslice_entry	uniform_testdata.L43
 # ["pslice_entry_pos": <L:uniform_testdata.L43,0>]
	pslice_exit	uniform_testdata.L43
 # ["pslice_exit_pos": <L:uniform_testdata.L43,0>]
	# .loc	2, 852
 # ["exec_times": 0]
	li	$t6,128
 # ["exec_times": 32]
	addu	$t7,$s3,$t6
 # ["fields": "next"]
 # ["exec_times": 32]
	la	$t8,0($zero)
 # ["exec_times": 32]
	sw	$t8,0($t7)
 # ["exec_times": 32]
	# .loc	2, 853
 # ["exec_times": 0]
	la	$t9,1368($sp)
 # ["exec_times": 32]
	li	$a0,128
 # ["exec_times": 32]
	addu	$a1,$s4,$a0
 # ["fields": "next"]
 # ["exec_times": 32]
	lw	$a2,0($a1)
 # ["exec_times": 32]
	sw	$a2,0($t9)
 # ["exec_times": 32]
	# .loc	2, 854
 # ["exec_times": 0]
	la	$a3,1372($sp)
 # ["exec_times": 32]
	sw	$s3,0($a3)
 # ["exec_times": 32]
	# .loc	2, 858
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$v0,1320($sp)
 # ["struct alignment": 64]
	la	$v1,0($s2)
	lw	$t0,0($v0)
	lw	$t1,4($v0)
	lw	$t2,8($v0)
	sw	$t0,0($v1)
	sw	$t1,4($v1)
	sw	$t2,8($v1)
	lw	$t3,12($v0)
	lw	$t4,16($v0)
	lw	$t5,20($v0)
	sw	$t3,12($v1)
	sw	$t4,16($v1)
	sw	$t5,20($v1)
	lw	$t6,24($v0)
	lw	$t7,28($v0)
	lw	$t8,32($v0)
	sw	$t6,24($v1)
	sw	$t7,28($v1)
	sw	$t8,32($v1)
	lw	$t9,36($v0)
	lw	$a0,40($v0)
	lw	$a1,44($v0)
	sw	$t9,36($v1)
	sw	$a0,40($v1)
	sw	$a1,44($v1)
	lw	$a2,48($v0)
	lw	$a3,52($v0)
	sw	$a2,48($v1)
	sw	$a3,52($v1)
	# END structure move
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
	l.d	$f20,40($sp)
 # ["header/trailer":]
	l.d	$f22,48($sp)
 # ["header/trailer":]
	l.d	$f24,56($sp)
 # ["header/trailer":]
	l.d	$f26,64($sp)
 # ["header/trailer":]
	l.d	$f28,72($sp)
 # ["header/trailer":]
	l.d	$f30,80($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 32]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	uniform_testdata 
	.text	
	.align	2
	.align	2
	.globl	stepsystem
	# .loc	2, 590
	.ent	stepsystem 
stepsystem:
	spawn	stepsystem.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
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
	.mask	0x80070000, -112
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 112, $31
 # ["header/trailer":]
	cqip	stepsystem.headerspawn
 # ["header/trailer":]
stepsystem.headerspawn:
 # ["header/trailer":]
	pslice_entry	stepsystem.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	pslice_exit	stepsystem.headerspawn
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 604
 # ["exec_times": 0]
	li	$t2,32
 # ["exec_times": 0]
	addu	$t3,$s1,$t2
 # ["fields": "root"]
 # ["exec_times": 0]
	lw	$t4,0($t3)
 # ["exec_times": 0]
	la	$t5,0($zero)
 # ["exec_times": 0]
	sne	$t6,$t4,$t5
 # ["exec_times": 0]
	beqz	$t6,stepsystem.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 605
 # ["exec_times": 0]
	spawn	stepsystem.L2
 # ["cqip_pos": <L:stepsystem.L2,0>]
	la	$t0,freetree1
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 0]
	addu	$t8,$s1,$t7
 # ["fields": "root"]
 # ["exec_times": 0]
	lw	$a0,0($t8)
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "freetree1"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 606
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 0]
	addu	$a0,$s1,$t9
 # ["fields": "root"]
 # ["exec_times": 0]
	la	$a1,0($zero)
 # ["exec_times": 0]
	sw	$a1,0($a0)
 # ["exec_times": 0]
stepsystem.L1:
	cqip	stepsystem.L2
 # ["cqip_pos": <L:stepsystem.L2,0>]
stepsystem.L2:
	pslice_entry	stepsystem.L2
 # ["pslice_entry_pos": <L:stepsystem.L2,0>]
	li	$t9,32
 # ["exec_times": 0]
	addu	$a0,$s1,$t9
 # ["fields": "root"]
 # ["exec_times": 0]
	la	$a1,0($zero)
 # ["exec_times": 0]
	pslice_exit	stepsystem.L2
 # ["pslice_exit_pos": <L:stepsystem.L2,0>]
	# .loc	2, 615
 # ["exec_times": 0]
	la	$t0,maketree
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	move	$a0,$s2
	lw	$a1,nbody
	move	$a2,$s1
	move	$a3,$s0
	move	$fp,$sp
	fst	$sp
	sw	$v0,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "maketree"]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 618
 # ["exec_times": 0]
	li	$a3,32
 # ["exec_times": 0]
	addu	$v1,$s1,$a3
 # ["fields": "root"]
 # ["exec_times": 0]
	sw	$v0,0($v1)
 # ["exec_times": 0]
	# .loc	2, 575
 # ["exec_times": 0]
	la	$t0,computegrav
 # ["exec_times": 0]
	move	$a0,$s1
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "computegrav"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 608
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	stepsystem 
	.text	
	.align	2
	.align	2
	.globl	old_main
	# .loc	2, 291
	.ent	old_main 
old_main:
	spawn	old_main.headerspawn
 # ["header/trailer":]
	la	$sp,-1856($sp)
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
	.mask	0x800f0000, -1856
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 1856, $31
 # ["header/trailer":]
	cqip	old_main.headerspawn
 # ["header/trailer":]
old_main.headerspawn:
 # ["header/trailer":]
	pslice_entry	old_main.headerspawn
 # ["header/trailer":]
	la	$sp,-1856($sp)
 # ["header/trailer":]
	pslice_exit	old_main.headerspawn
	spawn	old_main.L41
 # ["cqip_pos": <L:old_main.L41,0>]
	# .loc	2, 299
 # ["exec_times": 0]
	la	$s2,0($zero)
 # ["exec_times": 1]
	# .loc	2, 300
 # ["exec_times": 0]
	move	$s3,$zero
 # ["exec_times": 1]
	# .loc	2, 300
 # ["exec_times": 0]
	li	$t7,64
 # ["exec_times": 1]
	lw	$t8,NumNodes
	div	$s1,$t7,$t8
 # ["exec_times": 1]
	# .loc	2, 305
 # ["exec_times": 0]
	la	$t0,Srand
 # ["exec_times": 1]
	li	$a0,123
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "Srand"]
 # ["call_overhead": 5]
 # ["regs_used": 5]
	nop	
	# .loc	2, 308
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 1]
	li	$a0,552
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	cqip	old_main.L41
 # ["cqip_pos": <L:old_main.L41,0>]
old_main.L41:
	pslice_entry	old_main.L41
 # ["pslice_entry_pos": <L:old_main.L41,0>]
	pslice_exit	old_main.L41
 # ["pslice_exit_pos": <L:old_main.L41,0>]
	spawn	old_main.L42
 # ["cqip_pos": <L:old_main.L42,0>]
	move	$s0,$v0
 # ["exec_times": 1]
	# .loc	2, 309
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 1]
	addu	$a0,$s0,$t9
 # ["fields": "root"]
 # ["exec_times": 1]
	la	$a1,0($zero)
 # ["exec_times": 1]
	sw	$a1,0($a0)
 # ["exec_times": 1]
	# .loc	2, 310
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 1]
	addu	$v1,$s0,$a2
 # ["fields": "rmin"]
 # ["exec_times": 1]
	li.d	$f16,-2.000000000000000000e+00
 # ["exec_times": 1]
	s.d	$f16,0($v1)
 # ["exec_times": 1]
	# .loc	2, 311
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 1]
	addu	$v0,$s0,$a3
 # ["exec_times": 1]
	li.d	$f18,-2.000000000000000000e+00
 # ["exec_times": 1]
	s.d	$f18,0($v0)
 # ["exec_times": 1]
	# .loc	2, 312
 # ["exec_times": 0]
	li	$v1,16
 # ["exec_times": 1]
	addu	$t0,$s0,$v1
 # ["exec_times": 1]
	li.d	$f12,-2.000000000000000000e+00
 # ["exec_times": 1]
	s.d	$f12,0($t0)
 # ["exec_times": 1]
	# .loc	2, 313
 # ["exec_times": 0]
	li	$t1,24
 # ["exec_times": 1]
	addu	$t2,$s0,$t1
 # ["fields": "rsize"]
 # ["exec_times": 1]
	li.d	$f14,4.000000000000000000e+00
 # ["exec_times": 1]
	s.d	$f14,0($t2)
 # ["exec_times": 1]
	# .loc	2, 315
 # ["exec_times": 0]
	# .loc	2, 317
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 1]
old_main.L30:
	cqip	old_main.L42
 # ["cqip_pos": <L:old_main.L42,0>]
old_main.L42:
	pslice_entry	old_main.L42
 # ["pslice_entry_pos": <L:old_main.L42,0>]
	pslice_exit	old_main.L42
 # ["pslice_exit_pos": <L:old_main.L42,0>]
	spawn	old_main.L43
 # ["cqip_pos": <L:old_main.L43,0>]
	# .loc	2, 318
 # ["exec_times": 0]
	la	$t4,1808($sp)
 # ["exec_times": 3]
	li	$t5,8
 # ["exec_times": 3]
	mult	$t3,$t5
	mflo	$t6
 # ["exec_times": 3]
	addu	$t7,$t4,$t6
 # ["exec_times": 3]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 3]
	s.d	$f0,0($t7)
 # ["exec_times": 3]
	li	$t8,1
 # ["exec_times": 3]
	addu	$t3,$t3,$t8
 # ["exec_times": 3]
	li	$t9,3
 # ["exec_times": 3]
	sle	$a0,$t9,$t3
 # ["exec_times": 3]
	beqz	$a0,old_main.L30
 # ["exec_times": 3]
 # ["instr_profile": 3 2]
	nop	
	# .loc	2, 317
 # ["exec_times": 0]
	# .loc	2, 320
 # ["exec_times": 0]
	# .loc	2, 322
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 1]
old_main.L31:
	# .loc	2, 323
 # ["exec_times": 0]
	la	$a2,1784($sp)
 # ["exec_times": 3]
	li	$a3,8
 # ["exec_times": 3]
	mult	$a1,$a3
	mflo	$v0
 # ["exec_times": 3]
	addu	$v1,$a2,$v0
 # ["exec_times": 3]
	li.d	$f2,0.000000000000000000e+00
 # ["exec_times": 3]
	s.d	$f2,0($v1)
 # ["exec_times": 3]
	li	$t0,1
 # ["exec_times": 3]
	addu	$a1,$a1,$t0
 # ["exec_times": 3]
	li	$t1,3
 # ["exec_times": 3]
	sle	$t2,$t1,$a1
 # ["exec_times": 3]
	beqz	$t2,old_main.L31
 # ["exec_times": 3]
 # ["instr_profile": 3 2]
	nop	
	cqip	old_main.L43
 # ["cqip_pos": <L:old_main.L43,0>]
old_main.L43:
	pslice_entry	old_main.L43
 # ["pslice_entry_pos": <L:old_main.L43,0>]
	pslice_exit	old_main.L43
 # ["pslice_exit_pos": <L:old_main.L43,0>]
	# .loc	2, 322
 # ["exec_times": 0]
	# .loc	2, 327
 # ["exec_times": 0]
	move	$s3,$zero
 # ["exec_times": 1]
old_main.L34:
	# .loc	2, 327
 # ["exec_times": 0]
	# .loc	2, 329
 # ["exec_times": 0]
	li	$t3,32
 # ["exec_times": 32]
	lw	$t4,NumNodes
	div	$t5,$t3,$t4
 # ["exec_times": 32]
	div	$a1,$s3,$t5
 # ["exec_times": 32]
	# .loc	2, 331
 # ["exec_times": 0]
	la	$t0,uniform_testdata
 # ["exec_times": 32]
	li	$t6,32
 # ["exec_times": 32]
	lw	$t7,nbody
	div	$a2,$t7,$t6
 # ["exec_times": 32]
	li	$t8,1
 # ["exec_times": 32]
	addu	$a3,$s3,$t8
 # ["exec_times": 32]
	la	$a0,1192($sp)
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 32]
 # ["proc_name": "uniform_testdata"]
 # ["call_overhead": 2222]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 333
 # ["exec_times": 0]
	li	$t9,36
 # ["exec_times": 32]
	addu	$t0,$s0,$t9
 # ["fields": "bodytab"]
 # ["exec_times": 32]
	li	$a0,4
 # ["exec_times": 32]
	mult	$s3,$a0
	mflo	$a1
 # ["exec_times": 32]
	addu	$a2,$t0,$a1
 # ["exec_times": 32]
	la	$a3,1240($sp)
 # ["exec_times": 32]
	lw	$v0,0($a3)
 # ["exec_times": 32]
	sw	$v0,0($a2)
 # ["exec_times": 32]
	# .loc	2, 334
 # ["exec_times": 0]
	la	$v1,0($zero)
 # ["exec_times": 32]
	sne	$t0,$s2,$v1
 # ["exec_times": 32]
	beqz	$t0,old_main.L7
 # ["exec_times": 32]
 # ["instr_profile": 32 1]
	nop	
	# .loc	2, 335
 # ["exec_times": 0]
	li	$t1,128
 # ["exec_times": 31]
	addu	$t2,$s2,$t1
 # ["fields": "next"]
 # ["exec_times": 31]
	la	$t3,1240($sp)
 # ["exec_times": 31]
	lw	$t4,0($t3)
 # ["exec_times": 31]
	sw	$t4,0($t2)
 # ["exec_times": 31]
old_main.L7:
	# .loc	2, 336
 # ["exec_times": 0]
	la	$t5,1244($sp)
 # ["exec_times": 32]
	lw	$s2,0($t5)
 # ["exec_times": 32]
	# .loc	2, 337
 # ["exec_times": 0]
	# .loc	2, 339
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 32]
old_main.L32:
	# .loc	2, 340
 # ["exec_times": 0]
	la	$t7,1808($sp)
 # ["exec_times": 96]
	li	$t8,8
 # ["exec_times": 96]
	mult	$t6,$t8
	mflo	$t9
 # ["exec_times": 96]
	addu	$a0,$t7,$t9
 # ["exec_times": 96]
	la	$a1,1808($sp)
 # ["exec_times": 96]
	li	$a2,8
 # ["exec_times": 96]
	mult	$t6,$a2
	mflo	$a3
 # ["exec_times": 96]
	addu	$v0,$a1,$a3
 # ["exec_times": 96]
	l.d	$f4,0($v0)
 # ["exec_times": 96]
	la	$v1,1192($sp)
 # ["exec_times": 96]
	li	$t0,8
 # ["exec_times": 96]
	mult	$t6,$t0
	mflo	$t1
 # ["exec_times": 96]
	addu	$t2,$v1,$t1
 # ["exec_times": 96]
	l.d	$f6,0($t2)
 # ["exec_times": 96]
	add.d	$f8,$f4,$f6
 # ["exec_times": 96]
	s.d	$f8,0($a0)
 # ["exec_times": 96]
	li	$t3,1
 # ["exec_times": 96]
	addu	$t6,$t6,$t3
 # ["exec_times": 96]
	li	$t4,3
 # ["exec_times": 96]
	sle	$t5,$t4,$t6
 # ["exec_times": 96]
	beqz	$t5,old_main.L32
 # ["exec_times": 96]
 # ["instr_profile": 96 64]
	nop	
	# .loc	2, 339
 # ["exec_times": 0]
	# .loc	2, 342
 # ["exec_times": 0]
	# .loc	2, 344
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 32]
old_main.L33:
	# .loc	2, 345
 # ["exec_times": 0]
	la	$t7,1784($sp)
 # ["exec_times": 96]
	li	$t8,8
 # ["exec_times": 96]
	mult	$t6,$t8
	mflo	$t9
 # ["exec_times": 96]
	addu	$a0,$t7,$t9
 # ["exec_times": 96]
	la	$a1,1784($sp)
 # ["exec_times": 96]
	li	$a2,8
 # ["exec_times": 96]
	mult	$t6,$a2
	mflo	$a3
 # ["exec_times": 96]
	addu	$v0,$a1,$a3
 # ["exec_times": 96]
	l.d	$f10,0($v0)
 # ["exec_times": 96]
	la	$v1,1216($sp)
 # ["exec_times": 96]
	li	$t0,8
 # ["exec_times": 96]
	mult	$t6,$t0
	mflo	$t1
 # ["exec_times": 96]
	addu	$t2,$v1,$t1
 # ["exec_times": 96]
	l.d	$f16,0($t2)
 # ["exec_times": 96]
	add.d	$f18,$f10,$f16
 # ["exec_times": 96]
	s.d	$f18,0($a0)
 # ["exec_times": 96]
	li	$t3,1
 # ["exec_times": 96]
	addu	$t6,$t6,$t3
 # ["exec_times": 96]
	li	$t4,3
 # ["exec_times": 96]
	sle	$t5,$t4,$t6
 # ["exec_times": 96]
	beqz	$t5,old_main.L33
 # ["exec_times": 96]
 # ["instr_profile": 96 64]
	nop	
	# .loc	2, 344
 # ["exec_times": 0]
	# .loc	2, 346
 # ["exec_times": 0]
	li	$t6,1
 # ["exec_times": 32]
	addu	$s3,$s3,$t6
 # ["exec_times": 32]
	li	$t7,32
 # ["exec_times": 32]
	sle	$t8,$t7,$s3
 # ["exec_times": 32]
	beqz	$t8,old_main.L34
 # ["exec_times": 32]
 # ["instr_profile": 32 31]
	nop	
	# .loc	2, 352
 # ["exec_times": 0]
	spawn	old_main.L44
 # ["cqip_pos": <L:old_main.L44,0>]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_1
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 353
 # ["exec_times": 0]
	# .loc	2, 355
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 1]
old_main.L35:
	# .loc	2, 356
 # ["exec_times": 0]
	la	$a0,1808($sp)
 # ["exec_times": 3]
	li	$a1,8
 # ["exec_times": 3]
	mult	$t9,$a1
	mflo	$a2
 # ["exec_times": 3]
	addu	$a3,$a0,$a2
 # ["exec_times": 3]
	la	$v0,1808($sp)
 # ["exec_times": 3]
	li	$v1,8
 # ["exec_times": 3]
	mult	$t9,$v1
	mflo	$t0
 # ["exec_times": 3]
	addu	$t1,$v0,$t0
 # ["exec_times": 3]
	l.d	$f12,0($t1)
 # ["exec_times": 3]
	lw	$t2,nbody
	mtc1	$t2,$f14
	cvt.d.w	$f0,$f14
 # ["exec_times": 3]
	div.d	$f2,$f12,$f0
 # ["exec_times": 3]
	s.d	$f2,0($a3)
 # ["exec_times": 3]
	li	$t3,1
 # ["exec_times": 3]
	addu	$t9,$t9,$t3
 # ["exec_times": 3]
	li	$t4,3
 # ["exec_times": 3]
	sle	$t5,$t4,$t9
 # ["exec_times": 3]
	beqz	$t5,old_main.L35
 # ["exec_times": 3]
 # ["instr_profile": 3 2]
	nop	
	cqip	old_main.L44
 # ["cqip_pos": <L:old_main.L44,0>]
old_main.L44:
	pslice_entry	old_main.L44
 # ["pslice_entry_pos": <L:old_main.L44,0>]
	pslice_exit	old_main.L44
 # ["pslice_exit_pos": <L:old_main.L44,0>]
	# .loc	2, 355
 # ["exec_times": 0]
	# .loc	2, 358
 # ["exec_times": 0]
	# .loc	2, 360
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 1]
old_main.L36:
	# .loc	2, 361
 # ["exec_times": 0]
	la	$t7,1784($sp)
 # ["exec_times": 3]
	li	$t8,8
 # ["exec_times": 3]
	mult	$t6,$t8
	mflo	$t9
 # ["exec_times": 3]
	addu	$a0,$t7,$t9
 # ["exec_times": 3]
	la	$a1,1784($sp)
 # ["exec_times": 3]
	li	$a2,8
 # ["exec_times": 3]
	mult	$t6,$a2
	mflo	$a3
 # ["exec_times": 3]
	addu	$v0,$a1,$a3
 # ["exec_times": 3]
	l.d	$f4,0($v0)
 # ["exec_times": 3]
	lw	$v1,nbody
	mtc1	$v1,$f6
	cvt.d.w	$f8,$f6
 # ["exec_times": 3]
	div.d	$f10,$f4,$f8
 # ["exec_times": 3]
	s.d	$f10,0($a0)
 # ["exec_times": 3]
	li	$t0,1
 # ["exec_times": 3]
	addu	$t6,$t6,$t0
 # ["exec_times": 3]
	li	$t1,3
 # ["exec_times": 3]
	sle	$t2,$t1,$t6
 # ["exec_times": 3]
	beqz	$t2,old_main.L36
 # ["exec_times": 3]
 # ["instr_profile": 3 2]
	nop	
	# .loc	2, 360
 # ["exec_times": 0]
	# .loc	2, 364
 # ["exec_times": 0]
	move	$s3,$zero
 # ["exec_times": 1]
old_main.L37:
	# .loc	2, 365
 # ["exec_times": 0]
	la	$t3,1512($sp)
 # ["exec_times": 64]
	li	$t4,4
 # ["exec_times": 64]
	mult	$s3,$t4
	mflo	$t5
 # ["exec_times": 64]
	addu	$t6,$t3,$t5
 # ["exec_times": 64]
	move	$t7,$zero
 # ["exec_times": 64]
	sw	$t7,0($t6)
 # ["exec_times": 64]
	# .loc	2, 366
 # ["exec_times": 0]
	la	$t8,1256($sp)
 # ["exec_times": 64]
	li	$t9,4
 # ["exec_times": 64]
	mult	$s3,$t9
	mflo	$a0
 # ["exec_times": 64]
	addu	$a1,$t8,$a0
 # ["exec_times": 64]
	la	$a2,0($zero)
 # ["exec_times": 64]
	sw	$a2,0($a1)
 # ["exec_times": 64]
	li	$a3,1
 # ["exec_times": 64]
	addu	$s3,$s3,$a3
 # ["exec_times": 64]
	li	$v0,64
 # ["exec_times": 64]
	sle	$v1,$v0,$s3
 # ["exec_times": 64]
	beqz	$v1,old_main.L37
 # ["exec_times": 64]
 # ["instr_profile": 64 63]
	nop	
	# .loc	2, 370
 # ["exec_times": 0]
	li	$t0,36
 # ["exec_times": 1]
	addu	$t1,$s0,$t0
 # ["fields": "bodytab"]
 # ["exec_times": 1]
	lw	$s2,0($t1)
 # ["exec_times": 1]
	# .loc	2, 370
 # ["exec_times": 0]
	la	$t1,0($zero)
 # ["exec_times": 1]
	sne	$t2,$s2,$t1
 # ["exec_times": 1]
	beqz	$t2,old_main.L21
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
old_main.L20:
	spawn	old_main.L45
 # ["cqip_pos": <L:old_main.L45,0>]
	# .loc	2, 373
 # ["exec_times": 0]
	# .loc	2, 375
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 64]
old_main.L38:
	# .loc	2, 376
 # ["exec_times": 0]
	li	$t5,16
 # ["exec_times": 192]
	addu	$t3,$s2,$t5
 # ["fields": "pos"]
 # ["exec_times": 192]
	li	$t5,8
 # ["exec_times": 192]
	mult	$t4,$t5
	mflo	$t6
 # ["exec_times": 192]
	addu	$t7,$t3,$t6
 # ["exec_times": 192]
	li	$t8,16
 # ["exec_times": 192]
	addu	$t2,$s2,$t8
 # ["fields": "pos"]
 # ["exec_times": 192]
	li	$t9,8
 # ["exec_times": 192]
	mult	$t4,$t9
	mflo	$a0
 # ["exec_times": 192]
	addu	$a1,$t2,$a0
 # ["exec_times": 192]
	l.d	$f16,0($a1)
 # ["exec_times": 192]
	la	$a2,1808($sp)
 # ["exec_times": 192]
	li	$a3,8
 # ["exec_times": 192]
	mult	$t4,$a3
	mflo	$v0
 # ["exec_times": 192]
	addu	$v1,$a2,$v0
 # ["exec_times": 192]
	l.d	$f18,0($v1)
 # ["exec_times": 192]
	sub.d	$f12,$f16,$f18
 # ["exec_times": 192]
	s.d	$f12,0($t7)
 # ["exec_times": 192]
	li	$t0,1
 # ["exec_times": 192]
	addu	$t4,$t4,$t0
 # ["exec_times": 192]
	li	$t1,3
 # ["exec_times": 192]
	sle	$t2,$t1,$t4
 # ["exec_times": 192]
	beqz	$t2,old_main.L38
 # ["exec_times": 192]
 # ["instr_profile": 192 128]
	nop	
	# .loc	2, 375
 # ["exec_times": 0]
	# .loc	2, 378
 # ["exec_times": 0]
	# .loc	2, 380
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 64]
old_main.L39:
	# .loc	2, 381
 # ["exec_times": 0]
	li	$t4,48
 # ["exec_times": 192]
	addu	$t5,$s2,$t4
 # ["fields": "vel"]
 # ["exec_times": 192]
	li	$t6,8
 # ["exec_times": 192]
	mult	$t3,$t6
	mflo	$t6
 # ["exec_times": 192]
	addu	$t7,$t5,$t6
 # ["exec_times": 192]
	li	$t8,48
 # ["exec_times": 192]
	addu	$t4,$s2,$t8
 # ["fields": "vel"]
 # ["exec_times": 192]
	li	$t9,8
 # ["exec_times": 192]
	mult	$t3,$t9
	mflo	$a0
 # ["exec_times": 192]
	addu	$a1,$t4,$a0
 # ["exec_times": 192]
	l.d	$f14,0($a1)
 # ["exec_times": 192]
	la	$a2,1784($sp)
 # ["exec_times": 192]
	li	$a3,8
 # ["exec_times": 192]
	mult	$t3,$a3
	mflo	$v0
 # ["exec_times": 192]
	addu	$v1,$a2,$v0
 # ["exec_times": 192]
	l.d	$f0,0($v1)
 # ["exec_times": 192]
	sub.d	$f2,$f14,$f0
 # ["exec_times": 192]
	s.d	$f2,0($t7)
 # ["exec_times": 192]
	li	$t0,1
 # ["exec_times": 192]
	addu	$t3,$t3,$t0
 # ["exec_times": 192]
	li	$t1,3
 # ["exec_times": 192]
	sle	$t2,$t1,$t3
 # ["exec_times": 192]
	beqz	$t2,old_main.L39
 # ["exec_times": 192]
 # ["instr_profile": 192 128]
	nop	
	# .loc	2, 380
 # ["exec_times": 0]
	# .loc	2, 384
 # ["exec_times": 0]
	la	$t0,intcoord
 # ["exec_times": 64]
	la	$a0,1152($sp)
	move	$a1,$s2
	move	$a2,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "intcoord"]
 # ["call_overhead": 86]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 385
 # ["exec_times": 0]
	la	$t0,old_subindex
 # ["exec_times": 64]
	li	$t3,536870912
 # ["exec_times": 64]
	# BEGIN structure move in genCall
	la	$t4,1152($sp)
	lw	$a0,0($t4)
	lw	$a1,4($t4)
	lw	$a2,8($t4)
	lw	$a3,12($t4)
	# END structure move in genCall
	move	$fp,$sp
	fst	$sp
	sw	$t3,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "old_subindex"]
 # ["call_overhead": 61]
 # ["struct alignment": 0 32]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	li	$t5,3
 # ["exec_times": 64]
	sll	$s3,$v0,$t5
 # ["exec_times": 64]
	la	$t0,old_subindex
 # ["exec_times": 64]
	li	$t6,268435456
 # ["exec_times": 64]
	# BEGIN structure move in genCall
	la	$t7,1152($sp)
	lw	$a0,0($t7)
	lw	$a1,4($t7)
	lw	$a2,8($t7)
	lw	$a3,12($t7)
	# END structure move in genCall
	move	$fp,$sp
	fst	$sp
	sw	$t6,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "old_subindex"]
 # ["call_overhead": 56]
 # ["struct alignment": 0 32]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	addu	$s3,$s3,$v0
 # ["exec_times": 64]
	# .loc	2, 388
 # ["exec_times": 0]
	div	$s3,$s3,$s1
 # ["exec_times": 64]
	# .loc	2, 389
 # ["exec_times": 0]
	la	$t8,1512($sp)
 # ["exec_times": 64]
	li	$t9,4
 # ["exec_times": 64]
	mult	$s3,$t9
	mflo	$a0
 # ["exec_times": 64]
	addu	$a1,$t8,$a0
 # ["exec_times": 64]
	lw	$a2,0($a1)
 # ["exec_times": 64]
	li	$a3,1
 # ["exec_times": 64]
	addu	$v0,$a2,$a3
 # ["exec_times": 64]
	sw	$v0,0($a1)
 # ["exec_times": 64]
	# .loc	2, 390
 # ["exec_times": 0]
	li	$v1,132
 # ["exec_times": 64]
	addu	$t0,$s2,$v1
 # ["fields": "proc_next"]
 # ["exec_times": 64]
	la	$t1,1256($sp)
 # ["exec_times": 64]
	li	$t2,4
 # ["exec_times": 64]
	mult	$s3,$t2
	mflo	$t3
 # ["exec_times": 64]
	addu	$t4,$t1,$t3
 # ["exec_times": 64]
	lw	$t5,0($t4)
 # ["exec_times": 64]
	sw	$t5,0($t0)
 # ["exec_times": 64]
	# .loc	2, 391
 # ["exec_times": 0]
	la	$t6,1256($sp)
 # ["exec_times": 64]
	li	$t7,4
 # ["exec_times": 64]
	mult	$s3,$t7
	mflo	$t8
 # ["exec_times": 64]
	addu	$t9,$t6,$t8
 # ["exec_times": 64]
	sw	$s2,0($t9)
 # ["exec_times": 64]
	# .loc	2, 392
 # ["exec_times": 0]
	li	$a0,40
 # ["exec_times": 64]
	addu	$a1,$s2,$a0
 # ["fields": "proc"]
 # ["exec_times": 64]
	sw	$s3,0($a1)
 # ["exec_times": 64]
	# .loc	2, 370
 # ["exec_times": 0]
	li	$a2,128
 # ["exec_times": 64]
	addu	$a3,$s2,$a2
 # ["fields": "next"]
 # ["exec_times": 64]
	lw	$s2,0($a3)
 # ["exec_times": 64]
	# .loc	2, 370
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 64]
	sne	$v1,$s2,$v0
 # ["exec_times": 64]
	bnez	$v1,old_main.L20
 # ["exec_times": 64]
 # ["instr_profile": 64 63]
	nop	
old_main.L21:
	cqip	old_main.L45
 # ["cqip_pos": <L:old_main.L45,0>]
old_main.L45:
	pslice_entry	old_main.L45
 # ["pslice_entry_pos": <L:old_main.L45,0>]
	pslice_exit	old_main.L45
 # ["pslice_exit_pos": <L:old_main.L45,0>]
	spawn	old_main.L46
 # ["cqip_pos": <L:old_main.L46,0>]
	# .loc	2, 395
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 1]
	lw	$t1,NumNodes
	slt	$t2,$t0,$t1
 # ["exec_times": 1]
	beqz	$t2,old_main.L28
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	move	$s3,$zero
 # ["exec_times": 1]
old_main.L29:
	# .loc	2, 396
 # ["exec_times": 0]
	la	$t0,myprintf2
 # ["exec_times": 2]
	la	$a0,__tmp_string_2
 # ["exec_times": 2]
	la	$t3,1512($sp)
 # ["exec_times": 2]
	li	$t4,4
 # ["exec_times": 2]
	mult	$s3,$t4
	mflo	$t5
 # ["exec_times": 2]
	addu	$t6,$t3,$t5
 # ["exec_times": 2]
	lw	$a2,0($t6)
 # ["exec_times": 2]
	move	$a1,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 2]
 # ["proc_name": "myprintf2"]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 397
 # ["exec_times": 0]
	li	$t7,292
 # ["exec_times": 2]
	addu	$t6,$s0,$t7
 # ["fields": "bodiesperproc"]
 # ["exec_times": 2]
	li	$t8,4
 # ["exec_times": 2]
	mult	$s3,$t8
	mflo	$t9
 # ["exec_times": 2]
	addu	$a0,$t6,$t9
 # ["exec_times": 2]
	la	$a1,1256($sp)
 # ["exec_times": 2]
	li	$a2,4
 # ["exec_times": 2]
	mult	$s3,$a2
	mflo	$a3
 # ["exec_times": 2]
	addu	$v0,$a1,$a3
 # ["exec_times": 2]
	lw	$v1,0($v0)
 # ["exec_times": 2]
	sw	$v1,0($a0)
 # ["exec_times": 2]
	li	$t0,1
 # ["exec_times": 2]
	addu	$s3,$s3,$t0
 # ["exec_times": 2]
	lw	$t1,NumNodes
	sle	$t2,$t1,$s3
 # ["exec_times": 2]
	beqz	$t2,old_main.L29
 # ["exec_times": 2]
 # ["instr_profile": 2 1]
	nop	
old_main.L40:
	j	old_main.__done38
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
old_main.L28:
	move	$s3,$zero
 # ["exec_times": 0]
old_main.__done38:
	cqip	old_main.L46
 # ["cqip_pos": <L:old_main.L46,0>]
old_main.L46:
	pslice_entry	old_main.L46
 # ["pslice_entry_pos": <L:old_main.L46,0>]
	pslice_exit	old_main.L46
 # ["pslice_exit_pos": <L:old_main.L46,0>]
	# .loc	2, 401
 # ["exec_times": 0]
	move	$s3,$zero
 # ["exec_times": 1]
	# .loc	2, 403
 # ["exec_times": 0]
	li.d	$f4,0.000000000000000000e+00
 # ["exec_times": 1]
	# .loc	2, 404
 # ["exec_times": 0]
	move	$s3,$zero
 # ["exec_times": 1]
	# .loc	2, 406
 # ["exec_times": 0]
	li	$t3,10
 # ["exec_times": 1]
	# .loc	2, 432
 # ["exec_times": 0]
	move	$v0,$s0
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g66]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	old_main 
	.text	
	.align	2
	.align	2
	.globl	my_free
	# .loc	2, 668
	.ent	my_free 
my_free:
	spawn	my_free.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 64, $31
 # ["header/trailer":]
	cqip	my_free.headerspawn
 # ["header/trailer":]
my_free.headerspawn:
 # ["header/trailer":]
	pslice_entry	my_free.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	my_free.headerspawn
	# .loc	2, 669
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	addu	$t4,$a0,$t3
 # ["fields": "type"]
 # ["exec_times": 0]
	lh	$t1,0($t4)
 # ["exec_times": 0]
	li	$t5,1
 # ["exec_times": 0]
	seq	$t6,$t1,$t5
 # ["exec_times": 0]
	beqz	$t6,my_free.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 670
 # ["exec_times": 0]
	li	$t7,128
 # ["exec_times": 0]
	addu	$t8,$a0,$t7
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t9,bp_free_list
	sw	$t9,0($t8)
 # ["exec_times": 0]
	# .loc	2, 671
 # ["exec_times": 0]
	sw	$a0,bp_free_list
	j	my_free.__done2
 # ["exec_times": 0]
	nop	
my_free.L1:
	# .loc	2, 674
 # ["exec_times": 0]
	li	$a1,80
 # ["exec_times": 0]
	addu	$a1,$a0,$a1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t2,cp_free_list
	sw	$t2,0($a1)
 # ["exec_times": 0]
	# .loc	2, 675
 # ["exec_times": 0]
	sw	$a0,cp_free_list
my_free.__done2:
	# .loc	2, 677
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	my_free 
	.text	
	.align	2
	.align	2
	.globl	ubody_alloc
	# .loc	2, 714
	.ent	ubody_alloc 
ubody_alloc:
	spawn	ubody_alloc.headerspawn
 # ["header/trailer":]
	la	$sp,-80($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -80
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 80, $31
 # ["header/trailer":]
	cqip	ubody_alloc.headerspawn
 # ["header/trailer":]
ubody_alloc.headerspawn:
 # ["header/trailer":]
	pslice_entry	ubody_alloc.headerspawn
 # ["header/trailer":]
	la	$sp,-80($sp)
 # ["header/trailer":]
	pslice_exit	ubody_alloc.headerspawn
	move	$s0,$a0
	# .loc	2, 717
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 96]
	li	$a0,136
 # ["exec_times": 96]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 96]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 719
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 96]
	addu	$a3,$v0,$a2
 # ["fields": "type"]
 # ["exec_times": 96]
	li	$v1,1
 # ["exec_times": 96]
	sh	$v1,0($a3)
 # ["exec_times": 96]
	# .loc	2, 720
 # ["exec_times": 0]
	li	$v1,40
 # ["exec_times": 96]
	addu	$t0,$v0,$v1
 # ["fields": "proc"]
 # ["exec_times": 96]
	sw	$s0,0($t0)
 # ["exec_times": 96]
	# .loc	2, 721
 # ["exec_times": 0]
	li	$t1,132
 # ["exec_times": 96]
	addu	$t2,$v0,$t1
 # ["fields": "proc_next"]
 # ["exec_times": 96]
	la	$t3,0($zero)
 # ["exec_times": 96]
	sw	$t3,0($t2)
 # ["exec_times": 96]
	# .loc	2, 722
 # ["exec_times": 0]
	li	$t4,44
 # ["exec_times": 96]
	addu	$t5,$v0,$t4
 # ["fields": "new_proc"]
 # ["exec_times": 96]
	sw	$s0,0($t5)
 # ["exec_times": 96]
	# .loc	2, 723
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 96]
 # ["instr_ret": t:g60]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	ubody_alloc 
	.text	
	.align	2
	.align	2
	.globl	freetree
	# .loc	2, 621
	.ent	freetree 
freetree:
	spawn	freetree.headerspawn
 # ["header/trailer":]
	la	$sp,-120($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -120
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 120, $31
 # ["header/trailer":]
	cqip	freetree.headerspawn
 # ["header/trailer":]
freetree.headerspawn:
 # ["header/trailer":]
	pslice_entry	freetree.headerspawn
 # ["header/trailer":]
	la	$sp,-120($sp)
 # ["header/trailer":]
	pslice_exit	freetree.headerspawn
	move	$s0,$a0
	# .loc	2, 631
 # ["exec_times": 0]
	la	$t9,0($zero)
 # ["exec_times": 0]
	seq	$t6,$s0,$t9
 # ["exec_times": 0]
	beqz	$t6,freetree.L1
 # ["exec_times": 0]
	nop	
freetree.L8:
	j	freetree.__done6
 # ["exec_times": 0]
	nop	
freetree.L1:
	move	$a0,$zero
 # ["exec_times": 0]
	addu	$a1,$s0,$a0
 # ["fields": "type"]
 # ["exec_times": 0]
	lh	$t7,0($a1)
 # ["exec_times": 0]
	li	$a2,1
 # ["exec_times": 0]
	seq	$t6,$t7,$a2
 # ["exec_times": 0]
freetree.__done6:
	beqz	$t6,freetree.L2
 # ["exec_times": 0]
	nop	
	# .loc	2, 632
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
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
freetree.L2:
	# .loc	2, 635
 # ["exec_times": 0]
	li	$s1,7
 # ["exec_times": 0]
freetree.L7:
	# .loc	2, 636
 # ["exec_times": 0]
	li	$a3,48
 # ["exec_times": 0]
	addu	$t8,$s0,$a3
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$v0,4
 # ["exec_times": 0]
	mult	$s1,$v0
	mflo	$v1
 # ["exec_times": 0]
	addu	$t0,$t8,$v1
 # ["exec_times": 0]
	lw	$a0,0($t0)
 # ["exec_times": 0]
	# .loc	2, 637
 # ["exec_times": 0]
	la	$t1,0($zero)
 # ["exec_times": 0]
	sne	$t2,$a0,$t1
 # ["exec_times": 0]
	beqz	$t2,freetree.L5
 # ["exec_times": 0]
	nop	
	# .loc	2, 642
 # ["exec_times": 0]
	la	$t0,freetree
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "freetree"]
 # ["regs_used": 5]
	nop	
freetree.L5:
	li	$t3,-1
 # ["exec_times": 0]
	addu	$s1,$s1,$t3
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
	slt	$t5,$s1,$t4
 # ["exec_times": 0]
	beqz	$t5,freetree.L7
 # ["exec_times": 0]
	nop	
	# .loc	2, 657
 # ["exec_times": 0]
	la	$t0,my_free
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "my_free"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 659
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
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	freetree 
	.text	
	.align	2
	.align	2
	.globl	freetree1
	# .loc	2, 612
	.ent	freetree1 
freetree1:
	spawn	freetree1.headerspawn
 # ["header/trailer":]
	la	$sp,-24($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -24
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 24, $31
 # ["header/trailer":]
	cqip	freetree1.headerspawn
 # ["header/trailer":]
freetree1.headerspawn:
 # ["header/trailer":]
	pslice_entry	freetree1.headerspawn
 # ["header/trailer":]
	la	$sp,-24($sp)
 # ["header/trailer":]
	pslice_exit	freetree1.headerspawn
	# .loc	2, 616
 # ["exec_times": 0]
	la	$t0,freetree
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "freetree"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 617
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	freetree1 
	.text	
	.align	2
	.align	2
	.globl	entry
	# .loc	2, 237
	.ent	entry 
entry:
	spawn	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -48
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 48, $31
 # ["header/trailer":]
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L2
 # ["cqip_pos": <L:entry.L2,0>]
	# .loc	2, 248
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
	nop	
	# .loc	2, 260
 # ["exec_times": 0]
	la	$t0,myprintf2
 # ["exec_times": 1]
	la	$a0,__tmp_string_0
 # ["exec_times": 1]
	lw	$a1,nbody
	lw	$a2,NumNodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf2"]
 # ["regs_used": 5 6 7]
	nop	
	cqip	entry.L2
 # ["cqip_pos": <L:entry.L2,0>]
entry.L2:
	pslice_entry	entry.L2
 # ["pslice_entry_pos": <L:entry.L2,0>]
	pslice_exit	entry.L2
 # ["pslice_exit_pos": <L:entry.L2,0>]
	spawn	entry.L3
 # ["cqip_pos": <L:entry.L3,0>]
	# .loc	2, 267
 # ["exec_times": 0]
	la	$t0,old_main
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "old_main"]
 # ["call_overhead": 94321]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L3
 # ["cqip_pos": <L:entry.L3,0>]
entry.L3:
	pslice_entry	entry.L3
 # ["pslice_entry_pos": <L:entry.L3,0>]
	pslice_exit	entry.L3
 # ["pslice_exit_pos": <L:entry.L3,0>]
	# .loc	2, 281
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 1]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	entry 
	.text	
	.align	2
	.align	2
	.globl	Srand
	# .loc	2, 285
	.ent	Srand 
Srand:
	spawn	Srand.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -32
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 32, $31
 # ["header/trailer":]
	cqip	Srand.headerspawn
 # ["header/trailer":]
Srand.headerspawn:
 # ["header/trailer":]
	pslice_entry	Srand.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	pslice_exit	Srand.headerspawn
	# .loc	2, 286
 # ["exec_times": 0]
	la	$t0,rand
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "rand"]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	li	$t6,123
 # ["exec_times": 1]
	div	$v0,$v0,$t6
 # ["exec_times": 1]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	Srand 
	.text	
	.align	2
	.align	2
	.globl	old_subindex
	# .loc	2, 1576
	.ent	old_subindex 
old_subindex:
	spawn	old_subindex.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 112, $31
 # ["header/trailer":]
	cqip	old_subindex.headerspawn
 # ["header/trailer":]
old_subindex.headerspawn:
 # ["header/trailer":]
	pslice_entry	old_subindex.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	pslice_exit	old_subindex.headerspawn
	lw	$t8,92($sp)
	sw	$a0,96($sp)
	sw	$a1,100($sp)
	sw	$a2,104($sp)
	sw	$a3,108($sp)
	# .loc	2, 1579
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 128]
	# .loc	2, 1580
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 128]
old_subindex.L4:
	# .loc	2, 1581
 # ["exec_times": 0]
	la	$a2,96($sp)
 # ["exec_times": 384]
	li	$a3,4
 # ["exec_times": 384]
	mult	$a1,$a3
	mflo	$v1
 # ["exec_times": 384]
	addu	$v1,$a2,$v1
 # ["exec_times": 384]
	lw	$t9,0($v1)
 # ["exec_times": 384]
	and	$t7,$t9,$t8
 # ["exec_times": 384]
	move	$t0,$zero
 # ["exec_times": 384]
	sne	$t1,$t7,$t0
 # ["exec_times": 384]
	beqz	$t1,old_subindex.L3
 # ["exec_times": 384]
 # ["instr_profile": 384 190]
	nop	
	# .loc	2, 1582
 # ["exec_times": 0]
	li	$t2,8
 # ["exec_times": 194]
	li	$t3,1
 # ["exec_times": 194]
	addu	$a0,$a1,$t3
 # ["exec_times": 194]
	sra	$t4,$t2,$a0
 # ["exec_times": 194]
	addu	$v0,$v0,$t4
 # ["exec_times": 194]
old_subindex.L3:
	li	$t5,1
 # ["exec_times": 384]
	addu	$a1,$a1,$t5
 # ["exec_times": 384]
	li	$t6,3
 # ["exec_times": 384]
	sle	$t7,$t6,$a1
 # ["exec_times": 384]
	beqz	$t7,old_subindex.L4
 # ["exec_times": 384]
 # ["instr_profile": 384 256]
	nop	
	# .loc	2, 1583
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 128]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	old_subindex 
	.text	
	.align	2
	.align	2
	.globl	body_alloc
	# .loc	2, 685
	.ent	body_alloc 
body_alloc:
	spawn	body_alloc.headerspawn
 # ["header/trailer":]
	la	$sp,-304($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -304
 # ["header/trailer":]
	s.d	$f20,16($sp)
 # ["header/trailer":]
	s.d	$f22,24($sp)
 # ["header/trailer":]
	s.d	$f24,32($sp)
 # ["header/trailer":]
	s.d	$f26,40($sp)
 # ["header/trailer":]
	s.d	$f28,48($sp)
 # ["header/trailer":]
	s.d	$f30,56($sp)
 # ["header/trailer":]
	.fmask	0x55500000, -304
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 304, $31
 # ["header/trailer":]
	cqip	body_alloc.headerspawn
 # ["header/trailer":]
body_alloc.headerspawn:
 # ["header/trailer":]
	pslice_entry	body_alloc.headerspawn
 # ["header/trailer":]
	la	$sp,-304($sp)
 # ["header/trailer":]
	pslice_exit	body_alloc.headerspawn
	l.d	$f22,248($sp)
	l.d	$f24,256($sp)
	l.d	$f26,264($sp)
	l.d	$f28,272($sp)
	l.d	$f30,280($sp)
	move	$s0,$a0
	mtc1	$a2,$f14
	mtc1	$a3,$f15
	mov.d	$f20,$f14
	# .loc	2, 688
 # ["exec_times": 0]
	la	$a1,0($zero)
 # ["exec_times": 0]
	lw	$a2,bp_free_list
	sne	$a3,$a2,$a1
 # ["exec_times": 0]
	beqz	$a3,body_alloc.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 689
 # ["exec_times": 0]
	spawn	body_alloc.L4
 # ["cqip_pos": <L:body_alloc.L4,0>]
	lw	$v0,bp_free_list
	# .loc	2, 690
 # ["exec_times": 0]
	li	$v1,128
 # ["exec_times": 0]
	lw	$t0,bp_free_list
	addu	$t0,$t0,$v1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t1,0($t0)
 # ["exec_times": 0]
	sw	$t1,bp_free_list
	j	body_alloc.__done2
 # ["exec_times": 0]
	nop	
body_alloc.L1:
	spawn	body_alloc.L3
 # ["cqip_pos": <L:body_alloc.L3,0>]
	# .loc	2, 692
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 0]
	li	$a0,136
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
body_alloc.__done2:
	cqip	body_alloc.L4
 # ["cqip_pos": <L:body_alloc.L4,0>]
body_alloc.L4:
	pslice_entry	body_alloc.L4
 # ["pslice_entry_pos": <L:body_alloc.L4,0>]
	pslice_exit	body_alloc.L4
 # ["pslice_exit_pos": <L:body_alloc.L4,0>]
	cqip	body_alloc.L3
 # ["cqip_pos": <L:body_alloc.L3,0>]
body_alloc.L3:
	pslice_entry	body_alloc.L3
 # ["pslice_entry_pos": <L:body_alloc.L3,0>]
	pslice_exit	body_alloc.L3
 # ["pslice_exit_pos": <L:body_alloc.L3,0>]
	# .loc	2, 694
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 0]
	addu	$t3,$v0,$t2
 # ["fields": "type"]
 # ["exec_times": 0]
	li	$t4,1
 # ["exec_times": 0]
	sh	$t4,0($t3)
 # ["exec_times": 0]
	# .loc	2, 695
 # ["exec_times": 0]
	li	$t5,40
 # ["exec_times": 0]
	addu	$t6,$v0,$t5
 # ["fields": "proc"]
 # ["exec_times": 0]
	sw	$s0,0($t6)
 # ["exec_times": 0]
	# .loc	2, 696
 # ["exec_times": 0]
	li	$t7,16
 # ["exec_times": 0]
	addu	$a0,$v0,$t7
 # ["fields": "pos"]
 # ["exec_times": 0]
	s.d	$f20,0($a0)
 # ["exec_times": 0]
	# .loc	2, 697
 # ["exec_times": 0]
	li	$t8,24
 # ["exec_times": 0]
	addu	$t9,$v0,$t8
 # ["exec_times": 0]
	s.d	$f30,0($t9)
 # ["exec_times": 0]
	# .loc	2, 698
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 0]
	addu	$a1,$v0,$a0
 # ["exec_times": 0]
	s.d	$f28,0($a1)
 # ["exec_times": 0]
	# .loc	2, 699
 # ["exec_times": 0]
	li	$a2,48
 # ["exec_times": 0]
	addu	$t9,$v0,$a2
 # ["fields": "vel"]
 # ["exec_times": 0]
	s.d	$f26,0($t9)
 # ["exec_times": 0]
	# .loc	2, 700
 # ["exec_times": 0]
	li	$a3,56
 # ["exec_times": 0]
	addu	$v1,$v0,$a3
 # ["exec_times": 0]
	s.d	$f24,0($v1)
 # ["exec_times": 0]
	# .loc	2, 701
 # ["exec_times": 0]
	li	$v1,64
 # ["exec_times": 0]
	addu	$t0,$v0,$v1
 # ["exec_times": 0]
	s.d	$f22,0($t0)
 # ["exec_times": 0]
	# .loc	2, 702
 # ["exec_times": 0]
	li	$t1,72
 # ["exec_times": 0]
	addu	$t8,$v0,$t1
 # ["fields": "acc"]
 # ["exec_times": 0]
	l.d	$f6,240($sp)
	s.d	$f6,0($t8)
 # ["exec_times": 0]
	# .loc	2, 703
 # ["exec_times": 0]
	li	$t2,80
 # ["exec_times": 0]
	addu	$t3,$v0,$t2
 # ["exec_times": 0]
	l.d	$f4,232($sp)
	s.d	$f4,0($t3)
 # ["exec_times": 0]
	# .loc	2, 704
 # ["exec_times": 0]
	li	$t4,88
 # ["exec_times": 0]
	addu	$t5,$v0,$t4
 # ["exec_times": 0]
	l.d	$f2,224($sp)
	s.d	$f2,0($t5)
 # ["exec_times": 0]
	# .loc	2, 705
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 0]
	addu	$t7,$v0,$t6
 # ["fields": "mass"]
 # ["exec_times": 0]
	l.d	$f0,216($sp)
	s.d	$f0,0($t7)
 # ["exec_times": 0]
	# .loc	2, 707
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	l.d	$f20,16($sp)
 # ["header/trailer":]
	l.d	$f22,24($sp)
 # ["header/trailer":]
	l.d	$f24,32($sp)
 # ["header/trailer":]
	l.d	$f26,40($sp)
 # ["header/trailer":]
	l.d	$f28,48($sp)
 # ["header/trailer":]
	l.d	$f30,56($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g60]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	body_alloc 
	.text	
	.align	2
	.align	2
	.globl	cell_alloc
	# .loc	2, 729
	.ent	cell_alloc 
cell_alloc:
	spawn	cell_alloc.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -128
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	cell_alloc.headerspawn
 # ["header/trailer":]
cell_alloc.headerspawn:
 # ["header/trailer":]
	pslice_entry	cell_alloc.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	cell_alloc.headerspawn
	move	$s0,$a0
	# .loc	2, 733
 # ["exec_times": 0]
	la	$t5,0($zero)
 # ["exec_times": 0]
	lw	$t6,cp_free_list
	sne	$t7,$t6,$t5
 # ["exec_times": 0]
	beqz	$t7,cell_alloc.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 734
 # ["exec_times": 0]
	lw	$v0,cp_free_list
	# .loc	2, 735
 # ["exec_times": 0]
	lw	$t3,cp_free_list
	li	$t8,80
 # ["exec_times": 0]
	addu	$t9,$t3,$t8
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t2,0($t9)
 # ["exec_times": 0]
	sw	$t2,cp_free_list
	j	cell_alloc.__done4
 # ["exec_times": 0]
	nop	
cell_alloc.L1:
	# .loc	2, 737
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 0]
	li	$a0,88
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
cell_alloc.__done4:
	# .loc	2, 739
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	addu	$a1,$v0,$a0
 # ["fields": "type"]
 # ["exec_times": 0]
	li	$a2,2
 # ["exec_times": 0]
	sh	$a2,0($a1)
 # ["exec_times": 0]
	# .loc	2, 740
 # ["exec_times": 0]
	li	$a3,40
 # ["exec_times": 0]
	addu	$v1,$v0,$a3
 # ["fields": "proc"]
 # ["exec_times": 0]
	sw	$s0,0($v1)
 # ["exec_times": 0]
	# .loc	2, 741
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
cell_alloc.L5:
	# .loc	2, 742
 # ["exec_times": 0]
	li	$t0,48
 # ["exec_times": 0]
	addu	$t4,$v0,$t0
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 0]
	mult	$v1,$t1
	mflo	$t2
 # ["exec_times": 0]
	addu	$t3,$t4,$t2
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 0]
	sw	$t4,0($t3)
 # ["exec_times": 0]
	li	$t5,1
 # ["exec_times": 0]
	addu	$v1,$v1,$t5
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 0]
	sle	$t7,$t6,$v1
 # ["exec_times": 0]
	beqz	$t7,cell_alloc.L5
 # ["exec_times": 0]
	nop	
	# .loc	2, 744
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g62]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	cell_alloc 
	.text	
	.align	2
	.align	2
	.globl	grav
	# .loc	2, 905
	.ent	grav 
grav:
	spawn	grav.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
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
	.mask	0x800f0000, -128
 # ["header/trailer":]
	s.d	$f20,24($sp)
 # ["header/trailer":]
	s.d	$f22,32($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -128
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	grav.headerspawn
 # ["header/trailer":]
grav.headerspawn:
 # ["header/trailer":]
	pslice_entry	grav.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	grav.headerspawn
	spawn	grav.spawntail3
	l.d	$f22,96($sp)
	lw	$s2,108($sp)
	mov.d	$f20,$f12
	move	$s1,$a2
	move	$s0,$a3
	# .loc	2, 907
 # ["exec_times": 0]
	move	$s3,$zero
 # ["exec_times": 0]
	# .loc	2, 911
 # ["exec_times": 0]
	la	$t8,0($zero)
 # ["exec_times": 0]
	sne	$t9,$s0,$t8
 # ["exec_times": 0]
	beqz	$t9,grav.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 912
 # ["exec_times": 0]
grav.L1:
	# .loc	2, 914
 # ["exec_times": 0]
	# .loc	2, 918
 # ["exec_times": 0]
	la	$a0,0($zero)
 # ["exec_times": 0]
	sne	$a1,$s0,$a0
 # ["exec_times": 0]
	beqz	$a1,grav.L2
 # ["exec_times": 0]
	nop	
grav.L5:
	# .loc	2, 919
 # ["exec_times": 0]
	la	$t0,gravstep
 # ["exec_times": 0]
	mov.d	$f12,$f20
	move	$a2,$s1
	move	$a3,$s0
	move	$fp,$sp
	fst	$sp
	sw	$s2,-20($sp)
	s.d	$f22,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "gravstep"]
 # ["regs_used": 32 7 8]
	nop	
	# .loc	2, 920
 # ["exec_times": 0]
	li	$a2,132
 # ["exec_times": 0]
	addu	$a3,$s0,$a2
 # ["fields": "proc_next"]
 # ["exec_times": 0]
	lw	$s0,0($a3)
 # ["exec_times": 0]
	# .loc	2, 921
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 0]
	addu	$s3,$s3,$v0
 # ["exec_times": 0]
	la	$v1,0($zero)
 # ["exec_times": 0]
	sne	$t0,$s0,$v1
 # ["exec_times": 0]
	bnez	$t0,grav.L5
 # ["exec_times": 0]
	nop	
grav.L2:
	# .loc	2, 926
 # ["exec_times": 0]
	cqip	grav.spawntail3
grav.spawntail3:
	pslice_entry	grav.spawntail3
	pslice_exit	grav.spawntail3
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
	l.d	$f20,24($sp)
 # ["header/trailer":]
	l.d	$f22,32($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	grav 
	.text	
	.align	2
	.align	2
	.globl	hackgrav
	# .loc	2, 1155
	.ent	hackgrav 
hackgrav:
	spawn	hackgrav.headerspawn
 # ["header/trailer":]
	la	$sp,-336($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -336
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 336, $31
 # ["header/trailer":]
	cqip	hackgrav.headerspawn
 # ["header/trailer":]
hackgrav.headerspawn:
 # ["header/trailer":]
	pslice_entry	hackgrav.headerspawn
 # ["header/trailer":]
	la	$sp,-336($sp)
 # ["header/trailer":]
	pslice_exit	hackgrav.headerspawn
	spawn	hackgrav.L10
 # ["cqip_pos": <L:hackgrav.L10,0>]
	lw	$a1,316($sp)
	move	$s0,$a0
	mtc1	$a2,$f14
	mtc1	$a3,$f15
	# .loc	2, 1160
 # ["exec_times": 0]
	la	$t3,248($sp)
 # ["fields": "pskip"]
 # ["exec_times": 0]
	sw	$s0,0($t3)
 # ["exec_times": 0]
	# .loc	2, 1161
 # ["exec_times": 0]
	# .loc	2, 1163
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
hackgrav.L7:
	# .loc	2, 1164
 # ["exec_times": 0]
	la	$t5,256($sp)
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 0]
	mult	$t4,$t6
	mflo	$t7
 # ["exec_times": 0]
	addu	$t8,$t5,$t7
 # ["exec_times": 0]
	li	$t9,16
 # ["exec_times": 0]
	addu	$t1,$s0,$t9
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 0]
	mult	$t4,$a0
	mflo	$a2
 # ["exec_times": 0]
	addu	$a2,$t1,$a2
 # ["exec_times": 0]
	l.d	$f4,0($a2)
 # ["exec_times": 0]
	s.d	$f4,0($t8)
 # ["exec_times": 0]
	li	$a3,1
 # ["exec_times": 0]
	addu	$t4,$t4,$a3
 # ["exec_times": 0]
	li	$v0,3
 # ["exec_times": 0]
	sle	$v1,$v0,$t4
 # ["exec_times": 0]
	beqz	$v1,hackgrav.L7
 # ["exec_times": 0]
	nop	
	cqip	hackgrav.L10
 # ["cqip_pos": <L:hackgrav.L10,0>]
hackgrav.L10:
	pslice_entry	hackgrav.L10
 # ["pslice_entry_pos": <L:hackgrav.L10,0>]
	pslice_exit	hackgrav.L10
 # ["pslice_exit_pos": <L:hackgrav.L10,0>]
	spawn	hackgrav.L11
 # ["cqip_pos": <L:hackgrav.L11,0>]
	# .loc	2, 1163
 # ["exec_times": 0]
	# .loc	2, 1166
 # ["exec_times": 0]
	la	$t0,280($sp)
 # ["exec_times": 0]
	li.d	$f4,0.000000000000000000e+00
 # ["exec_times": 0]
	s.d	$f4,0($t0)
 # ["exec_times": 0]
	# .loc	2, 1167
 # ["exec_times": 0]
	# .loc	2, 1169
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
hackgrav.L8:
	# .loc	2, 1170
 # ["exec_times": 0]
	la	$t2,288($sp)
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$t1,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	li.d	$f6,0.000000000000000000e+00
 # ["exec_times": 0]
	s.d	$f6,0($t5)
 # ["exec_times": 0]
	li	$t6,1
 # ["exec_times": 0]
	addu	$t1,$t1,$t6
 # ["exec_times": 0]
	li	$t7,3
 # ["exec_times": 0]
	sle	$t8,$t7,$t1
 # ["exec_times": 0]
	beqz	$t8,hackgrav.L8
 # ["exec_times": 0]
	nop	
	cqip	hackgrav.L11
 # ["cqip_pos": <L:hackgrav.L11,0>]
hackgrav.L11:
	pslice_entry	hackgrav.L11
 # ["pslice_entry_pos": <L:hackgrav.L11,0>]
	pslice_exit	hackgrav.L11
 # ["pslice_exit_pos": <L:hackgrav.L11,0>]
	spawn	hackgrav.L12
 # ["cqip_pos": <L:hackgrav.L12,0>]
	# .loc	2, 1169
 # ["exec_times": 0]
	# .loc	2, 1172
 # ["exec_times": 0]
	mul.d	$f14,$f14,$f14
 # ["exec_times": 0]
	# .loc	2, 1173
 # ["exec_times": 0]
	la	$t0,walksub
 # ["exec_times": 0]
	li.d	$f8,1.000000000000000000e+00
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	la	$a0,248($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f8,-24($sp)
	# BEGIN structure move
	la	$t9,248($sp)
	la	$s1,-88($sp)
	lw	$v0,0($t9)
	lw	$v1,4($t9)
	lw	$t1,8($t9)
	sw	$v0,0($s1)
	sw	$v1,4($s1)
	sw	$t1,8($s1)
	lw	$v0,12($t9)
	lw	$v1,16($t9)
	lw	$t1,20($t9)
	sw	$v0,12($s1)
	sw	$v1,16($s1)
	sw	$t1,20($s1)
	lw	$t1,24($t9)
	lw	$t2,28($t9)
	lw	$t3,32($t9)
	sw	$t1,24($s1)
	sw	$t2,28($s1)
	sw	$t3,32($s1)
	lw	$t3,36($t9)
	lw	$t4,40($t9)
	lw	$t5,44($t9)
	sw	$t3,36($s1)
	sw	$t4,40($s1)
	sw	$t5,44($s1)
	lw	$t6,48($t9)
	lw	$t7,52($t9)
	lw	$v0,56($t9)
	sw	$t6,48($s1)
	sw	$t7,52($s1)
	sw	$v0,56($s1)
	lw	$v0,60($t9)
	sw	$v0,60($s1)
	# END structure move
	sw	$t8,-92($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "walksub"]
 # ["struct alignment": 4 64]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
	cqip	hackgrav.L12
 # ["cqip_pos": <L:hackgrav.L12,0>]
hackgrav.L12:
	pslice_entry	hackgrav.L12
 # ["pslice_entry_pos": <L:hackgrav.L12,0>]
	pslice_exit	hackgrav.L12
 # ["pslice_exit_pos": <L:hackgrav.L12,0>]
	# .loc	2, 1174
 # ["exec_times": 0]
	li	$a1,120
 # ["exec_times": 0]
	addu	$a2,$s0,$a1
 # ["fields": "phi"]
 # ["exec_times": 0]
	la	$a3,280($sp)
 # ["exec_times": 0]
	l.d	$f10,0($a3)
 # ["exec_times": 0]
	s.d	$f10,0($a2)
 # ["exec_times": 0]
	# .loc	2, 1176
 # ["exec_times": 0]
	# .loc	2, 1178
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
hackgrav.L9:
	# .loc	2, 1179
 # ["exec_times": 0]
	li	$v1,96
 # ["exec_times": 0]
	addu	$t2,$s0,$v1
 # ["fields": "new_acc"]
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 0]
	mult	$v0,$t0
	mflo	$t1
 # ["exec_times": 0]
	addu	$t2,$t2,$t1
 # ["exec_times": 0]
	la	$t3,288($sp)
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 0]
	mult	$v0,$t4
	mflo	$t5
 # ["exec_times": 0]
	addu	$t6,$t3,$t5
 # ["exec_times": 0]
	l.d	$f16,0($t6)
 # ["exec_times": 0]
	s.d	$f16,0($t2)
 # ["exec_times": 0]
	li	$t7,1
 # ["exec_times": 0]
	addu	$v0,$v0,$t7
 # ["exec_times": 0]
	li	$t8,3
 # ["exec_times": 0]
	sle	$t9,$t8,$v0
 # ["exec_times": 0]
	beqz	$t9,hackgrav.L9
 # ["exec_times": 0]
	nop	
	# .loc	2, 1178
 # ["exec_times": 0]
	# .loc	2, 1182
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
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	hackgrav 
	.text	
	.align	2
	.align	2
	.globl	loadtree
	# .loc	2, 1351
	.ent	loadtree 
loadtree:
	spawn	loadtree.headerspawn
 # ["header/trailer":]
	la	$sp,-264($sp)
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
	.mask	0x801f0000, -264
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 264, $31
 # ["header/trailer":]
	cqip	loadtree.headerspawn
 # ["header/trailer":]
loadtree.headerspawn:
 # ["header/trailer":]
	pslice_entry	loadtree.headerspawn
 # ["header/trailer":]
	la	$sp,-264($sp)
 # ["header/trailer":]
	pslice_exit	loadtree.headerspawn
	spawn	loadtree.spawntail4
	spawn	loadtree.spawntail5
	lw	$s2,232($sp)
	lw	$s3,236($sp)
	lw	$s1,240($sp)
	move	$s0,$a0
	sw	$a1,244($sp)
	sw	$a2,248($sp)
	sw	$a3,252($sp)
	# .loc	2, 1356
 # ["exec_times": 0]
	la	$t9,0($zero)
 # ["exec_times": 0]
	seq	$a0,$s1,$t9
 # ["exec_times": 0]
	beqz	$a0,loadtree.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 1357
 # ["exec_times": 0]
	move	$v0,$s0
	cqip	loadtree.spawntail4
loadtree.spawntail4:
	pslice_entry	loadtree.spawntail4
	pslice_exit	loadtree.spawntail4
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
 # ["exec_times": 0]
 # ["instr_ret": t:g58]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
loadtree.L1:
	# .loc	2, 1359
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	sne	$a2,$s3,$a1
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 0]
	seq	$v0,$a2,$a3
 # ["exec_times": 0]
	beqz	$v0,loadtree.L2
 # ["exec_times": 0]
	nop	
	# .loc	2, 1360
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,2
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1361
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
loadtree.L2:
	# .loc	2, 1363
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
	addu	$t0,$s1,$v1
 # ["fields": "type"]
 # ["exec_times": 0]
	lh	$t5,0($t0)
 # ["exec_times": 0]
	li	$t1,1
 # ["exec_times": 0]
	seq	$t2,$t5,$t1
 # ["exec_times": 0]
	beqz	$t2,loadtree.L3
 # ["exec_times": 0]
	nop	
	# .loc	2, 1369
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	# .loc	2, 1370
 # ["exec_times": 0]
	la	$t0,cell_alloc
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "cell_alloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s4,$v0
	# .loc	2, 1371
 # ["exec_times": 0]
	la	$t0,subindex
 # ["exec_times": 0]
	move	$a0,$s1
	move	$a1,$s2
	move	$a2,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "subindex"]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 1373
 # ["exec_times": 0]
	li	$t3,48
 # ["exec_times": 0]
	addu	$t6,$s4,$t3
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$t4,4
 # ["exec_times": 0]
	mult	$v0,$t4
	mflo	$t5
 # ["exec_times": 0]
	addu	$t6,$t6,$t5
 # ["exec_times": 0]
	sw	$s1,0($t6)
 # ["exec_times": 0]
	# .loc	2, 1374
 # ["exec_times": 0]
	move	$s1,$s4
 # ["exec_times": 0]
loadtree.L3:
	# .loc	2, 1377
 # ["exec_times": 0]
	la	$t0,old_subindex
 # ["exec_times": 0]
	# BEGIN structure move in genCall
	la	$t7,244($sp)
	lw	$a0,0($t7)
	lw	$a1,4($t7)
	lw	$a2,8($t7)
	lw	$a3,12($t7)
	# END structure move in genCall
	move	$fp,$sp
	fst	$sp
	sw	$s3,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "old_subindex"]
 # ["struct alignment": 0 32]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 1378
 # ["exec_times": 0]
	li	$t8,48
 # ["exec_times": 0]
	addu	$t8,$s1,$t8
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 0]
	mult	$v0,$t9
	mflo	$a0
 # ["exec_times": 0]
	addu	$a1,$t8,$a0
 # ["exec_times": 0]
	lw	$v1,0($a1)
 # ["exec_times": 0]
	# .loc	2, 1379
 # ["exec_times": 0]
	li	$a3,48
 # ["exec_times": 0]
	addu	$t7,$s1,$a3
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$t0,4
 # ["exec_times": 0]
	mult	$v0,$t0
	mflo	$t0
 # ["exec_times": 0]
	addu	$s4,$t7,$t0
 # ["exec_times": 0]
	la	$t0,loadtree
 # ["exec_times": 0]
	li	$t1,1
 # ["exec_times": 0]
	sra	$t1,$s3,$t1
 # ["exec_times": 0]
	move	$a0,$s0
	# BEGIN structure move in genCall
	la	$t2,244($sp)
	lw	$a1,0($t2)
	lw	$a2,4($t2)
	lw	$a3,8($t2)
	move	$fp,$sp
	fst	$sp
	la	$t3,0($sp)
	lw	$t4,12($t2)
	sw	$t4,-4($t3)
	# END structure move in genCall
	sw	$v1,-24($sp)
	sw	$t1,-28($sp)
	sw	$s2,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "loadtree"]
 # ["struct alignment": 1 32]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s4)
 # ["exec_times": 0]
	# .loc	2, 1381
 # ["exec_times": 0]
	move	$v0,$s1
	cqip	loadtree.spawntail5
loadtree.spawntail5:
	pslice_entry	loadtree.spawntail5
	pslice_exit	loadtree.spawntail5
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
 # ["exec_times": 0]
 # ["instr_ret": t:g58]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	loadtree 
	.text	
	.align	2
	.align	2
	.globl	expandbox
	# .loc	2, 1242
	.ent	expandbox 
expandbox:
	spawn	expandbox.headerspawn
 # ["header/trailer":]
	la	$sp,-624($sp)
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
	.mask	0x80070000, -624
 # ["header/trailer":]
	s.d	$f20,24($sp)
 # ["header/trailer":]
	.fmask	0x00100000, -624
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 624, $31
 # ["header/trailer":]
	cqip	expandbox.headerspawn
 # ["header/trailer":]
expandbox.headerspawn:
 # ["header/trailer":]
	pslice_entry	expandbox.headerspawn
 # ["header/trailer":]
	la	$sp,-624($sp)
 # ["header/trailer":]
	pslice_exit	expandbox.headerspawn
	spawn	expandbox.spawntail6
	move	$s2,$a0
	move	$s1,$a1
	# .loc	2, 1251
 # ["exec_times": 0]
	la	$t0,ic_test
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ic_test"]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
	# .loc	2, 1252
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	sne	$t9,$s0,$t8
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	seq	$a1,$t9,$a0
 # ["exec_times": 0]
	beqz	$a1,expandbox.L1
 # ["exec_times": 0]
	nop	
expandbox.L4:
	# .loc	2, 1253
 # ["exec_times": 0]
	li	$a2,24
 # ["exec_times": 0]
	addu	$a3,$s1,$a2
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f20,0($a3)
 # ["exec_times": 0]
	# .loc	2, 1255
 # ["exec_times": 0]
	li.d	$f4,1.000000000000000000e+03
 # ["exec_times": 0]
	li	$v0,1
	c.lt.d	$f20,$f4
 # ["exec_times": 0]
	bc1t	expandbox.L15
	nop	
	move	$v0,$zero
expandbox.L15:
	move	$v1,$zero
 # ["exec_times": 0]
	seq	$t0,$v0,$v1
 # ["exec_times": 0]
	beqz	$t0,expandbox.L5
 # ["exec_times": 0]
	nop	
	# .loc	2, 1256
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,999
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1257
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
expandbox.L5:
	# .loc	2, 1259
 # ["exec_times": 0]
	# .loc	2, 1261
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
expandbox.L13:
	# .loc	2, 1262
 # ["exec_times": 0]
	la	$t2,560($sp)
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	mult	$t1,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 0]
	mult	$t1,$t6
	mflo	$t7
 # ["exec_times": 0]
	addu	$t8,$s1,$t7
 # ["exec_times": 0]
	l.d	$f6,0($t8)
 # ["exec_times": 0]
	li.d	$f8,5.000000000000000000e-01
 # ["exec_times": 0]
	mul.d	$f10,$f8,$f20
 # ["exec_times": 0]
	add.d	$f16,$f6,$f10
 # ["exec_times": 0]
	s.d	$f16,0($t5)
 # ["exec_times": 0]
	li	$t9,1
 # ["exec_times": 0]
	addu	$t1,$t1,$t9
 # ["exec_times": 0]
	li	$a0,3
 # ["exec_times": 0]
	sle	$a1,$a0,$t1
 # ["exec_times": 0]
	beqz	$a1,expandbox.L13
 # ["exec_times": 0]
	nop	
	# .loc	2, 1261
 # ["exec_times": 0]
	# .loc	2, 1269
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
expandbox.L14:
	# .loc	2, 1270
 # ["exec_times": 0]
	li	$a2,16
 # ["exec_times": 0]
	addu	$t5,$s2,$a2
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	mult	$v0,$a3
	mflo	$v1
 # ["exec_times": 0]
	addu	$v1,$t5,$v1
 # ["exec_times": 0]
	l.d	$f18,0($v1)
 # ["exec_times": 0]
	la	$t0,560($sp)
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 0]
	mult	$v0,$t1
	mflo	$t2
 # ["exec_times": 0]
	addu	$t3,$t0,$t2
 # ["exec_times": 0]
	l.d	$f12,0($t3)
 # ["exec_times": 0]
	li	$t4,1
	c.lt.d	$f18,$f12
 # ["exec_times": 0]
	bc1t	expandbox.L16
	nop	
	move	$t4,$zero
expandbox.L16:
	beqz	$t4,expandbox.L10
 # ["exec_times": 0]
	nop	
	# .loc	2, 1272
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	mult	$v0,$t5
	mflo	$t6
 # ["exec_times": 0]
	addu	$t7,$s1,$t6
 # ["exec_times": 0]
	l.d	$f14,0($t7)
 # ["exec_times": 0]
	# .loc	2, 1273
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 0]
	mult	$v0,$t8
	mflo	$t9
 # ["exec_times": 0]
	addu	$a0,$s1,$t9
 # ["exec_times": 0]
	sub.d	$f0,$f14,$f20
 # ["exec_times": 0]
	s.d	$f0,0($a0)
 # ["exec_times": 0]
expandbox.L10:
	li	$a1,1
 # ["exec_times": 0]
	addu	$v0,$v0,$a1
 # ["exec_times": 0]
	li	$a2,3
 # ["exec_times": 0]
	sle	$a3,$a2,$v0
 # ["exec_times": 0]
	beqz	$a3,expandbox.L14
 # ["exec_times": 0]
	nop	
	# .loc	2, 1276
 # ["exec_times": 0]
	li	$v0,24
 # ["exec_times": 0]
	addu	$v1,$s1,$v0
 # ["fields": "rsize"]
 # ["exec_times": 0]
	li.d	$f2,2.000000000000000000e+00
 # ["exec_times": 0]
	mul.d	$f4,$f2,$f20
 # ["exec_times": 0]
	s.d	$f4,0($v1)
 # ["exec_times": 0]
	# .loc	2, 1279
 # ["exec_times": 0]
	li	$t0,24
 # ["exec_times": 0]
	addu	$t1,$s1,$t0
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f20,0($t1)
 # ["exec_times": 0]
	# .loc	2, 1281
 # ["exec_times": 0]
	li	$t2,32
 # ["exec_times": 0]
	addu	$t3,$s1,$t2
 # ["fields": "root"]
 # ["exec_times": 0]
	lw	$t4,0($t3)
 # ["exec_times": 0]
	la	$t5,0($zero)
 # ["exec_times": 0]
	sne	$t6,$t4,$t5
 # ["exec_times": 0]
	beqz	$t6,expandbox.L11
 # ["exec_times": 0]
	nop	
	# .loc	2, 1283
 # ["exec_times": 0]
	la	$t0,cell_alloc
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "cell_alloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
	# .loc	2, 1285
 # ["exec_times": 0]
	la	$t0,intcoord1
 # ["exec_times": 0]
	la	$t7,560($sp)
 # ["exec_times": 0]
	l.d	$f14,0($t7)
 # ["exec_times": 0]
	la	$t8,568($sp)
 # ["exec_times": 0]
	l.d	$f6,0($t8)
 # ["exec_times": 0]
	la	$t9,576($sp)
 # ["exec_times": 0]
	l.d	$f8,0($t9)
 # ["exec_times": 0]
	la	$a0,592($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f6,-24($sp)
	s.d	$f8,-32($sp)
	sw	$s1,-36($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "intcoord1"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 1287
 # ["exec_times": 0]
	la	$a0,604($sp)
 # ["exec_times": 0]
	lh	$t6,0($a0)
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	sne	$a2,$t6,$a1
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 0]
	seq	$v0,$a2,$a3
 # ["exec_times": 0]
	beqz	$v0,expandbox.L12
 # ["exec_times": 0]
	nop	
	# .loc	2, 1288
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,1
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1289
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
expandbox.L12:
	# .loc	2, 1291
 # ["exec_times": 0]
	la	$t0,old_subindex
 # ["exec_times": 0]
	li	$v1,536870912
 # ["exec_times": 0]
	# BEGIN structure move in genCall
	la	$t1,592($sp)
	lw	$a0,0($t1)
	lw	$a1,4($t1)
	lw	$a2,8($t1)
	lw	$a3,12($t1)
	# END structure move in genCall
	move	$fp,$sp
	fst	$sp
	sw	$v1,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "old_subindex"]
 # ["struct alignment": 0 32]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 1292
 # ["exec_times": 0]
	li	$t1,48
 # ["exec_times": 0]
	addu	$t7,$s0,$t1
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 0]
	mult	$v0,$t2
	mflo	$t3
 # ["exec_times": 0]
	addu	$t4,$t7,$t3
 # ["exec_times": 0]
	li	$t5,32
 # ["exec_times": 0]
	addu	$t6,$s1,$t5
 # ["fields": "root"]
 # ["exec_times": 0]
	lw	$t7,0($t6)
 # ["exec_times": 0]
	sw	$t7,0($t4)
 # ["exec_times": 0]
	# .loc	2, 1293
 # ["exec_times": 0]
	li	$t8,32
 # ["exec_times": 0]
	addu	$t9,$s1,$t8
 # ["fields": "root"]
 # ["exec_times": 0]
	sw	$s0,0($t9)
 # ["exec_times": 0]
	# .loc	2, 1294
 # ["exec_times": 0]
	la	$t0,ic_test
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ic_test"]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
expandbox.L11:
	move	$a0,$zero
 # ["exec_times": 0]
	sne	$a1,$s0,$a0
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 0]
	seq	$a3,$a1,$a2
 # ["exec_times": 0]
	bnez	$a3,expandbox.L4
 # ["exec_times": 0]
	nop	
expandbox.L1:
	# .loc	2, 1297
 # ["exec_times": 0]
	cqip	expandbox.spawntail6
expandbox.spawntail6:
	pslice_entry	expandbox.spawntail6
	pslice_exit	expandbox.spawntail6
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	l.d	$f20,24($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	expandbox 
	.text	
	.align	2
	.align	2
	.globl	intcoord1
	# .loc	2, 1391
	.ent	intcoord1 
intcoord1:
	spawn	intcoord1.headerspawn
 # ["header/trailer":]
	la	$sp,-448($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -448
 # ["header/trailer":]
	s.d	$f20,8($sp)
 # ["header/trailer":]
	s.d	$f22,16($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -448
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 448, $31
 # ["header/trailer":]
	cqip	intcoord1.headerspawn
 # ["header/trailer":]
intcoord1.headerspawn:
 # ["header/trailer":]
	pslice_entry	intcoord1.headerspawn
 # ["header/trailer":]
	la	$sp,-448($sp)
 # ["header/trailer":]
	pslice_exit	intcoord1.headerspawn
	l.d	$f20,416($sp)
	l.d	$f22,424($sp)
	lw	$t6,412($sp)
	mtc1	$a2,$f14
	spawn	intcoord1.L22
 # ["cqip_pos": <L:intcoord1.L22,0>]
	mtc1	$a3,$f15
	# .loc	2, 1402
 # ["exec_times": 0]
	la	$t7,396($sp)
 # ["exec_times": 0]
	li	$t8,1
 # ["exec_times": 0]
	sh	$t8,0($t7)
 # ["exec_times": 0]
	# .loc	2, 1404
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
	addu	$t3,$t6,$t9
 # ["fields": "rmin"]
 # ["exec_times": 0]
	l.d	$f4,0($t3)
 # ["exec_times": 0]
	sub.d	$f4,$f14,$f4
 # ["exec_times": 0]
	li	$a1,24
 # ["exec_times": 0]
	addu	$a1,$t6,$a1
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f6,0($a1)
 # ["exec_times": 0]
	div.d	$f8,$f4,$f6
 # ["exec_times": 0]
	# .loc	2, 1405
 # ["exec_times": 0]
	li.d	$f10,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t4,1
	c.le.d	$f10,$f8
 # ["exec_times": 0]
	bc1t	intcoord1.L13
	nop	
	move	$t4,$zero
intcoord1.L13:
	cqip	intcoord1.L22
 # ["cqip_pos": <L:intcoord1.L22,0>]
intcoord1.L22:
	pslice_entry	intcoord1.L22
 # ["pslice_entry_pos": <L:intcoord1.L22,0>]
	pslice_exit	intcoord1.L22
 # ["pslice_exit_pos": <L:intcoord1.L22,0>]
	spawn	intcoord1.L23
 # ["cqip_pos": <L:intcoord1.L23,0>]
	bnez	$t4,intcoord1.L1
 # ["exec_times": 0]
	nop	
intcoord1.L19:
	j	intcoord1.__done7
 # ["exec_times": 0]
	nop	
intcoord1.L1:
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t4,1
	c.lt.d	$f8,$f16
 # ["exec_times": 0]
	bc1t	intcoord1.L14
	nop	
	move	$t4,$zero
intcoord1.L14:
intcoord1.__done7:
	beqz	$t4,intcoord1.L2
 # ["exec_times": 0]
	nop	
	# .loc	2, 1406
 # ["exec_times": 0]
	la	$a2,384($sp)
 # ["exec_times": 0]
	li.d	$f18,1.073741824000000000e+09
 # ["exec_times": 0]
	mul.d	$f12,$f18,$f8
 # ["exec_times": 0]
	cvt.w.d	$f14,$f12
	mfc1	$a3,$f14
 # ["exec_times": 0]
	mtc1	$a3,$f0
	cvt.d.w	$f2,$f0
 # ["exec_times": 0]
	cvt.w.d	$f4,$f2
	mfc1	$v0,$f4
 # ["exec_times": 0]
	sw	$v0,0($a2)
 # ["exec_times": 0]
	j	intcoord1.__done8
 # ["exec_times": 0]
	nop	
intcoord1.L2:
	# .loc	2, 1409
 # ["exec_times": 0]
	la	$v1,396($sp)
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 0]
	sh	$t0,0($v1)
 # ["exec_times": 0]
intcoord1.__done8:
	# .loc	2, 1412
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 0]
	addu	$t2,$t6,$t1
 # ["exec_times": 0]
	l.d	$f6,0($t2)
 # ["exec_times": 0]
	sub.d	$f8,$f22,$f6
 # ["exec_times": 0]
	li	$t3,24
 # ["exec_times": 0]
	addu	$t5,$t6,$t3
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f10,0($t5)
 # ["exec_times": 0]
	div.d	$f8,$f8,$f10
 # ["exec_times": 0]
	# .loc	2, 1413
 # ["exec_times": 0]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t5,1
	c.le.d	$f16,$f8
 # ["exec_times": 0]
	bc1t	intcoord1.L15
	nop	
	move	$t5,$zero
intcoord1.L15:
	cqip	intcoord1.L23
 # ["cqip_pos": <L:intcoord1.L23,0>]
intcoord1.L23:
	pslice_entry	intcoord1.L23
 # ["pslice_entry_pos": <L:intcoord1.L23,0>]
	li	$t1,8
 # ["exec_times": 0]
	addu	$t2,$t6,$t1
 # ["exec_times": 0]
	l.d	$f6,0($t2)
 # ["exec_times": 0]
	sub.d	$f8,$f22,$f6
 # ["exec_times": 0]
	li	$t3,24
 # ["exec_times": 0]
	addu	$t5,$t6,$t3
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f10,0($t5)
 # ["exec_times": 0]
	div.d	$f8,$f8,$f10
 # ["exec_times": 0]
	pslice_exit	intcoord1.L23
 # ["pslice_exit_pos": <L:intcoord1.L23,0>]
	spawn	intcoord1.L24
 # ["cqip_pos": <L:intcoord1.L24,0>]
	bnez	$t5,intcoord1.L3
 # ["exec_times": 0]
	nop	
intcoord1.L20:
	j	intcoord1.__done9
 # ["exec_times": 0]
	nop	
intcoord1.L3:
	li.d	$f18,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t5,1
	c.lt.d	$f8,$f18
 # ["exec_times": 0]
	bc1t	intcoord1.L16
	nop	
	move	$t5,$zero
intcoord1.L16:
intcoord1.__done9:
	beqz	$t5,intcoord1.L4
 # ["exec_times": 0]
	nop	
	# .loc	2, 1414
 # ["exec_times": 0]
	la	$t7,388($sp)
 # ["exec_times": 0]
	li.d	$f12,1.073741824000000000e+09
 # ["exec_times": 0]
	mul.d	$f14,$f12,$f8
 # ["exec_times": 0]
	cvt.w.d	$f0,$f14
	mfc1	$t8,$f0
 # ["exec_times": 0]
	mtc1	$t8,$f2
	cvt.d.w	$f4,$f2
 # ["exec_times": 0]
	cvt.w.d	$f6,$f4
	mfc1	$t8,$f6
 # ["exec_times": 0]
	sw	$t8,0($t7)
 # ["exec_times": 0]
	j	intcoord1.__done10
 # ["exec_times": 0]
	nop	
intcoord1.L4:
	# .loc	2, 1417
 # ["exec_times": 0]
	la	$t9,396($sp)
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	sh	$a1,0($t9)
 # ["exec_times": 0]
intcoord1.__done10:
	# .loc	2, 1421
 # ["exec_times": 0]
	li	$a1,16
 # ["exec_times": 0]
	addu	$a2,$t6,$a1
 # ["exec_times": 0]
	l.d	$f8,0($a2)
 # ["exec_times": 0]
	sub.d	$f10,$f20,$f8
 # ["exec_times": 0]
	li	$a3,24
 # ["exec_times": 0]
	addu	$v0,$t6,$a3
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f16,0($v0)
 # ["exec_times": 0]
	div.d	$f8,$f10,$f16
 # ["exec_times": 0]
	# .loc	2, 1422
 # ["exec_times": 0]
	li.d	$f18,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t6,1
	c.le.d	$f18,$f8
 # ["exec_times": 0]
	bc1t	intcoord1.L17
	nop	
	move	$t6,$zero
intcoord1.L17:
	cqip	intcoord1.L24
 # ["cqip_pos": <L:intcoord1.L24,0>]
intcoord1.L24:
	pslice_entry	intcoord1.L24
 # ["pslice_entry_pos": <L:intcoord1.L24,0>]
	li	$a1,16
 # ["exec_times": 0]
	addu	$a2,$t6,$a1
 # ["exec_times": 0]
	l.d	$f8,0($a2)
 # ["exec_times": 0]
	sub.d	$f10,$f20,$f8
 # ["exec_times": 0]
	li	$a3,24
 # ["exec_times": 0]
	addu	$v0,$t6,$a3
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f16,0($v0)
 # ["exec_times": 0]
	div.d	$f8,$f10,$f16
 # ["exec_times": 0]
	pslice_exit	intcoord1.L24
 # ["pslice_exit_pos": <L:intcoord1.L24,0>]
	bnez	$t6,intcoord1.L5
 # ["exec_times": 0]
	nop	
intcoord1.L21:
	j	intcoord1.__done11
 # ["exec_times": 0]
	nop	
intcoord1.L5:
	li.d	$f12,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t6,1
	c.lt.d	$f8,$f12
 # ["exec_times": 0]
	bc1t	intcoord1.L18
	nop	
	move	$t6,$zero
intcoord1.L18:
intcoord1.__done11:
	beqz	$t6,intcoord1.L6
 # ["exec_times": 0]
	nop	
	# .loc	2, 1423
 # ["exec_times": 0]
	la	$v1,392($sp)
 # ["exec_times": 0]
	li.d	$f14,1.073741824000000000e+09
 # ["exec_times": 0]
	mul.d	$f0,$f14,$f8
 # ["exec_times": 0]
	cvt.w.d	$f2,$f0
	mfc1	$t0,$f2
 # ["exec_times": 0]
	mtc1	$t0,$f4
	cvt.d.w	$f6,$f4
 # ["exec_times": 0]
	cvt.w.d	$f8,$f6
	mfc1	$t1,$f8
 # ["exec_times": 0]
	sw	$t1,0($v1)
 # ["exec_times": 0]
	j	intcoord1.__done12
 # ["exec_times": 0]
	nop	
intcoord1.L6:
	# .loc	2, 1426
 # ["exec_times": 0]
	la	$t2,396($sp)
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	sh	$t3,0($t2)
 # ["exec_times": 0]
intcoord1.__done12:
	# .loc	2, 1430
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$t4,384($sp)
 # ["struct alignment": 32]
	la	$t5,0($a0)
	lw	$t6,0($t4)
	lw	$t7,4($t4)
	lw	$t8,8($t4)
	sw	$t6,0($t5)
	sw	$t7,4($t5)
	sw	$t8,8($t5)
	lw	$t9,12($t4)
	sw	$t9,12($t5)
	# END structure move
	lw	$ra,4($sp)
 # ["header/trailer":]
	l.d	$f20,8($sp)
 # ["header/trailer":]
	l.d	$f22,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	intcoord1 
	.text	
	.align	2
	.align	2
	.globl	ic_test
	# .loc	2, 1484
	.ent	ic_test 
ic_test:
	spawn	ic_test.headerspawn
 # ["header/trailer":]
	la	$sp,-360($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 360, $31
 # ["header/trailer":]
	cqip	ic_test.headerspawn
 # ["header/trailer":]
ic_test.headerspawn:
 # ["header/trailer":]
	pslice_entry	ic_test.headerspawn
 # ["header/trailer":]
	la	$sp,-360($sp)
 # ["header/trailer":]
	pslice_exit	ic_test.headerspawn
	# .loc	2, 1490
 # ["exec_times": 0]
	spawn	ic_test.L19
 # ["cqip_pos": <L:ic_test.L19,0>]
	li	$v0,1
 # ["exec_times": 0]
	# .loc	2, 1492
 # ["exec_times": 0]
	la	$t8,304($sp)
 # ["exec_times": 0]
	li	$t9,16
 # ["exec_times": 0]
	addu	$t4,$a0,$t9
 # ["fields": "pos"]
 # ["exec_times": 0]
	l.d	$f4,0($t4)
 # ["exec_times": 0]
	s.d	$f4,0($t8)
 # ["exec_times": 0]
	# .loc	2, 1493
 # ["exec_times": 0]
	la	$a2,312($sp)
 # ["exec_times": 0]
	li	$a3,24
 # ["exec_times": 0]
	addu	$a3,$a0,$a3
 # ["exec_times": 0]
	l.d	$f6,0($a3)
 # ["exec_times": 0]
	s.d	$f6,0($a2)
 # ["exec_times": 0]
	# .loc	2, 1494
 # ["exec_times": 0]
	la	$a3,320($sp)
 # ["exec_times": 0]
	li	$v1,32
 # ["exec_times": 0]
	addu	$v1,$a0,$v1
 # ["exec_times": 0]
	l.d	$f8,0($v1)
 # ["exec_times": 0]
	s.d	$f8,0($a3)
 # ["exec_times": 0]
	# .loc	2, 1495
 # ["exec_times": 0]
	li	$t0,24
 # ["exec_times": 0]
	addu	$t1,$a1,$t0
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f10,0($t1)
 # ["exec_times": 0]
	# .loc	2, 1497
 # ["exec_times": 0]
	la	$t2,304($sp)
 # ["exec_times": 0]
	l.d	$f16,0($t2)
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	addu	$t3,$a1,$t3
 # ["fields": "rmin"]
 # ["exec_times": 0]
	l.d	$f18,0($t3)
 # ["exec_times": 0]
	sub.d	$f12,$f16,$f18
 # ["exec_times": 0]
	div.d	$f14,$f12,$f10
 # ["exec_times": 0]
	# .loc	2, 1498
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t5,1
	c.le.d	$f0,$f14
 # ["exec_times": 0]
	bc1t	ic_test.L10
	nop	
	move	$t5,$zero
ic_test.L10:
	cqip	ic_test.L19
 # ["cqip_pos": <L:ic_test.L19,0>]
ic_test.L19:
	pslice_entry	ic_test.L19
 # ["pslice_entry_pos": <L:ic_test.L19,0>]
	pslice_exit	ic_test.L19
 # ["pslice_exit_pos": <L:ic_test.L19,0>]
	bnez	$t5,ic_test.L1
 # ["exec_times": 0]
	nop	
ic_test.L16:
	j	ic_test.__done7
 # ["exec_times": 0]
	nop	
ic_test.L1:
	li.d	$f2,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t5,1
	c.lt.d	$f14,$f2
 # ["exec_times": 0]
	bc1t	ic_test.L11
	nop	
	move	$t5,$zero
ic_test.L11:
ic_test.__done7:
	move	$t4,$zero
 # ["exec_times": 0]
	seq	$t5,$t5,$t4
 # ["exec_times": 0]
	beqz	$t5,ic_test.L2
 # ["exec_times": 0]
	nop	
	# .loc	2, 1499
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
ic_test.L2:
	# .loc	2, 1502
 # ["exec_times": 0]
	la	$t6,312($sp)
 # ["exec_times": 0]
	l.d	$f4,0($t6)
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	addu	$t8,$a1,$t7
 # ["exec_times": 0]
	l.d	$f6,0($t8)
 # ["exec_times": 0]
	sub.d	$f8,$f4,$f6
 # ["exec_times": 0]
	div.d	$f14,$f8,$f10
 # ["exec_times": 0]
	# .loc	2, 1503
 # ["exec_times": 0]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t6,1
	c.le.d	$f16,$f14
 # ["exec_times": 0]
	bc1t	ic_test.L12
	nop	
	move	$t6,$zero
ic_test.L12:
	bnez	$t6,ic_test.L3
 # ["exec_times": 0]
	nop	
ic_test.L17:
	j	ic_test.__done8
 # ["exec_times": 0]
	nop	
ic_test.L3:
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t6,1
	c.lt.d	$f14,$f16
 # ["exec_times": 0]
	bc1t	ic_test.L13
	nop	
	move	$t6,$zero
ic_test.L13:
ic_test.__done8:
	move	$t9,$zero
 # ["exec_times": 0]
	seq	$a0,$t6,$t9
 # ["exec_times": 0]
	beqz	$a0,ic_test.L4
 # ["exec_times": 0]
	nop	
	# .loc	2, 1504
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
ic_test.L4:
	# .loc	2, 1507
 # ["exec_times": 0]
	la	$a2,320($sp)
 # ["exec_times": 0]
	l.d	$f18,0($a2)
 # ["exec_times": 0]
	li	$a2,16
 # ["exec_times": 0]
	addu	$a3,$a1,$a2
 # ["exec_times": 0]
	l.d	$f12,0($a3)
 # ["exec_times": 0]
	sub.d	$f14,$f18,$f12
 # ["exec_times": 0]
	div.d	$f14,$f14,$f10
 # ["exec_times": 0]
	# .loc	2, 1508
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t7,1
	c.le.d	$f0,$f14
 # ["exec_times": 0]
	bc1t	ic_test.L14
	nop	
	move	$t7,$zero
ic_test.L14:
	bnez	$t7,ic_test.L5
 # ["exec_times": 0]
	nop	
ic_test.L18:
	j	ic_test.__done9
 # ["exec_times": 0]
	nop	
ic_test.L5:
	li.d	$f2,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t7,1
	c.lt.d	$f14,$f2
 # ["exec_times": 0]
	bc1t	ic_test.L15
	nop	
	move	$t7,$zero
ic_test.L15:
ic_test.__done9:
	move	$v1,$zero
 # ["exec_times": 0]
	seq	$v1,$t7,$v1
 # ["exec_times": 0]
	beqz	$v1,ic_test.L6
 # ["exec_times": 0]
	nop	
	# .loc	2, 1509
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
ic_test.L6:
	# .loc	2, 1518
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	ic_test 
	.text	
	.align	2
	.align	2
	.globl	subindex
	# .loc	2, 1529
	.ent	subindex 
subindex:
	spawn	subindex.headerspawn
 # ["header/trailer":]
	la	$sp,-680($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -680
 # ["header/trailer":]
	s.d	$f20,16($sp)
 # ["header/trailer":]
	s.d	$f22,24($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -680
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 680, $31
 # ["header/trailer":]
	cqip	subindex.headerspawn
 # ["header/trailer":]
subindex.headerspawn:
 # ["header/trailer":]
	pslice_entry	subindex.headerspawn
 # ["header/trailer":]
	la	$sp,-680($sp)
 # ["header/trailer":]
	pslice_exit	subindex.headerspawn
	spawn	subindex.L23
 # ["cqip_pos": <L:subindex.L23,0>]
	move	$s1,$a1
	move	$s0,$a2
	# .loc	2, 1537
 # ["exec_times": 0]
	la	$t8,600($sp)
 # ["exec_times": 0]
	li	$t9,16
 # ["exec_times": 0]
	addu	$t1,$a0,$t9
 # ["fields": "pos"]
 # ["exec_times": 0]
	l.d	$f12,0($t1)
 # ["exec_times": 0]
	s.d	$f12,0($t8)
 # ["exec_times": 0]
	# .loc	2, 1538
 # ["exec_times": 0]
	la	$a1,608($sp)
 # ["exec_times": 0]
	li	$a2,24
 # ["exec_times": 0]
	addu	$a2,$a0,$a2
 # ["exec_times": 0]
	l.d	$f14,0($a2)
 # ["exec_times": 0]
	s.d	$f14,0($a1)
 # ["exec_times": 0]
	# .loc	2, 1539
 # ["exec_times": 0]
	la	$a3,616($sp)
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 0]
	addu	$v1,$a0,$v0
 # ["exec_times": 0]
	l.d	$f0,0($v1)
 # ["exec_times": 0]
	s.d	$f0,0($a3)
 # ["exec_times": 0]
	# .loc	2, 1541
 # ["exec_times": 0]
	li	$t0,24
 # ["exec_times": 0]
	addu	$t1,$s1,$t0
 # ["fields": "rsize"]
 # ["exec_times": 0]
	l.d	$f20,0($t1)
 # ["exec_times": 0]
	# .loc	2, 1543
 # ["exec_times": 0]
	la	$t2,600($sp)
 # ["exec_times": 0]
	l.d	$f2,0($t2)
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	addu	$t0,$s1,$t3
 # ["fields": "rmin"]
 # ["exec_times": 0]
	l.d	$f4,0($t0)
 # ["exec_times": 0]
	sub.d	$f6,$f2,$f4
 # ["exec_times": 0]
	div.d	$f22,$f6,$f20
 # ["exec_times": 0]
	# .loc	2, 1544
 # ["exec_times": 0]
	li.d	$f8,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t2,1
	c.le.d	$f8,$f22
 # ["exec_times": 0]
	bc1t	subindex.L14
	nop	
	move	$t2,$zero
subindex.L14:
	cqip	subindex.L23
 # ["cqip_pos": <L:subindex.L23,0>]
subindex.L23:
	pslice_entry	subindex.L23
 # ["pslice_entry_pos": <L:subindex.L23,0>]
	pslice_exit	subindex.L23
 # ["pslice_exit_pos": <L:subindex.L23,0>]
	bnez	$t2,subindex.L1
 # ["exec_times": 0]
	nop	
subindex.L20:
	j	subindex.__done10
 # ["exec_times": 0]
	nop	
subindex.L1:
	li.d	$f10,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t2,1
	c.lt.d	$f22,$f10
 # ["exec_times": 0]
	bc1t	subindex.L15
	nop	
	move	$t2,$zero
subindex.L15:
subindex.__done10:
	move	$t4,$zero
 # ["exec_times": 0]
	seq	$t5,$t2,$t4
 # ["exec_times": 0]
	beqz	$t5,subindex.L2
 # ["exec_times": 0]
	nop	
	# .loc	2, 1545
 # ["exec_times": 0]
	spawn	subindex.L24
 # ["cqip_pos": <L:subindex.L24,0>]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,5
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1546
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
subindex.L2:
	cqip	subindex.L24
 # ["cqip_pos": <L:subindex.L24,0>]
subindex.L24:
	pslice_entry	subindex.L24
 # ["pslice_entry_pos": <L:subindex.L24,0>]
	pslice_exit	subindex.L24
 # ["pslice_exit_pos": <L:subindex.L24,0>]
	spawn	subindex.L25
 # ["cqip_pos": <L:subindex.L25,0>]
	# .loc	2, 1548
 # ["exec_times": 0]
	la	$t6,628($sp)
 # ["exec_times": 0]
	li.d	$f16,1.073741824000000000e+09
 # ["exec_times": 0]
	mul.d	$f18,$f16,$f22
 # ["exec_times": 0]
	cvt.w.d	$f12,$f18
	mfc1	$t7,$f12
 # ["exec_times": 0]
	mtc1	$t7,$f14
	cvt.d.w	$f0,$f14
 # ["exec_times": 0]
	cvt.w.d	$f2,$f0
	mfc1	$t8,$f2
 # ["exec_times": 0]
	sw	$t8,0($t6)
 # ["exec_times": 0]
	# .loc	2, 1550
 # ["exec_times": 0]
	la	$t9,608($sp)
 # ["exec_times": 0]
	l.d	$f4,0($t9)
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 0]
	addu	$a1,$s1,$a0
 # ["exec_times": 0]
	l.d	$f6,0($a1)
 # ["exec_times": 0]
	sub.d	$f8,$f4,$f6
 # ["exec_times": 0]
	div.d	$f22,$f8,$f20
 # ["exec_times": 0]
	# .loc	2, 1551
 # ["exec_times": 0]
	li.d	$f10,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t3,1
	c.le.d	$f10,$f22
 # ["exec_times": 0]
	bc1t	subindex.L16
	nop	
	move	$t3,$zero
subindex.L16:
	cqip	subindex.L25
 # ["cqip_pos": <L:subindex.L25,0>]
subindex.L25:
	pslice_entry	subindex.L25
 # ["pslice_entry_pos": <L:subindex.L25,0>]
	pslice_exit	subindex.L25
 # ["pslice_exit_pos": <L:subindex.L25,0>]
	bnez	$t3,subindex.L3
 # ["exec_times": 0]
	nop	
subindex.L21:
	j	subindex.__done11
 # ["exec_times": 0]
	nop	
subindex.L3:
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t3,1
	c.lt.d	$f22,$f16
 # ["exec_times": 0]
	bc1t	subindex.L17
	nop	
	move	$t3,$zero
subindex.L17:
subindex.__done11:
	move	$a2,$zero
 # ["exec_times": 0]
	seq	$a3,$t3,$a2
 # ["exec_times": 0]
	beqz	$a3,subindex.L4
 # ["exec_times": 0]
	nop	
	# .loc	2, 1552
 # ["exec_times": 0]
	spawn	subindex.L26
 # ["cqip_pos": <L:subindex.L26,0>]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,6
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1553
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
subindex.L4:
	cqip	subindex.L26
 # ["cqip_pos": <L:subindex.L26,0>]
subindex.L26:
	pslice_entry	subindex.L26
 # ["pslice_entry_pos": <L:subindex.L26,0>]
	pslice_exit	subindex.L26
 # ["pslice_exit_pos": <L:subindex.L26,0>]
	spawn	subindex.L27
 # ["cqip_pos": <L:subindex.L27,0>]
	# .loc	2, 1555
 # ["exec_times": 0]
	la	$v0,632($sp)
 # ["exec_times": 0]
	li.d	$f18,1.073741824000000000e+09
 # ["exec_times": 0]
	mul.d	$f12,$f18,$f22
 # ["exec_times": 0]
	cvt.w.d	$f14,$f12
	mfc1	$v1,$f14
 # ["exec_times": 0]
	mtc1	$v1,$f0
	cvt.d.w	$f2,$f0
 # ["exec_times": 0]
	cvt.w.d	$f4,$f2
	mfc1	$t0,$f4
 # ["exec_times": 0]
	sw	$t0,0($v0)
 # ["exec_times": 0]
	# .loc	2, 1557
 # ["exec_times": 0]
	la	$t1,616($sp)
 # ["exec_times": 0]
	l.d	$f6,0($t1)
 # ["exec_times": 0]
	li	$t2,16
 # ["exec_times": 0]
	addu	$t3,$s1,$t2
 # ["exec_times": 0]
	l.d	$f8,0($t3)
 # ["exec_times": 0]
	sub.d	$f10,$f6,$f8
 # ["exec_times": 0]
	div.d	$f22,$f10,$f20
 # ["exec_times": 0]
	# .loc	2, 1558
 # ["exec_times": 0]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t4,1
	c.le.d	$f16,$f22
 # ["exec_times": 0]
	bc1t	subindex.L18
	nop	
	move	$t4,$zero
subindex.L18:
	cqip	subindex.L27
 # ["cqip_pos": <L:subindex.L27,0>]
subindex.L27:
	pslice_entry	subindex.L27
 # ["pslice_entry_pos": <L:subindex.L27,0>]
	pslice_exit	subindex.L27
 # ["pslice_exit_pos": <L:subindex.L27,0>]
	bnez	$t4,subindex.L5
 # ["exec_times": 0]
	nop	
subindex.L22:
	j	subindex.__done12
 # ["exec_times": 0]
	nop	
subindex.L5:
	li.d	$f18,1.000000000000000000e+00
 # ["exec_times": 0]
	li	$t4,1
	c.lt.d	$f22,$f18
 # ["exec_times": 0]
	bc1t	subindex.L19
	nop	
	move	$t4,$zero
subindex.L19:
subindex.__done12:
	move	$t5,$zero
 # ["exec_times": 0]
	seq	$t5,$t4,$t5
 # ["exec_times": 0]
	beqz	$t5,subindex.L6
 # ["exec_times": 0]
	nop	
	# .loc	2, 1559
 # ["exec_times": 0]
	spawn	subindex.L28
 # ["cqip_pos": <L:subindex.L28,0>]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	li	$a1,7
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1560
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
subindex.L6:
	cqip	subindex.L28
 # ["cqip_pos": <L:subindex.L28,0>]
subindex.L28:
	pslice_entry	subindex.L28
 # ["pslice_entry_pos": <L:subindex.L28,0>]
	pslice_exit	subindex.L28
 # ["pslice_exit_pos": <L:subindex.L28,0>]
	# .loc	2, 1562
 # ["exec_times": 0]
	la	$t6,636($sp)
 # ["exec_times": 0]
	li.d	$f12,1.073741824000000000e+09
 # ["exec_times": 0]
	mul.d	$f14,$f12,$f22
 # ["exec_times": 0]
	cvt.w.d	$f0,$f14
	mfc1	$t7,$f0
 # ["exec_times": 0]
	mtc1	$t7,$f2
	cvt.d.w	$f4,$f2
 # ["exec_times": 0]
	cvt.w.d	$f6,$f4
	mfc1	$t8,$f6
 # ["exec_times": 0]
	sw	$t8,0($t6)
 # ["exec_times": 0]
	# .loc	2, 1565
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	# .loc	2, 1566
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
subindex.L13:
	# .loc	2, 1567
 # ["exec_times": 0]
	la	$a0,628($sp)
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 0]
	mult	$t9,$a1
	mflo	$a2
 # ["exec_times": 0]
	addu	$a3,$a0,$a2
 # ["exec_times": 0]
	lw	$t6,0($a3)
 # ["exec_times": 0]
	and	$t5,$t6,$s0
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
	sne	$v1,$t5,$v1
 # ["exec_times": 0]
	beqz	$v1,subindex.L9
 # ["exec_times": 0]
	nop	
	# .loc	2, 1568
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 0]
	li	$t1,1
 # ["exec_times": 0]
	addu	$t7,$t9,$t1
 # ["exec_times": 0]
	sra	$t2,$t0,$t7
 # ["exec_times": 0]
	addu	$v0,$v0,$t2
 # ["exec_times": 0]
subindex.L9:
	li	$t3,1
 # ["exec_times": 0]
	addu	$t9,$t9,$t3
 # ["exec_times": 0]
	li	$t4,3
 # ["exec_times": 0]
	sle	$t5,$t4,$t9
 # ["exec_times": 0]
	beqz	$t5,subindex.L13
 # ["exec_times": 0]
	nop	
	# .loc	2, 1570
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	l.d	$f20,16($sp)
 # ["header/trailer":]
	l.d	$f22,24($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	subindex 
	.text	
	.align	2
	.align	2
	.globl	hackcofm
	# .loc	2, 1592
	.ent	hackcofm 
hackcofm:
	spawn	hackcofm.headerspawn
 # ["header/trailer":]
	la	$sp,-592($sp)
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
	.mask	0x80070000, -592
 # ["header/trailer":]
	s.d	$f20,24($sp)
 # ["header/trailer":]
	.fmask	0x00100000, -592
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 592, $31
 # ["header/trailer":]
	cqip	hackcofm.headerspawn
 # ["header/trailer":]
hackcofm.headerspawn:
 # ["header/trailer":]
	pslice_entry	hackcofm.headerspawn
 # ["header/trailer":]
	la	$sp,-592($sp)
 # ["header/trailer":]
	pslice_exit	hackcofm.headerspawn
	spawn	hackcofm.spawntail7
	spawn	hackcofm.spawntail8
	move	$s0,$a0
	# .loc	2, 1606
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	addu	$t9,$s0,$t8
 # ["fields": "type"]
 # ["exec_times": 0]
	lh	$t2,0($t9)
 # ["exec_times": 0]
	li	$a0,2
 # ["exec_times": 0]
	seq	$a1,$t2,$a0
 # ["exec_times": 0]
	beqz	$a1,hackcofm.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 1607
 # ["exec_times": 0]
	li.d	$f20,0.000000000000000000e+00
 # ["exec_times": 0]
	# .loc	2, 1608
 # ["exec_times": 0]
	# .loc	2, 1610
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 0]
hackcofm.L13:
	# .loc	2, 1611
 # ["exec_times": 0]
	la	$a3,528($sp)
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 0]
	mult	$a2,$v0
	mflo	$v1
 # ["exec_times": 0]
	addu	$t0,$a3,$v1
 # ["exec_times": 0]
	li.d	$f10,0.000000000000000000e+00
 # ["exec_times": 0]
	s.d	$f10,0($t0)
 # ["exec_times": 0]
	li	$t1,1
 # ["exec_times": 0]
	addu	$a2,$a2,$t1
 # ["exec_times": 0]
	li	$t2,3
 # ["exec_times": 0]
	sle	$t3,$t2,$a2
 # ["exec_times": 0]
	beqz	$t3,hackcofm.L13
 # ["exec_times": 0]
	nop	
	# .loc	2, 1610
 # ["exec_times": 0]
	# .loc	2, 1614
 # ["exec_times": 0]
	move	$s2,$zero
 # ["exec_times": 0]
hackcofm.L16:
	# .loc	2, 1615
 # ["exec_times": 0]
	li	$t4,48
 # ["exec_times": 0]
	addu	$t3,$s0,$t4
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$t5,4
 # ["exec_times": 0]
	mult	$s2,$t5
	mflo	$t6
 # ["exec_times": 0]
	addu	$t7,$t3,$t6
 # ["exec_times": 0]
	lw	$s1,0($t7)
 # ["exec_times": 0]
	# .loc	2, 1616
 # ["exec_times": 0]
	la	$t8,0($zero)
 # ["exec_times": 0]
	sne	$t9,$s1,$t8
 # ["exec_times": 0]
	beqz	$t9,hackcofm.L6
 # ["exec_times": 0]
	nop	
	# .loc	2, 1617
 # ["exec_times": 0]
	la	$t0,hackcofm
 # ["exec_times": 0]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "hackcofm"]
 # ["regs_used": 5]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 1618
 # ["exec_times": 0]
	add.d	$f20,$f0,$f20
 # ["exec_times": 0]
	# .loc	2, 1619
 # ["exec_times": 0]
	# .loc	2, 1621
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
hackcofm.L14:
	# .loc	2, 1622
 # ["exec_times": 0]
	la	$a1,552($sp)
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 0]
	mult	$a0,$a2
	mflo	$a3
 # ["exec_times": 0]
	addu	$v0,$a1,$a3
 # ["exec_times": 0]
	li	$v1,16
 # ["exec_times": 0]
	addu	$t4,$s1,$v1
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 0]
	mult	$a0,$t0
	mflo	$t1
 # ["exec_times": 0]
	addu	$t2,$t4,$t1
 # ["exec_times": 0]
	l.d	$f16,0($t2)
 # ["exec_times": 0]
	mul.d	$f18,$f16,$f0
 # ["exec_times": 0]
	s.d	$f18,0($v0)
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 0]
	addu	$a0,$a0,$t3
 # ["exec_times": 0]
	li	$t4,3
 # ["exec_times": 0]
	sle	$t5,$t4,$a0
 # ["exec_times": 0]
	beqz	$t5,hackcofm.L14
 # ["exec_times": 0]
	nop	
	# .loc	2, 1621
 # ["exec_times": 0]
	# .loc	2, 1624
 # ["exec_times": 0]
	# .loc	2, 1626
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 0]
hackcofm.L15:
	# .loc	2, 1627
 # ["exec_times": 0]
	la	$t7,528($sp)
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 0]
	mult	$t6,$t8
	mflo	$t9
 # ["exec_times": 0]
	addu	$a0,$t7,$t9
 # ["exec_times": 0]
	la	$a1,528($sp)
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 0]
	mult	$t6,$a2
	mflo	$a3
 # ["exec_times": 0]
	addu	$v0,$a1,$a3
 # ["exec_times": 0]
	l.d	$f12,0($v0)
 # ["exec_times": 0]
	la	$v1,552($sp)
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 0]
	mult	$t6,$t0
	mflo	$t1
 # ["exec_times": 0]
	addu	$t2,$v1,$t1
 # ["exec_times": 0]
	l.d	$f14,0($t2)
 # ["exec_times": 0]
	add.d	$f0,$f12,$f14
 # ["exec_times": 0]
	s.d	$f0,0($a0)
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 0]
	addu	$t6,$t6,$t3
 # ["exec_times": 0]
	li	$t4,3
 # ["exec_times": 0]
	sle	$t5,$t4,$t6
 # ["exec_times": 0]
	beqz	$t5,hackcofm.L15
 # ["exec_times": 0]
	nop	
	# .loc	2, 1626
 # ["exec_times": 0]
	# .loc	2, 1628
 # ["exec_times": 0]
hackcofm.L6:
	li	$t6,1
 # ["exec_times": 0]
	addu	$s2,$s2,$t6
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	sle	$t8,$t7,$s2
 # ["exec_times": 0]
	beqz	$t8,hackcofm.L16
 # ["exec_times": 0]
	nop	
	# .loc	2, 1633
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	addu	$a0,$s0,$t9
 # ["fields": "mass"]
 # ["exec_times": 0]
	s.d	$f20,0($a0)
 # ["exec_times": 0]
	# .loc	2, 1635
 # ["exec_times": 0]
	li	$a1,16
 # ["exec_times": 0]
	addu	$t5,$s0,$a1
 # ["fields": "pos"]
 # ["exec_times": 0]
	la	$a2,528($sp)
 # ["exec_times": 0]
	l.d	$f2,0($a2)
 # ["exec_times": 0]
	s.d	$f2,0($t5)
 # ["exec_times": 0]
	# .loc	2, 1636
 # ["exec_times": 0]
	li	$a3,24
 # ["exec_times": 0]
	addu	$v0,$s0,$a3
 # ["exec_times": 0]
	la	$v1,536($sp)
 # ["exec_times": 0]
	l.d	$f4,0($v1)
 # ["exec_times": 0]
	s.d	$f4,0($v0)
 # ["exec_times": 0]
	# .loc	2, 1637
 # ["exec_times": 0]
	li	$t0,32
 # ["exec_times": 0]
	addu	$t1,$s0,$t0
 # ["exec_times": 0]
	la	$t2,544($sp)
 # ["exec_times": 0]
	l.d	$f6,0($t2)
 # ["exec_times": 0]
	s.d	$f6,0($t1)
 # ["exec_times": 0]
	# .loc	2, 1638
 # ["exec_times": 0]
	# .loc	2, 1640
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
hackcofm.L17:
	# .loc	2, 1641
 # ["exec_times": 0]
	li	$t4,16
 # ["exec_times": 0]
	addu	$t7,$s0,$t4
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	mult	$t3,$t5
	mflo	$t6
 # ["exec_times": 0]
	addu	$t7,$t7,$t6
 # ["exec_times": 0]
	li	$t8,16
 # ["exec_times": 0]
	addu	$t6,$s0,$t8
 # ["fields": "pos"]
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	mult	$t3,$t9
	mflo	$a0
 # ["exec_times": 0]
	addu	$a1,$t6,$a0
 # ["exec_times": 0]
	l.d	$f8,0($a1)
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 0]
	addu	$a3,$s0,$a2
 # ["fields": "mass"]
 # ["exec_times": 0]
	l.d	$f10,0($a3)
 # ["exec_times": 0]
	div.d	$f16,$f8,$f10
 # ["exec_times": 0]
	s.d	$f16,0($t7)
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 0]
	addu	$t3,$t3,$v0
 # ["exec_times": 0]
	li	$v1,3
 # ["exec_times": 0]
	sle	$t0,$v1,$t3
 # ["exec_times": 0]
	beqz	$t0,hackcofm.L17
 # ["exec_times": 0]
	nop	
	# .loc	2, 1640
 # ["exec_times": 0]
	# .loc	2, 1646
 # ["exec_times": 0]
	mov.d	$f0,$f20
	cqip	hackcofm.spawntail7
hackcofm.spawntail7:
	pslice_entry	hackcofm.spawntail7
	pslice_exit	hackcofm.spawntail7
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	l.d	$f20,24($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
hackcofm.L1:
	# .loc	2, 1650
 # ["exec_times": 0]
	li	$t1,8
 # ["exec_times": 0]
	addu	$t2,$s0,$t1
 # ["fields": "mass"]
 # ["exec_times": 0]
	l.d	$f20,0($t2)
 # ["exec_times": 0]
	# .loc	2, 1657
 # ["exec_times": 0]
	mov.d	$f0,$f20
	cqip	hackcofm.spawntail8
hackcofm.spawntail8:
	pslice_entry	hackcofm.spawntail8
	pslice_exit	hackcofm.spawntail8
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	l.d	$f20,24($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	hackcofm 
	.text	
	.align	2
	.align	2
	.globl	dis2_number
	# .loc	2, 1709
	.ent	dis2_number 
dis2_number:
	spawn	dis2_number.headerspawn
 # ["header/trailer":]
	la	$sp,-152($sp)
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
	.mask	0x80070000, -152
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 152, $31
 # ["header/trailer":]
	cqip	dis2_number.headerspawn
 # ["header/trailer":]
dis2_number.headerspawn:
 # ["header/trailer":]
	pslice_entry	dis2_number.headerspawn
 # ["header/trailer":]
	la	$sp,-152($sp)
 # ["header/trailer":]
	pslice_exit	dis2_number.headerspawn
	move	$s1,$a0
	move	$v0,$a1
	move	$s0,$a2
	# .loc	2, 1711
 # ["exec_times": 0]
	la	$t7,0($zero)
 # ["exec_times": 0]
	seq	$t8,$s1,$t7
 # ["exec_times": 0]
	beqz	$t8,dis2_number.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 1712
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
dis2_number.L1:
	# .loc	2, 1714
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
	addu	$a0,$s1,$t9
 # ["fields": "type"]
 # ["exec_times": 0]
	lh	$t5,0($a0)
 # ["exec_times": 0]
	li	$a1,1
 # ["exec_times": 0]
	seq	$a2,$t5,$a1
 # ["exec_times": 0]
	beqz	$a2,dis2_number.L2
 # ["exec_times": 0]
	nop	
	# .loc	2, 1715
 # ["exec_times": 0]
	li	$a3,44
 # ["exec_times": 0]
	addu	$v1,$s1,$a3
 # ["fields": "new_proc"]
 # ["exec_times": 0]
	li	$t0,1
 # ["exec_times": 0]
	addu	$t0,$v0,$t0
 # ["exec_times": 0]
	div	$t1,$t0,$s0
 # ["exec_times": 0]
	sw	$t1,0($v1)
 # ["exec_times": 0]
	# .loc	2, 1716
 # ["exec_times": 0]
	li	$t2,1
 # ["exec_times": 0]
	addu	$v0,$v0,$t2
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
dis2_number.L2:
	# .loc	2, 1724
 # ["exec_times": 0]
	move	$s2,$zero
 # ["exec_times": 0]
dis2_number.L5:
	# .loc	2, 1725
 # ["exec_times": 0]
	li	$t3,48
 # ["exec_times": 0]
	addu	$t6,$s1,$t3
 # ["fields": "subp"]
 # ["exec_times": 0]
	li	$t4,4
 # ["exec_times": 0]
	mult	$s2,$t4
	mflo	$t5
 # ["exec_times": 0]
	addu	$t6,$t6,$t5
 # ["exec_times": 0]
	lw	$a0,0($t6)
 # ["exec_times": 0]
	# .loc	2, 1726
 # ["exec_times": 0]
	la	$t0,dis2_number
 # ["exec_times": 0]
	move	$a1,$v0
	move	$a2,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "dis2_number"]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	li	$t7,1
 # ["exec_times": 0]
	addu	$s2,$s2,$t7
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 0]
	sle	$t9,$t8,$s2
 # ["exec_times": 0]
	beqz	$t9,dis2_number.L5
 # ["exec_times": 0]
	nop	
	# .loc	2, 1730
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	dis2_number 
	.text	
	.align	2
	.align	2
	.globl	dis_number
	# .loc	2, 1701
	.ent	dis_number 
dis_number:
	spawn	dis_number.headerspawn
 # ["header/trailer":]
	la	$sp,-80($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -80
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 80, $31
 # ["header/trailer":]
	cqip	dis_number.headerspawn
 # ["header/trailer":]
dis_number.headerspawn:
 # ["header/trailer":]
	pslice_entry	dis_number.headerspawn
 # ["header/trailer":]
	la	$sp,-80($sp)
 # ["header/trailer":]
	pslice_exit	dis_number.headerspawn
	# .loc	2, 1703
 # ["exec_times": 0]
	lw	$a1,nbody
	mtc1	$a1,$f4
	cvt.d.w	$f6,$f4
 # ["exec_times": 0]
	lw	$a1,NumNodes
	mtc1	$a1,$f8
	cvt.d.w	$f10,$f8
 # ["exec_times": 0]
	div.d	$f16,$f6,$f10
 # ["exec_times": 0]
	cvt.w.d	$f18,$f16
	mfc1	$a2,$f18
 # ["exec_times": 0]
	li	$a3,1
 # ["exec_times": 0]
	addu	$v0,$a2,$a3
 # ["exec_times": 0]
	mtc1	$v0,$f12
	cvt.d.w	$f14,$f12
 # ["exec_times": 0]
	cvt.w.d	$f0,$f14
	mfc1	$a2,$f0
 # ["exec_times": 0]
	# .loc	2, 1705
 # ["exec_times": 0]
	la	$t0,dis2_number
 # ["exec_times": 0]
	li	$a1,-1
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "dis2_number"]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 1706
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	dis_number 
	.text	
	.align	2
	.align	2
	.globl	printtree
	# .loc	2, 1664
	.ent	printtree 
printtree:
	spawn	printtree.headerspawn
 # ["header/trailer":]
	la	$sp,-24($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -24
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 24, $31
 # ["header/trailer":]
	cqip	printtree.headerspawn
 # ["header/trailer":]
printtree.headerspawn:
 # ["header/trailer":]
	pslice_entry	printtree.headerspawn
 # ["header/trailer":]
	la	$sp,-24($sp)
 # ["header/trailer":]
	pslice_exit	printtree.headerspawn
	# .loc	2, 1665
 # ["exec_times": 0]
	la	$t0,ptree
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ptree"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1666
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	printtree 
