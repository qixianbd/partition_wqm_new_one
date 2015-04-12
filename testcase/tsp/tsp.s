	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc12622_0.i /home/keyming/Prophet/testcase/tsp/tsp.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/tsp/tsp.snt /home/keyming/Prophet/testcase/tsp/tsp.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/tsp/tsp.temp1 /home/keyming/Prophet/testcase/tsp/tsp.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/tsp/tsp.temp2 /home/keyming/Prophet/testcase/tsp/tsp.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/tsp/tsp.temp3 /home/keyming/Prophet/testcase/tsp/tsp.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/tsp/tsp.temp4 /home/keyming/Prophet/testcase/tsp/tsp.snp
	# history:  transform_print /home/keyming/Prophet/testcase/tsp/tsp.snp /home/keyming/Prophet/testcase/tsp/tsp.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/tsp/tsp.tp /home/keyming/Prophet/testcase/tsp/tsp.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/tsp/tsp.iocal /home/keyming/Prophet/testcase/tsp/tsp.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/tsp/tsp.bore /home/keyming/Prophet/testcase/tsp/tsp.porky
	# history:  suifvm /home/keyming/Prophet/testcase/tsp/tsp.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/tsp/tsp.pf /home/keyming/Prophet/testcase/tsp/tsp.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/tsp/tsp.swig /home/keyming/Prophet/testcase/tsp/tsp.mgen
	# history:  raga /home/keyming/Prophet/testcase/tsp/tsp.mgen /home/keyming/Prophet/testcase/tsp/tsp.raga
	# history:  partition /home/keyming/Prophet/testcase/tsp/tsp.sche /home/keyming/Prophet/testcase/tsp/tsp.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/tsp/tsp.par /home/keyming/Prophet/testcase/tsp/tsp.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/tsp/tsp.mfin /home/keyming/Prophet/testcase/tsp/tsp.nop
	# history:  transform_main /home/keyming/Prophet/testcase/tsp/tsp.nop /home/keyming/Prophet/testcase/tsp/tsp.entry
	# history:  printmachine /home/keyming/Prophet/testcase/tsp/tsp.entry /home/keyming/Prophet/testcase/tsp/tsp.s
	.set	noreorder
	.comm	NumNodes, 4
	.comm	NDim, 4
	.comm	flag, 4
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"x=%f,y=%f\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"%f %f\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"Building tree of size %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_3:
	.ascii	"Past build\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_4:
	.ascii	"newgraph\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_5:
	.ascii	"newcurve pts\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_6:
	.ascii	"Call tsp(t, %d, %d)\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_7:
	.ascii	"linetype solid\012\000"
	.file	2 "tsp.c"
	.text	
	.align	2
	.align	2
	# .loc	2, 86
	.ent	median 
median:
	spawn	median.headerspawn
 # ["header/trailer":]
	la	$sp,-304($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -304
 # ["header/trailer":]
	s.d	$f20,8($sp)
 # ["header/trailer":]
	s.d	$f22,16($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -304
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 304, $31
 # ["header/trailer":]
	cqip	median.headerspawn
 # ["header/trailer":]
median.headerspawn:
 # ["header/trailer":]
	pslice_entry	median.headerspawn
 # ["header/trailer":]
	la	$sp,-304($sp)
 # ["header/trailer":]
	pslice_exit	median.headerspawn
	mov.d	$f22,$f12
	mov.d	$f20,$f14
	spawn	median.L4
 # ["cqip_pos": <L:median.L4,0>]
	# .loc	2, 90
 # ["exec_times": 0]
	la	$t0,drand48
 # ["exec_times": 127]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 127]
 # ["proc_name": "drand48"]
 # ["call_overhead": 6]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 91
 # ["exec_times": 0]
	li.d	$f6,5.000000000000000000e-01
 # ["exec_times": 127]
	li	$t0,1
	c.lt.d	$f6,$f0
 # ["exec_times": 127]
	bc1t	median.L3
	nop	
	move	$t0,$zero
median.L3:
	cqip	median.L4
 # ["cqip_pos": <L:median.L4,0>]
median.L4:
	pslice_entry	median.L4
 # ["pslice_entry_pos": <L:median.L4,0>]
	pslice_exit	median.L4
 # ["pslice_exit_pos": <L:median.L4,0>]
	beqz	$t0,median.L1
 # ["exec_times": 127]
 # ["instr_profile": 127 0]
	nop	
	# .loc	2, 92
 # ["exec_times": 0]
	la	$t0,log
 # ["exec_times": 127]
	li.d	$f8,1.000000000000000000e+00
 # ["exec_times": 127]
	li.d	$f10,3.255075828380078310e+05
 # ["exec_times": 127]
	li.d	$f16,5.000000000000000000e-01
 # ["exec_times": 127]
	sub.d	$f18,$f0,$f16
 # ["exec_times": 127]
	mul.d	$f12,$f10,$f18
 # ["exec_times": 127]
	li.d	$f14,1.627547914190039155e+05
 # ["exec_times": 127]
	div.d	$f0,$f12,$f14
 # ["exec_times": 127]
	sub.d	$f12,$f8,$f0
 # ["exec_times": 127]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 127]
 # ["proc_name": "log"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	li.d	$f2,1.200000000000000000e+01
 # ["exec_times": 127]
	div.d	$f0,$f0,$f2
 # ["exec_times": 127]
	j	median.__done2
 # ["exec_times": 127]
 # ["instr_profile": 127 127]
	nop	
median.L1:
	# .loc	2, 95
 # ["exec_times": 0]
	la	$t0,log
 # ["exec_times": 0]
	li.d	$f4,1.000000000000000000e+00
 # ["exec_times": 0]
	li.d	$f6,3.255075828380078310e+05
 # ["exec_times": 0]
	mul.d	$f8,$f6,$f0
 # ["exec_times": 0]
	li.d	$f10,1.627547914190039155e+05
 # ["exec_times": 0]
	div.d	$f16,$f8,$f10
 # ["exec_times": 0]
	sub.d	$f12,$f4,$f16
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "log"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	neg.d	$f18,$f0
 # ["exec_times": 0]
	li.d	$f12,1.200000000000000000e+01
 # ["exec_times": 0]
	div.d	$f0,$f18,$f12
 # ["exec_times": 0]
median.__done2:
	# .loc	2, 98
 # ["exec_times": 0]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 127]
	add.d	$f0,$f0,$f14
 # ["exec_times": 127]
	sub.d	$f2,$f20,$f22
 # ["exec_times": 127]
	mul.d	$f4,$f0,$f2
 # ["exec_times": 127]
	li.d	$f6,2.000000000000000000e+00
 # ["exec_times": 127]
	div.d	$f0,$f4,$f6
 # ["exec_times": 127]
	# .loc	2, 99
 # ["exec_times": 0]
	add.d	$f0,$f0,$f22
 # ["exec_times": 127]
	# .loc	2, 100
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	l.d	$f20,8($sp)
 # ["header/trailer":]
	l.d	$f22,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 127]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	median 
	.text	
	.align	2
	.align	2
	# .loc	2, 104
	.ent	uniform 
uniform:
	spawn	uniform.headerspawn
 # ["header/trailer":]
	la	$sp,-80($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -80
 # ["header/trailer":]
	s.d	$f20,8($sp)
 # ["header/trailer":]
	s.d	$f22,16($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -80
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 80, $31
 # ["header/trailer":]
	cqip	uniform.headerspawn
 # ["header/trailer":]
uniform.headerspawn:
 # ["header/trailer":]
	pslice_entry	uniform.headerspawn
 # ["header/trailer":]
	la	$sp,-80($sp)
 # ["header/trailer":]
	pslice_exit	uniform.headerspawn
	mov.d	$f22,$f12
	mov.d	$f20,$f14
	# .loc	2, 107
 # ["exec_times": 0]
	la	$t0,drand48
 # ["exec_times": 127]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 127]
 # ["proc_name": "drand48"]
 # ["call_overhead": 6]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 108
 # ["exec_times": 0]
	sub.d	$f8,$f20,$f22
 # ["exec_times": 127]
	mul.d	$f0,$f0,$f8
 # ["exec_times": 127]
	# .loc	2, 109
 # ["exec_times": 0]
	add.d	$f0,$f0,$f22
 # ["exec_times": 127]
	lw	$ra,4($sp)
 # ["header/trailer":]
	l.d	$f20,8($sp)
 # ["header/trailer":]
	l.d	$f22,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 127]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	uniform 
	.text	
	.align	2
	.align	2
	# .loc	2, 232
	.ent	conquer 
conquer:
	spawn	conquer.headerspawn
 # ["header/trailer":]
	la	$sp,-368($sp)
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
	.mask	0x803f0000, -368
 # ["header/trailer":]
	s.d	$f20,32($sp)
 # ["header/trailer":]
	s.d	$f22,40($sp)
 # ["header/trailer":]
	s.d	$f24,48($sp)
 # ["header/trailer":]
	.fmask	0x01500000, -368
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 368, $31
 # ["header/trailer":]
	cqip	conquer.headerspawn
 # ["header/trailer":]
conquer.headerspawn:
 # ["header/trailer":]
	pslice_entry	conquer.headerspawn
 # ["header/trailer":]
	la	$sp,-368($sp)
 # ["header/trailer":]
	pslice_exit	conquer.headerspawn
	spawn	conquer.spawntail0
	spawn	conquer.spawntail1
	move	$s0,$a0
	# .loc	2, 237
 # ["exec_times": 0]
	la	$t3,0($zero)
 # ["exec_times": 1]
	sne	$t4,$s0,$t3
 # ["exec_times": 1]
	move	$t5,$zero
 # ["exec_times": 1]
	seq	$t6,$t4,$t5
 # ["exec_times": 1]
	beqz	$t6,conquer.L1
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	# .loc	2, 237
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 0]
	cqip	conquer.spawntail0
conquer.spawntail0:
	pslice_entry	conquer.spawntail0
	pslice_exit	conquer.spawntail0
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
conquer.L1:
	# .loc	2, 238
 # ["exec_times": 0]
	la	$t0,makelist
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "makelist"]
 # ["call_overhead": 5650]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
	# .loc	2, 242
 # ["exec_times": 0]
	move	$s1,$s0
 # ["exec_times": 1]
	# .loc	2, 243
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 1]
	addu	$t8,$s0,$t7
 # ["fields": "next"]
 # ["exec_times": 1]
	lw	$s0,0($t8)
 # ["exec_times": 1]
	# .loc	2, 244
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 1]
	addu	$a0,$s1,$t9
 # ["fields": "next"]
 # ["exec_times": 1]
	sw	$s1,0($a0)
 # ["exec_times": 1]
	# .loc	2, 245
 # ["exec_times": 0]
	li	$a1,36
 # ["exec_times": 1]
	addu	$a2,$s1,$a1
 # ["fields": "prev"]
 # ["exec_times": 1]
	sw	$s1,0($a2)
 # ["exec_times": 1]
	# .loc	2, 247
 # ["exec_times": 0]
	# .loc	2, 247
 # ["exec_times": 0]
	la	$a3,0($zero)
 # ["exec_times": 1]
	sne	$v0,$s0,$a3
 # ["exec_times": 1]
	beqz	$v0,conquer.L5
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
conquer.L4:
	# .loc	2, 248
 # ["exec_times": 0]
	li	$v1,32
 # ["exec_times": 126]
	addu	$t0,$s0,$v1
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$s4,0($t0)
 # ["exec_times": 126]
	# .loc	2, 249
 # ["exec_times": 0]
	move	$s2,$s1
 # ["exec_times": 126]
	# .loc	2, 250
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 126]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 126]
 # ["proc_name": "distance"]
 # ["call_overhead": 22]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f20,$f0
	# .loc	2, 251
 # ["exec_times": 0]
	li	$t1,32
 # ["exec_times": 126]
	addu	$t2,$s1,$t1
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$s3,0($t2)
 # ["exec_times": 126]
	# .loc	2, 251
 # ["exec_times": 0]
	sne	$t3,$s3,$s1
 # ["exec_times": 126]
	beqz	$t3,conquer.L9
 # ["exec_times": 126]
 # ["instr_profile": 126 1]
	nop	
conquer.L8:
	# .loc	2, 252
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 7875]
	move	$a0,$s3
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 7875]
 # ["proc_name": "distance"]
 # ["call_overhead": 22]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 253
 # ["exec_times": 0]
	li	$t4,1
	c.lt.d	$f0,$f20
 # ["exec_times": 7875]
	bc1t	conquer.L13
	nop	
	move	$t4,$zero
conquer.L13:
	beqz	$t4,conquer.L10
 # ["exec_times": 7875]
 # ["instr_profile": 7875 7875]
	nop	
	# .loc	2, 254
 # ["exec_times": 0]
	mov.d	$f20,$f0
 # ["exec_times": 0]
	# .loc	2, 255
 # ["exec_times": 0]
	move	$s2,$s3
 # ["exec_times": 0]
conquer.L10:
	# .loc	2, 251
 # ["exec_times": 0]
	li	$t5,32
 # ["exec_times": 7875]
	addu	$t6,$s3,$t5
 # ["fields": "next"]
 # ["exec_times": 7875]
	lw	$s3,0($t6)
 # ["exec_times": 7875]
	# .loc	2, 251
 # ["exec_times": 0]
	sne	$t7,$s3,$s1
 # ["exec_times": 7875]
	bnez	$t7,conquer.L8
 # ["exec_times": 7875]
 # ["instr_profile": 7875 7750]
	nop	
conquer.L9:
	# .loc	2, 258
 # ["exec_times": 0]
	li	$t8,32
 # ["exec_times": 126]
	addu	$t9,$s2,$t8
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$s5,0($t9)
 # ["exec_times": 126]
	# .loc	2, 259
 # ["exec_times": 0]
	li	$a0,36
 # ["exec_times": 126]
	addu	$a1,$s2,$a0
 # ["fields": "prev"]
 # ["exec_times": 126]
	lw	$s3,0($a1)
 # ["exec_times": 126]
	# .loc	2, 260
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 126]
	move	$a0,$s2
	move	$a1,$s5
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 126]
 # ["proc_name": "distance"]
 # ["call_overhead": 22]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	2, 261
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 126]
	move	$a0,$s2
	move	$a1,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 126]
 # ["proc_name": "distance"]
 # ["call_overhead": 22]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f22,$f0
	# .loc	2, 262
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 126]
	move	$a0,$s0
	move	$a1,$s5
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 126]
 # ["proc_name": "distance"]
 # ["call_overhead": 22]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f20,$f0
	# .loc	2, 263
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 126]
	move	$a0,$s0
	move	$a1,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 126]
 # ["proc_name": "distance"]
 # ["call_overhead": 22]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 264
 # ["exec_times": 0]
	sub.d	$f4,$f0,$f22
 # ["exec_times": 126]
	sub.d	$f6,$f20,$f24
 # ["exec_times": 126]
	li	$a2,1
	c.lt.d	$f4,$f6
 # ["exec_times": 126]
	bc1t	conquer.L14
	nop	
	move	$a2,$zero
conquer.L14:
	beqz	$a2,conquer.L11
 # ["exec_times": 126]
 # ["instr_profile": 126 126]
	nop	
	# .loc	2, 266
 # ["exec_times": 0]
	li	$a3,32
 # ["exec_times": 0]
	addu	$v0,$s3,$a3
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s0,0($v0)
 # ["exec_times": 0]
	# .loc	2, 267
 # ["exec_times": 0]
	li	$v1,32
 # ["exec_times": 0]
	addu	$t0,$s0,$v1
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s2,0($t0)
 # ["exec_times": 0]
	# .loc	2, 268
 # ["exec_times": 0]
	li	$t1,36
 # ["exec_times": 0]
	addu	$t2,$s0,$t1
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s3,0($t2)
 # ["exec_times": 0]
	# .loc	2, 269
 # ["exec_times": 0]
	li	$t3,36
 # ["exec_times": 0]
	addu	$t4,$s2,$t3
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s0,0($t4)
 # ["exec_times": 0]
	j	conquer.__done12
 # ["exec_times": 0]
	nop	
conquer.L11:
	# .loc	2, 272
 # ["exec_times": 0]
	li	$t5,36
 # ["exec_times": 126]
	addu	$t6,$s5,$t5
 # ["fields": "prev"]
 # ["exec_times": 126]
	sw	$s0,0($t6)
 # ["exec_times": 126]
	# .loc	2, 273
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 126]
	addu	$t8,$s0,$t7
 # ["fields": "next"]
 # ["exec_times": 126]
	sw	$s5,0($t8)
 # ["exec_times": 126]
	# .loc	2, 274
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 126]
	addu	$a0,$s2,$t9
 # ["fields": "next"]
 # ["exec_times": 126]
	sw	$s0,0($a0)
 # ["exec_times": 126]
	# .loc	2, 275
 # ["exec_times": 0]
	li	$a1,36
 # ["exec_times": 126]
	addu	$a2,$s0,$a1
 # ["fields": "prev"]
 # ["exec_times": 126]
	sw	$s2,0($a2)
 # ["exec_times": 126]
conquer.__done12:
	# .loc	2, 247
 # ["exec_times": 0]
	move	$s0,$s4
 # ["exec_times": 126]
	# .loc	2, 247
 # ["exec_times": 0]
	la	$a3,0($zero)
 # ["exec_times": 126]
	sne	$v0,$s0,$a3
 # ["exec_times": 126]
	bnez	$v0,conquer.L4
 # ["exec_times": 126]
 # ["instr_profile": 126 125]
	nop	
conquer.L5:
	# .loc	2, 280
 # ["exec_times": 0]
	move	$v0,$s1
	cqip	conquer.spawntail1
conquer.spawntail1:
	pslice_entry	conquer.spawntail1
	pslice_exit	conquer.spawntail1
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	conquer 
	.text	
	.align	2
	.align	2
	# .loc	2, 284
	.ent	merge 
merge:
	spawn	merge.headerspawn
 # ["header/trailer":]
	la	$sp,-760($sp)
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
	.mask	0x807f0000, -760
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
	.fmask	0x55500000, -760
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 760, $31
 # ["header/trailer":]
	cqip	merge.headerspawn
 # ["header/trailer":]
merge.headerspawn:
 # ["header/trailer":]
	pslice_entry	merge.headerspawn
 # ["header/trailer":]
	la	$sp,-760($sp)
 # ["header/trailer":]
	pslice_exit	merge.headerspawn
	spawn	merge.L33
 # ["cqip_pos": <L:merge.L33,0>]
	move	$s1,$a0
	move	$s4,$a1
	move	$s2,$a2
	# .loc	2, 294
 # ["exec_times": 0]
	move	$s3,$s1
 # ["exec_times": 0]
	# .loc	2, 295
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f20,$f0
	# .loc	2, 296
 # ["exec_times": 0]
	move	$s0,$s1
 # ["exec_times": 0]
	# .loc	2, 297
 # ["exec_times": 0]
	li	$t3,32
 # ["exec_times": 0]
	addu	$t4,$s1,$t3
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s1,0($t4)
 # ["exec_times": 0]
	# .loc	2, 297
 # ["exec_times": 0]
	sne	$t5,$s1,$s0
 # ["exec_times": 0]
	beqz	$t5,merge.L4
 # ["exec_times": 0]
	nop	
merge.L3:
	spawn	merge.L32
 # ["cqip_pos": <L:merge.L32,0>]
	# .loc	2, 298
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s1
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f2,$f0
	# .loc	2, 299
 # ["exec_times": 0]
	li	$t6,1
	c.lt.d	$f2,$f20
 # ["exec_times": 0]
	bc1t	merge.L24
	nop	
	move	$t6,$zero
merge.L24:
	beqz	$t6,merge.L5
 # ["exec_times": 0]
	nop	
	# .loc	2, 300
 # ["exec_times": 0]
	mov.d	$f20,$f2
 # ["exec_times": 0]
	# .loc	2, 301
 # ["exec_times": 0]
	move	$s3,$s1
 # ["exec_times": 0]
merge.L5:
	# .loc	2, 297
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 0]
	addu	$t8,$s1,$t7
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s1,0($t8)
 # ["exec_times": 0]
	# .loc	2, 297
 # ["exec_times": 0]
	sne	$t9,$s1,$s0
 # ["exec_times": 0]
	bnez	$t9,merge.L3
 # ["exec_times": 0]
	nop	
merge.L4:
	cqip	merge.L33
 # ["cqip_pos": <L:merge.L33,0>]
merge.L33:
	pslice_entry	merge.L33
 # ["pslice_entry_pos": <L:merge.L33,0>]
	pslice_exit	merge.L33
 # ["pslice_exit_pos": <L:merge.L33,0>]
	spawn	merge.L34
 # ["cqip_pos": <L:merge.L34,0>]
	cqip	merge.L32
 # ["cqip_pos": <L:merge.L32,0>]
merge.L32:
	pslice_entry	merge.L32
 # ["pslice_entry_pos": <L:merge.L32,0>]
	pslice_exit	merge.L32
 # ["pslice_exit_pos": <L:merge.L32,0>]
	# .loc	2, 304
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 0]
	addu	$a1,$s3,$a0
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s1,0($a1)
 # ["exec_times": 0]
	# .loc	2, 305
 # ["exec_times": 0]
	li	$a2,36
 # ["exec_times": 0]
	addu	$a3,$s3,$a2
 # ["fields": "prev"]
 # ["exec_times": 0]
	lw	$s0,0($a3)
 # ["exec_times": 0]
	# .loc	2, 306
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s3
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f30,$f0
	# .loc	2, 307
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s3
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	cqip	merge.L34
 # ["cqip_pos": <L:merge.L34,0>]
merge.L34:
	pslice_entry	merge.L34
 # ["pslice_entry_pos": <L:merge.L34,0>]
	pslice_exit	merge.L34
 # ["pslice_exit_pos": <L:merge.L34,0>]
	spawn	merge.L35
 # ["cqip_pos": <L:merge.L35,0>]
	mov.d	$f24,$f0
	# .loc	2, 308
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f22,$f0
	# .loc	2, 309
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 310
 # ["exec_times": 0]
	sub.d	$f2,$f0,$f24
 # ["exec_times": 0]
	sub.d	$f4,$f22,$f30
 # ["exec_times": 0]
	li	$v0,1
	c.lt.d	$f2,$f4
 # ["exec_times": 0]
	bc1t	merge.L25
	nop	
	move	$v0,$zero
merge.L25:
	cqip	merge.L35
 # ["cqip_pos": <L:merge.L35,0>]
merge.L35:
	pslice_entry	merge.L35
 # ["pslice_entry_pos": <L:merge.L35,0>]
	pslice_exit	merge.L35
 # ["pslice_exit_pos": <L:merge.L35,0>]
	spawn	merge.L37
 # ["cqip_pos": <L:merge.L37,0>]
	beqz	$v0,merge.L6
 # ["exec_times": 0]
	nop	
	# .loc	2, 312
 # ["exec_times": 0]
	move	$s6,$s0
 # ["exec_times": 0]
	# .loc	2, 313
 # ["exec_times": 0]
	move	$s5,$s3
 # ["exec_times": 0]
	# .loc	2, 314
 # ["exec_times": 0]
	mov.d	$f28,$f20
 # ["exec_times": 0]
	# .loc	2, 315
 # ["exec_times": 0]
	mov.d	$f26,$f0
 # ["exec_times": 0]
	j	merge.__done22
 # ["exec_times": 0]
	nop	
merge.L6:
	# .loc	2, 318
 # ["exec_times": 0]
	move	$s6,$s3
 # ["exec_times": 0]
	# .loc	2, 319
 # ["exec_times": 0]
	move	$s5,$s1
 # ["exec_times": 0]
	# .loc	2, 320
 # ["exec_times": 0]
	mov.d	$f26,$f20
 # ["exec_times": 0]
	# .loc	2, 321
 # ["exec_times": 0]
	mov.d	$f28,$f22
 # ["exec_times": 0]
merge.__done22:
	# .loc	2, 325
 # ["exec_times": 0]
	move	$s3,$s4
 # ["exec_times": 0]
	# .loc	2, 326
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s4
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f20,$f0
	# .loc	2, 327
 # ["exec_times": 0]
	move	$s0,$s4
 # ["exec_times": 0]
	# .loc	2, 328
 # ["exec_times": 0]
	li	$v1,32
 # ["exec_times": 0]
	addu	$t0,$s4,$v1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s4,0($t0)
 # ["exec_times": 0]
	# .loc	2, 328
 # ["exec_times": 0]
	sne	$t1,$s4,$s0
 # ["exec_times": 0]
	beqz	$t1,merge.L10
 # ["exec_times": 0]
	nop	
merge.L9:
	spawn	merge.L36
 # ["cqip_pos": <L:merge.L36,0>]
	# .loc	2, 329
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s4
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f2,$f0
	# .loc	2, 330
 # ["exec_times": 0]
	li	$t2,1
	c.lt.d	$f2,$f20
 # ["exec_times": 0]
	bc1t	merge.L26
	nop	
	move	$t2,$zero
merge.L26:
	beqz	$t2,merge.L11
 # ["exec_times": 0]
	nop	
	# .loc	2, 331
 # ["exec_times": 0]
	mov.d	$f20,$f2
 # ["exec_times": 0]
	# .loc	2, 332
 # ["exec_times": 0]
	move	$s3,$s4
 # ["exec_times": 0]
merge.L11:
	# .loc	2, 328
 # ["exec_times": 0]
	li	$t3,32
 # ["exec_times": 0]
	addu	$t4,$s4,$t3
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s4,0($t4)
 # ["exec_times": 0]
	# .loc	2, 328
 # ["exec_times": 0]
	sne	$t5,$s4,$s0
 # ["exec_times": 0]
	bnez	$t5,merge.L9
 # ["exec_times": 0]
	nop	
merge.L10:
	cqip	merge.L37
 # ["cqip_pos": <L:merge.L37,0>]
merge.L37:
	pslice_entry	merge.L37
 # ["pslice_entry_pos": <L:merge.L37,0>]
	move	$s3,$s4
 # ["exec_times": 0]
	mov.d	$f20,$f0
	move	$s0,$s4
 # ["exec_times": 0]
	li	$v1,32
 # ["exec_times": 0]
	addu	$t0,$s4,$v1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s4,0($t0)
 # ["exec_times": 0]
	pslice_exit	merge.L37
 # ["pslice_exit_pos": <L:merge.L37,0>]
	spawn	merge.L38
 # ["cqip_pos": <L:merge.L38,0>]
	cqip	merge.L36
 # ["cqip_pos": <L:merge.L36,0>]
merge.L36:
	pslice_entry	merge.L36
 # ["pslice_entry_pos": <L:merge.L36,0>]
	pslice_exit	merge.L36
 # ["pslice_exit_pos": <L:merge.L36,0>]
	# .loc	2, 335
 # ["exec_times": 0]
	li	$t6,32
 # ["exec_times": 0]
	addu	$t7,$s3,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s1,0($t7)
 # ["exec_times": 0]
	# .loc	2, 336
 # ["exec_times": 0]
	li	$t8,36
 # ["exec_times": 0]
	addu	$t9,$s3,$t8
 # ["fields": "prev"]
 # ["exec_times": 0]
	lw	$s0,0($t9)
 # ["exec_times": 0]
	# .loc	2, 337
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s3
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f30,$f0
	# .loc	2, 338
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s3
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	cqip	merge.L38
 # ["cqip_pos": <L:merge.L38,0>]
merge.L38:
	pslice_entry	merge.L38
 # ["pslice_entry_pos": <L:merge.L38,0>]
	pslice_exit	merge.L38
 # ["pslice_exit_pos": <L:merge.L38,0>]
	spawn	merge.L39
 # ["cqip_pos": <L:merge.L39,0>]
	mov.d	$f24,$f0
	# .loc	2, 339
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f22,$f0
	# .loc	2, 340
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 341
 # ["exec_times": 0]
	sub.d	$f6,$f0,$f24
 # ["exec_times": 0]
	sub.d	$f8,$f22,$f30
 # ["exec_times": 0]
	li	$a0,1
	c.lt.d	$f6,$f8
 # ["exec_times": 0]
	bc1t	merge.L27
	nop	
	move	$a0,$zero
merge.L27:
	cqip	merge.L39
 # ["cqip_pos": <L:merge.L39,0>]
merge.L39:
	pslice_entry	merge.L39
 # ["pslice_entry_pos": <L:merge.L39,0>]
	pslice_exit	merge.L39
 # ["pslice_exit_pos": <L:merge.L39,0>]
	beqz	$a0,merge.L12
 # ["exec_times": 0]
	nop	
	# .loc	2, 343
 # ["exec_times": 0]
	# .loc	2, 344
 # ["exec_times": 0]
	move	$s1,$s3
 # ["exec_times": 0]
	# .loc	2, 345
 # ["exec_times": 0]
	mov.d	$f22,$f20
 # ["exec_times": 0]
	# .loc	2, 346
 # ["exec_times": 0]
	mov.d	$f24,$f0
 # ["exec_times": 0]
	j	merge.__done23
 # ["exec_times": 0]
	nop	
merge.L12:
	# .loc	2, 349
 # ["exec_times": 0]
	move	$s0,$s3
 # ["exec_times": 0]
	# .loc	2, 350
 # ["exec_times": 0]
	# .loc	2, 351
 # ["exec_times": 0]
	mov.d	$f24,$f20
 # ["exec_times": 0]
	# .loc	2, 352
 # ["exec_times": 0]
merge.__done23:
	# .loc	2, 360
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s5
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f20,$f0
	# .loc	2, 361
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s5
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mov.d	$f30,$f0
	# .loc	2, 362
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s6
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	s.d	$f0,608($sp)
	# .loc	2, 363
 # ["exec_times": 0]
	la	$t0,distance
 # ["exec_times": 0]
	move	$a0,$s6
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "distance"]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 365
 # ["exec_times": 0]
	add.d	$f10,$f26,$f24
 # ["exec_times": 0]
	add.d	$f20,$f10,$f20
 # ["exec_times": 0]
	# .loc	2, 366
 # ["exec_times": 0]
	li	$t2,1
 # ["exec_times": 0]
	# .loc	2, 368
 # ["exec_times": 0]
	add.d	$f16,$f26,$f22
 # ["exec_times": 0]
	add.d	$f2,$f16,$f30
 # ["exec_times": 0]
	# .loc	2, 369
 # ["exec_times": 0]
	li	$a1,1
	c.lt.d	$f2,$f20
 # ["exec_times": 0]
	bc1t	merge.L28
	nop	
	move	$a1,$zero
merge.L28:
	beqz	$a1,merge.L13
 # ["exec_times": 0]
	nop	
	# .loc	2, 370
 # ["exec_times": 0]
	li	$t2,2
 # ["exec_times": 0]
	# .loc	2, 371
 # ["exec_times": 0]
	mov.d	$f20,$f2
 # ["exec_times": 0]
merge.L13:
	# .loc	2, 374
 # ["exec_times": 0]
	add.d	$f18,$f28,$f24
 # ["exec_times": 0]
	l.d	$f14,608($sp)
	add.d	$f2,$f18,$f14
 # ["exec_times": 0]
	# .loc	2, 375
 # ["exec_times": 0]
	li	$a2,1
	c.lt.d	$f2,$f20
 # ["exec_times": 0]
	bc1t	merge.L29
	nop	
	move	$a2,$zero
merge.L29:
	beqz	$a2,merge.L14
 # ["exec_times": 0]
	nop	
	# .loc	2, 376
 # ["exec_times": 0]
	li	$t2,3
 # ["exec_times": 0]
	# .loc	2, 377
 # ["exec_times": 0]
	mov.d	$f20,$f2
 # ["exec_times": 0]
merge.L14:
	# .loc	2, 380
 # ["exec_times": 0]
	add.d	$f12,$f28,$f22
 # ["exec_times": 0]
	add.d	$f2,$f12,$f0
 # ["exec_times": 0]
	# .loc	2, 381
 # ["exec_times": 0]
	li	$a3,1
	c.lt.d	$f2,$f20
 # ["exec_times": 0]
	bc1t	merge.L30
	nop	
	move	$a3,$zero
merge.L30:
	beqz	$a3,merge.L15
 # ["exec_times": 0]
	nop	
	# .loc	2, 381
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 0]
merge.L15:
	# .loc	2, 384
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 0]
	slt	$v1,$t2,$v0
 # ["exec_times": 0]
	bnez	$v1,merge.L16
 # ["exec_times": 0]
	nop	
	li	$t0,4
 # ["exec_times": 0]
	slt	$t1,$t0,$t2
 # ["exec_times": 0]
	bnez	$t1,merge.L16
 # ["exec_times": 0]
	nop	
	li	$t3,1
 # ["exec_times": 0]
	seq	$t3,$t2,$t3
 # ["exec_times": 0]
	bnez	$t3,merge.L17
 # ["exec_times": 0]
	nop	
	li	$t4,2
 # ["exec_times": 0]
	seq	$t5,$t2,$t4
 # ["exec_times": 0]
	bnez	$t5,merge.L18
 # ["exec_times": 0]
	nop	
	li	$t6,3
 # ["exec_times": 0]
	seq	$t7,$t2,$t6
 # ["exec_times": 0]
	bnez	$t7,merge.L19
 # ["exec_times": 0]
	nop	
	li	$t8,4
 # ["exec_times": 0]
	seq	$t9,$t2,$t8
 # ["exec_times": 0]
	bnez	$t9,merge.L20
 # ["exec_times": 0]
	nop	
merge.L31:
	j	merge.L16
 # ["exec_times": 0]
	nop	
merge.L17:
	# .loc	2, 388
 # ["exec_times": 0]
	la	$t0,reverse
 # ["exec_times": 0]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "reverse"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 389
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 0]
	addu	$v1,$s6,$v0
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s2,0($v1)
 # ["exec_times": 0]
	# .loc	2, 390
 # ["exec_times": 0]
	li	$t0,36
 # ["exec_times": 0]
	addu	$t1,$s2,$t0
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s6,0($t1)
 # ["exec_times": 0]
	# .loc	2, 391
 # ["exec_times": 0]
	li	$t2,32
 # ["exec_times": 0]
	addu	$t3,$s2,$t2
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s0,0($t3)
 # ["exec_times": 0]
	# .loc	2, 392
 # ["exec_times": 0]
	li	$t4,36
 # ["exec_times": 0]
	addu	$t5,$s0,$t4
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s2,0($t5)
 # ["exec_times": 0]
	# .loc	2, 393
 # ["exec_times": 0]
	li	$t6,32
 # ["exec_times": 0]
	addu	$t7,$s1,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s5,0($t7)
 # ["exec_times": 0]
	# .loc	2, 394
 # ["exec_times": 0]
	li	$t8,36
 # ["exec_times": 0]
	addu	$t9,$s5,$t8
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s1,0($t9)
 # ["exec_times": 0]
	# .loc	2, 395
 # ["exec_times": 0]
	j	merge.L16
 # ["exec_times": 0]
	nop	
merge.L18:
	# .loc	2, 398
 # ["exec_times": 0]
	li	$t2,32
 # ["exec_times": 0]
	addu	$t3,$s6,$t2
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s2,0($t3)
 # ["exec_times": 0]
	# .loc	2, 399
 # ["exec_times": 0]
	li	$t4,36
 # ["exec_times": 0]
	addu	$t5,$s2,$t4
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s6,0($t5)
 # ["exec_times": 0]
	# .loc	2, 400
 # ["exec_times": 0]
	li	$t6,32
 # ["exec_times": 0]
	addu	$t7,$s2,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s1,0($t7)
 # ["exec_times": 0]
	# .loc	2, 401
 # ["exec_times": 0]
	li	$t8,36
 # ["exec_times": 0]
	addu	$t9,$s1,$t8
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s2,0($t9)
 # ["exec_times": 0]
	# .loc	2, 402
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 0]
	addu	$a1,$s0,$a0
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s5,0($a1)
 # ["exec_times": 0]
	# .loc	2, 403
 # ["exec_times": 0]
	li	$a2,36
 # ["exec_times": 0]
	addu	$a3,$s5,$a2
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s0,0($a3)
 # ["exec_times": 0]
	# .loc	2, 404
 # ["exec_times": 0]
	j	merge.L16
 # ["exec_times": 0]
	nop	
merge.L19:
	# .loc	2, 407
 # ["exec_times": 0]
	li	$t6,32
 # ["exec_times": 0]
	addu	$t7,$s0,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s2,0($t7)
 # ["exec_times": 0]
	# .loc	2, 408
 # ["exec_times": 0]
	li	$t8,36
 # ["exec_times": 0]
	addu	$t9,$s2,$t8
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s0,0($t9)
 # ["exec_times": 0]
	# .loc	2, 409
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 0]
	addu	$a1,$s2,$a0
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s5,0($a1)
 # ["exec_times": 0]
	# .loc	2, 410
 # ["exec_times": 0]
	li	$a2,36
 # ["exec_times": 0]
	addu	$a3,$s5,$a2
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s2,0($a3)
 # ["exec_times": 0]
	# .loc	2, 411
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 0]
	addu	$v1,$s6,$v0
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s1,0($v1)
 # ["exec_times": 0]
	# .loc	2, 412
 # ["exec_times": 0]
	li	$t0,36
 # ["exec_times": 0]
	addu	$t1,$s1,$t0
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s6,0($t1)
 # ["exec_times": 0]
	# .loc	2, 413
 # ["exec_times": 0]
	j	merge.L16
 # ["exec_times": 0]
	nop	
merge.L20:
	# .loc	2, 417
 # ["exec_times": 0]
	la	$t0,reverse
 # ["exec_times": 0]
	move	$a0,$s5
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "reverse"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 418
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 0]
	addu	$a1,$s5,$a0
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s2,0($a1)
 # ["exec_times": 0]
	# .loc	2, 419
 # ["exec_times": 0]
	li	$a2,36
 # ["exec_times": 0]
	addu	$a3,$s2,$a2
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s5,0($a3)
 # ["exec_times": 0]
	# .loc	2, 420
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 0]
	addu	$v1,$s2,$v0
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s1,0($v1)
 # ["exec_times": 0]
	# .loc	2, 421
 # ["exec_times": 0]
	li	$t0,36
 # ["exec_times": 0]
	addu	$t1,$s1,$t0
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s2,0($t1)
 # ["exec_times": 0]
	# .loc	2, 422
 # ["exec_times": 0]
	li	$t2,32
 # ["exec_times": 0]
	addu	$t3,$s0,$t2
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s6,0($t3)
 # ["exec_times": 0]
	# .loc	2, 423
 # ["exec_times": 0]
	li	$t4,36
 # ["exec_times": 0]
	addu	$t5,$s6,$t4
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$s0,0($t5)
 # ["exec_times": 0]
	# .loc	2, 424
 # ["exec_times": 0]
merge.L16:
	# .loc	2, 426
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
 # ["exec_times": 0]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	merge 
	.text	
	.align	2
	.align	2
	# .loc	2, 190
	.ent	makelist 
makelist:
	spawn	makelist.headerspawn
 # ["header/trailer":]
	la	$sp,-176($sp)
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
	.mask	0x80070000, -176
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 176, $31
 # ["header/trailer":]
	cqip	makelist.headerspawn
 # ["header/trailer":]
makelist.headerspawn:
 # ["header/trailer":]
	pslice_entry	makelist.headerspawn
 # ["header/trailer":]
	la	$sp,-176($sp)
 # ["header/trailer":]
	pslice_exit	makelist.headerspawn
	move	$s1,$a0
	# .loc	2, 193
 # ["exec_times": 0]
	move	$s0,$s1
 # ["exec_times": 255]
	# .loc	2, 195
 # ["exec_times": 0]
	la	$t8,0($zero)
 # ["exec_times": 255]
	sne	$t9,$s1,$t8
 # ["exec_times": 255]
	move	$a0,$zero
 # ["exec_times": 255]
	seq	$a1,$t9,$a0
 # ["exec_times": 255]
	beqz	$a1,makelist.L1
 # ["exec_times": 255]
 # ["instr_profile": 255 127]
	nop	
	# .loc	2, 195
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 128]
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
 # ["exec_times": 128]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
makelist.L1:
	# .loc	2, 197
 # ["exec_times": 0]
	la	$t0,makelist
 # ["exec_times": 127]
	li	$a2,24
 # ["exec_times": 127]
	addu	$a3,$s1,$a2
 # ["fields": "left"]
 # ["exec_times": 127]
	lw	$a0,0($a3)
 # ["exec_times": 127]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 127]
 # ["proc_name": "makelist"]
 # ["call_overhead": 26]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s2,$v0
	# .loc	2, 198
 # ["exec_times": 0]
	la	$t0,makelist
 # ["exec_times": 127]
	li	$v0,28
 # ["exec_times": 127]
	addu	$v1,$s1,$v0
 # ["fields": "right"]
 # ["exec_times": 127]
	lw	$a0,0($v1)
 # ["exec_times": 127]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 127]
 # ["proc_name": "makelist"]
 # ["call_overhead": 1853]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 200
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 127]
	sne	$t1,$v0,$t0
 # ["exec_times": 127]
	beqz	$t1,makelist.L2
 # ["exec_times": 127]
 # ["instr_profile": 127 64]
	nop	
	# .loc	2, 200
 # ["exec_times": 0]
	move	$s0,$v0
 # ["exec_times": 63]
	# .loc	2, 200
 # ["exec_times": 0]
	li	$t2,28
 # ["exec_times": 63]
	addu	$t3,$s1,$t2
 # ["fields": "right"]
 # ["exec_times": 63]
	lw	$t4,0($t3)
 # ["exec_times": 63]
	# .loc	2, 200
 # ["exec_times": 0]
	li	$t5,32
 # ["exec_times": 63]
	addu	$t6,$t4,$t5
 # ["fields": "next"]
 # ["exec_times": 63]
	sw	$s1,0($t6)
 # ["exec_times": 63]
makelist.L2:
	# .loc	2, 201
 # ["exec_times": 0]
	la	$t7,0($zero)
 # ["exec_times": 127]
	sne	$t8,$s2,$t7
 # ["exec_times": 127]
	beqz	$t8,makelist.L3
 # ["exec_times": 127]
 # ["instr_profile": 127 64]
	nop	
	# .loc	2, 201
 # ["exec_times": 0]
	move	$s0,$s2
 # ["exec_times": 63]
	# .loc	2, 201
 # ["exec_times": 0]
	li	$t9,24
 # ["exec_times": 63]
	addu	$a0,$s1,$t9
 # ["fields": "left"]
 # ["exec_times": 63]
	lw	$a1,0($a0)
 # ["exec_times": 63]
	# .loc	2, 201
 # ["exec_times": 0]
	la	$a2,0($zero)
 # ["exec_times": 63]
	sne	$a3,$v0,$a2
 # ["exec_times": 63]
	beqz	$a3,makelist.L4
 # ["exec_times": 63]
 # ["instr_profile": 63 0]
	nop	
makelist.L5:
	j	makelist.__done1
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
makelist.L4:
	move	$v0,$s1
 # ["exec_times": 0]
makelist.__done1:
	li	$v1,32
 # ["exec_times": 63]
	addu	$v1,$a1,$v1
 # ["fields": "next"]
 # ["exec_times": 63]
	sw	$v0,0($v1)
 # ["exec_times": 63]
makelist.L3:
	# .loc	2, 202
 # ["exec_times": 0]
	li	$t0,32
 # ["exec_times": 127]
	addu	$t1,$s1,$t0
 # ["fields": "next"]
 # ["exec_times": 127]
	la	$t2,0($zero)
 # ["exec_times": 127]
	sw	$t2,0($t1)
 # ["exec_times": 127]
	# .loc	2, 204
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 127]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	makelist 
	.text	
	.align	2
	.align	2
	# .loc	2, 208
	.ent	reverse 
reverse:
	spawn	reverse.headerspawn
 # ["header/trailer":]
	la	$sp,-152($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -152
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 152, $31
 # ["header/trailer":]
	cqip	reverse.headerspawn
 # ["header/trailer":]
reverse.headerspawn:
 # ["header/trailer":]
	pslice_entry	reverse.headerspawn
 # ["header/trailer":]
	la	$sp,-152($sp)
 # ["header/trailer":]
	pslice_exit	reverse.headerspawn
	# .loc	2, 211
 # ["exec_times": 0]
	la	$t6,0($zero)
 # ["exec_times": 0]
	sne	$t7,$a0,$t6
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	seq	$t9,$t7,$t8
 # ["exec_times": 0]
	beqz	$t9,reverse.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 211
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
reverse.L1:
	# .loc	2, 214
 # ["exec_times": 0]
	li	$a1,36
 # ["exec_times": 0]
	addu	$a1,$a0,$a1
 # ["fields": "prev"]
 # ["exec_times": 0]
	lw	$s0,0($a1)
 # ["exec_times": 0]
	# .loc	2, 215
 # ["exec_times": 0]
	li	$a2,32
 # ["exec_times": 0]
	addu	$a3,$s0,$a2
 # ["fields": "next"]
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 0]
	sw	$v0,0($a3)
 # ["exec_times": 0]
	# .loc	2, 216
 # ["exec_times": 0]
	li	$v1,36
 # ["exec_times": 0]
	addu	$t0,$a0,$v1
 # ["fields": "prev"]
 # ["exec_times": 0]
	la	$t1,0($zero)
 # ["exec_times": 0]
	sw	$t1,0($t0)
 # ["exec_times": 0]
	# .loc	2, 217
 # ["exec_times": 0]
	move	$t4,$a0
 # ["exec_times": 0]
	# .loc	2, 218
 # ["exec_times": 0]
	move	$t3,$a0
 # ["exec_times": 0]
	# .loc	2, 219
 # ["exec_times": 0]
	li	$t2,32
 # ["exec_times": 0]
	addu	$t5,$a0,$t2
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a0,0($t5)
 # ["exec_times": 0]
	# .loc	2, 219
 # ["exec_times": 0]
	la	$t5,0($zero)
 # ["exec_times": 0]
	sne	$t5,$a0,$t5
 # ["exec_times": 0]
	beqz	$t5,reverse.L5
 # ["exec_times": 0]
	nop	
reverse.L4:
	# .loc	2, 220
 # ["exec_times": 0]
	li	$t6,32
 # ["exec_times": 0]
	addu	$t7,$a0,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t5,0($t7)
 # ["exec_times": 0]
	# .loc	2, 221
 # ["exec_times": 0]
	li	$t8,32
 # ["exec_times": 0]
	addu	$t9,$a0,$t8
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$t4,0($t9)
 # ["exec_times": 0]
	# .loc	2, 222
 # ["exec_times": 0]
	li	$a1,36
 # ["exec_times": 0]
	addu	$a1,$t4,$a1
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$a0,0($a1)
 # ["exec_times": 0]
	# .loc	2, 219
 # ["exec_times": 0]
	move	$t4,$a0
 # ["exec_times": 0]
	move	$a0,$t5
 # ["exec_times": 0]
	# .loc	2, 219
 # ["exec_times": 0]
	la	$a2,0($zero)
 # ["exec_times": 0]
	sne	$a3,$a0,$a2
 # ["exec_times": 0]
	bnez	$a3,reverse.L4
 # ["exec_times": 0]
	nop	
reverse.L5:
	# .loc	2, 224
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 0]
	addu	$v1,$t3,$v0
 # ["fields": "next"]
 # ["exec_times": 0]
	sw	$s0,0($v1)
 # ["exec_times": 0]
	# .loc	2, 225
 # ["exec_times": 0]
	li	$t0,36
 # ["exec_times": 0]
	addu	$t1,$s0,$t0
 # ["fields": "prev"]
 # ["exec_times": 0]
	sw	$t3,0($t1)
 # ["exec_times": 0]
	# .loc	2, 229
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	reverse 
	.text	
	.align	2
	.align	2
	# .loc	2, 180
	.ent	distance 
distance:
	spawn	distance.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -160
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 160, $31
 # ["header/trailer":]
	cqip	distance.headerspawn
 # ["header/trailer":]
distance.headerspawn:
 # ["header/trailer":]
	pslice_entry	distance.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
 # ["header/trailer":]
	pslice_exit	distance.headerspawn
	# .loc	2, 183
 # ["exec_times": 0]
	li	$t2,8
 # ["exec_times": 8505]
	addu	$t3,$a0,$t2
 # ["fields": "x"]
 # ["exec_times": 8505]
	l.d	$f4,0($t3)
 # ["exec_times": 8505]
	# .loc	2, 183
 # ["exec_times": 0]
	li	$t4,16
 # ["exec_times": 8505]
	addu	$t5,$a0,$t4
 # ["fields": "y"]
 # ["exec_times": 8505]
	l.d	$f6,0($t5)
 # ["exec_times": 8505]
	# .loc	2, 184
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 8505]
	addu	$t7,$a1,$t6
 # ["fields": "x"]
 # ["exec_times": 8505]
	l.d	$f8,0($t7)
 # ["exec_times": 8505]
	# .loc	2, 184
 # ["exec_times": 0]
	li	$t8,16
 # ["exec_times": 8505]
	addu	$t9,$a1,$t8
 # ["fields": "y"]
 # ["exec_times": 8505]
	l.d	$f10,0($t9)
 # ["exec_times": 8505]
	# .loc	2, 185
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 8505]
	sub.d	$f16,$f4,$f8
 # ["exec_times": 8505]
	sub.d	$f18,$f4,$f8
 # ["exec_times": 8505]
	mul.d	$f18,$f16,$f18
 # ["exec_times": 8505]
	sub.d	$f12,$f6,$f10
 # ["exec_times": 8505]
	sub.d	$f14,$f6,$f10
 # ["exec_times": 8505]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 8505]
	add.d	$f12,$f18,$f0
 # ["exec_times": 8505]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 8505]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 8505]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	distance 
	.file	3 "/home/keyming/Prophet/testcase/tsp/tsp.c"
	.text	
	.align	2
	.align	2
	.globl	mylog
	# .loc	3, 11
	.ent	mylog 
mylog:
	spawn	mylog.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 40, $31
 # ["header/trailer":]
	cqip	mylog.headerspawn
 # ["header/trailer":]
mylog.headerspawn:
 # ["header/trailer":]
	pslice_entry	mylog.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	pslice_exit	mylog.headerspawn
	# .loc	3, 12
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 1]
	# .loc	3, 12
 # ["exec_times": 0]
	li	$t9,1
 # ["exec_times": 1]
	# .loc	3, 14
 # ["exec_times": 0]
	slt	$a1,$t9,$a0
 # ["exec_times": 1]
	beqz	$a1,mylog.L1
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
mylog.L4:
	# .loc	3, 14
 # ["exec_times": 0]
	li	$a1,2
 # ["exec_times": 0]
	mult	$t9,$a1
	mflo	$t9
 # ["exec_times": 0]
	# .loc	3, 14
 # ["exec_times": 0]
	li	$a2,1
 # ["exec_times": 0]
	addu	$v0,$v0,$a2
 # ["exec_times": 0]
	slt	$a3,$t9,$a0
 # ["exec_times": 0]
	bnez	$a3,mylog.L4
 # ["exec_times": 0]
	nop	
mylog.L1:
	# .loc	3, 15
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	mylog 
	.text	
	.align	2
	.align	2
	.globl	dealwithargs
	# .loc	3, 19
	.ent	dealwithargs 
dealwithargs:
	spawn	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -64
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 64, $31
 # ["header/trailer":]
	cqip	dealwithargs.headerspawn
 # ["header/trailer":]
dealwithargs.headerspawn:
 # ["header/trailer":]
	pslice_entry	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	dealwithargs.headerspawn
	move	$s0,$a0
	# .loc	3, 22
 # ["exec_times": 0]
	li	$v0,3
 # ["exec_times": 1]
	slt	$v1,$v0,$s0
 # ["exec_times": 1]
	bnez	$v1,dealwithargs.__done4
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	3, 25
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 1]
	sw	$t0,flag
dealwithargs.__done4:
	# .loc	3, 28
 # ["exec_times": 0]
	li	$t1,2
 # ["exec_times": 1]
	slt	$t2,$t1,$s0
 # ["exec_times": 1]
	bnez	$t2,dealwithargs.__done5
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	3, 31
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 1]
	sw	$t3,NumNodes
dealwithargs.__done5:
	# .loc	3, 34
 # ["exec_times": 0]
	la	$t0,mylog
 # ["exec_times": 1]
	lw	$a0,NumNodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "mylog"]
 # ["call_overhead": 5]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,NDim
	# .loc	3, 36
 # ["exec_times": 0]
	li	$t4,1
 # ["exec_times": 1]
	slt	$t5,$t4,$s0
 # ["exec_times": 1]
	bnez	$t5,dealwithargs.__done6
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	3, 39
 # ["exec_times": 0]
	li	$s1,100
 # ["exec_times": 1]
dealwithargs.__done6:
	# .loc	3, 42
 # ["exec_times": 0]
	move	$v0,$s1
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
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	dealwithargs 
	.text	
	.align	2
	.align	2
	.globl	build_tree
	# .loc	2, 115
	.ent	build_tree 
build_tree:
	spawn	build_tree.headerspawn
 # ["header/trailer":]
	la	$sp,-456($sp)
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
	.mask	0x803f0000, -456
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
	.fmask	0x15500000, -456
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 456, $31
 # ["header/trailer":]
	cqip	build_tree.headerspawn
 # ["header/trailer":]
build_tree.headerspawn:
 # ["header/trailer":]
	pslice_entry	build_tree.headerspawn
 # ["header/trailer":]
	la	$sp,-456($sp)
 # ["header/trailer":]
	pslice_exit	build_tree.headerspawn
	spawn	build_tree.spawntail2
	spawn	build_tree.spawntail3
	l.d	$f20,408($sp)
	l.d	$f22,416($sp)
	l.d	$f26,424($sp)
	l.d	$f28,432($sp)
	move	$s3,$a0
	move	$s2,$a1
	move	$s1,$a2
	move	$s0,$a3
	# .loc	2, 122
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 255]
	seq	$t7,$s3,$t6
 # ["exec_times": 255]
	beqz	$t7,build_tree.L1
 # ["exec_times": 255]
 # ["instr_profile": 255 127]
	nop	
	# .loc	2, 122
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 128]
	cqip	build_tree.spawntail2
build_tree.spawntail2:
	pslice_entry	build_tree.spawntail2
	pslice_exit	build_tree.spawntail2
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 128]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
build_tree.L1:
	# .loc	2, 124
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 127]
	li	$a0,40
 # ["exec_times": 127]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 127]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s4,$v0
 # ["exec_times": 127]
	# .loc	2, 126
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 127]
	sne	$t9,$s2,$t8
 # ["exec_times": 127]
	beqz	$t9,build_tree.L2
 # ["exec_times": 127]
 # ["instr_profile": 127 85]
	nop	
	# .loc	2, 127
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 42]
	sne	$a1,$s2,$a0
 # ["exec_times": 42]
	move	$a2,$zero
 # ["exec_times": 42]
	seq	$s2,$a1,$a2
 # ["exec_times": 42]
	# .loc	2, 128
 # ["exec_times": 0]
	la	$t0,median
 # ["exec_times": 42]
	mov.d	$f12,$f28
	mov.d	$f14,$f26
	move	$fp,$sp
	fst	$sp
	sw	$s3,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 42]
 # ["proc_name": "median"]
 # ["call_overhead": 32]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	2, 130
 # ["exec_times": 0]
	li	$a3,24
 # ["exec_times": 42]
	addu	$s5,$s4,$a3
 # ["fields": "left"]
 # ["exec_times": 42]
	la	$t0,build_tree
 # ["exec_times": 42]
	li	$v0,2
 # ["exec_times": 42]
	div	$a0,$s3,$v0
 # ["exec_times": 42]
	li	$v1,2
 # ["exec_times": 42]
	div	$t1,$s0,$v1
 # ["exec_times": 42]
	addu	$a2,$s1,$t1
 # ["exec_times": 42]
	li	$t1,2
 # ["exec_times": 42]
	div	$a3,$s0,$t1
 # ["exec_times": 42]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	s.d	$f28,-24($sp)
	s.d	$f24,-32($sp)
	s.d	$f22,-40($sp)
	s.d	$f20,-48($sp)
	jalr	$t0,$ra
 # ["exec_times": 42]
 # ["proc_name": "build_tree"]
 # ["call_overhead": 196]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s5)
 # ["exec_times": 42]
	# .loc	2, 131
 # ["exec_times": 0]
	li	$t2,28
 # ["exec_times": 42]
	addu	$s5,$s4,$t2
 # ["fields": "right"]
 # ["exec_times": 42]
	la	$t0,build_tree
 # ["exec_times": 42]
	li	$t3,2
 # ["exec_times": 42]
	div	$a0,$s3,$t3
 # ["exec_times": 42]
	li	$t4,2
 # ["exec_times": 42]
	div	$a3,$s0,$t4
 # ["exec_times": 42]
	move	$a1,$s2
	move	$a2,$s1
	move	$fp,$sp
	fst	$sp
	s.d	$f24,-24($sp)
	s.d	$f26,-32($sp)
	s.d	$f22,-40($sp)
	s.d	$f20,-48($sp)
	jalr	$t0,$ra
 # ["exec_times": 42]
 # ["proc_name": "build_tree"]
 # ["call_overhead": 1888]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s5)
 # ["exec_times": 42]
	# .loc	2, 137
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 42]
	addu	$t6,$s4,$t5
 # ["fields": "x"]
 # ["exec_times": 42]
	s.d	$f24,0($t6)
 # ["exec_times": 42]
	# .loc	2, 138
 # ["exec_times": 0]
	li	$t7,16
 # ["exec_times": 42]
	addu	$s0,$s4,$t7
 # ["fields": "y"]
 # ["exec_times": 42]
	la	$t0,uniform
 # ["exec_times": 42]
	mov.d	$f12,$f22
	mov.d	$f14,$f20
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 42]
 # ["proc_name": "uniform"]
 # ["call_overhead": 12]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	s.d	$f0,0($s0)
 # ["exec_times": 42]
	j	build_tree.__done3
 # ["exec_times": 42]
 # ["instr_profile": 42 42]
	nop	
build_tree.L2:
	# .loc	2, 141
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 85]
	sne	$t9,$s2,$t8
 # ["exec_times": 85]
	move	$a0,$zero
 # ["exec_times": 85]
	seq	$s2,$t9,$a0
 # ["exec_times": 85]
	# .loc	2, 142
 # ["exec_times": 0]
	la	$t0,median
 # ["exec_times": 85]
	mov.d	$f12,$f22
	mov.d	$f14,$f20
	move	$fp,$sp
	fst	$sp
	sw	$s3,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 85]
 # ["proc_name": "median"]
 # ["call_overhead": 32]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	2, 144
 # ["exec_times": 0]
	li	$a1,24
 # ["exec_times": 85]
	addu	$s5,$s4,$a1
 # ["fields": "left"]
 # ["exec_times": 85]
	la	$t0,build_tree
 # ["exec_times": 85]
	li	$a2,2
 # ["exec_times": 85]
	div	$a0,$s3,$a2
 # ["exec_times": 85]
	li	$a3,2
 # ["exec_times": 85]
	div	$v0,$s0,$a3
 # ["exec_times": 85]
	addu	$a2,$s1,$v0
 # ["exec_times": 85]
	li	$v1,2
 # ["exec_times": 85]
	div	$a3,$s0,$v1
 # ["exec_times": 85]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	s.d	$f28,-24($sp)
	s.d	$f26,-32($sp)
	s.d	$f22,-40($sp)
	s.d	$f24,-48($sp)
	jalr	$t0,$ra
 # ["exec_times": 85]
 # ["proc_name": "build_tree"]
 # ["call_overhead": 47]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s5)
 # ["exec_times": 85]
	# .loc	2, 145
 # ["exec_times": 0]
	li	$t0,28
 # ["exec_times": 85]
	addu	$s5,$s4,$t0
 # ["fields": "right"]
 # ["exec_times": 85]
	la	$t0,build_tree
 # ["exec_times": 85]
	li	$t1,2
 # ["exec_times": 85]
	div	$a0,$s3,$t1
 # ["exec_times": 85]
	li	$t2,2
 # ["exec_times": 85]
	div	$a3,$s0,$t2
 # ["exec_times": 85]
	move	$a1,$s2
	move	$a2,$s1
	move	$fp,$sp
	fst	$sp
	s.d	$f28,-24($sp)
	s.d	$f26,-32($sp)
	s.d	$f24,-40($sp)
	s.d	$f20,-48($sp)
	jalr	$t0,$ra
 # ["exec_times": 85]
 # ["proc_name": "build_tree"]
 # ["call_overhead": 3830]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s5)
 # ["exec_times": 85]
	# .loc	2, 151
 # ["exec_times": 0]
	li	$t3,16
 # ["exec_times": 85]
	addu	$t4,$s4,$t3
 # ["fields": "y"]
 # ["exec_times": 85]
	s.d	$f24,0($t4)
 # ["exec_times": 85]
	# .loc	2, 152
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 85]
	addu	$s0,$s4,$t5
 # ["fields": "x"]
 # ["exec_times": 85]
	la	$t0,uniform
 # ["exec_times": 85]
	mov.d	$f12,$f28
	mov.d	$f14,$f26
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 85]
 # ["proc_name": "uniform"]
 # ["call_overhead": 12]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	s.d	$f0,0($s0)
 # ["exec_times": 85]
build_tree.__done3:
	# .loc	2, 154
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 127]
	addu	$t7,$s4,$t6
 # ["fields": "sz"]
 # ["exec_times": 127]
	sw	$s3,0($t7)
 # ["exec_times": 127]
	# .loc	2, 155
 # ["exec_times": 0]
	li	$t8,32
 # ["exec_times": 127]
	addu	$t9,$s4,$t8
 # ["fields": "next"]
 # ["exec_times": 127]
	la	$a0,0($zero)
 # ["exec_times": 127]
	sw	$a0,0($t9)
 # ["exec_times": 127]
	# .loc	2, 156
 # ["exec_times": 0]
	li	$a1,36
 # ["exec_times": 127]
	addu	$a2,$s4,$a1
 # ["fields": "prev"]
 # ["exec_times": 127]
	la	$a3,0($zero)
 # ["exec_times": 127]
	sw	$a3,0($a2)
 # ["exec_times": 127]
	# .loc	2, 161
 # ["exec_times": 0]
	move	$v0,$s4
	cqip	build_tree.spawntail3
build_tree.spawntail3:
	pslice_entry	build_tree.spawntail3
	pslice_exit	build_tree.spawntail3
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 127]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	build_tree 
	.text	
	.align	2
	.align	2
	.globl	tsp
	# .loc	2, 430
	.ent	tsp 
tsp:
	spawn	tsp.headerspawn
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
	sw	$s4,24($sp)
 # ["header/trailer":]
	sw	$s5,28($sp)
 # ["header/trailer":]
	.mask	0x803f0000, -128
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	tsp.headerspawn
 # ["header/trailer":]
tsp.headerspawn:
 # ["header/trailer":]
	pslice_entry	tsp.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	tsp.headerspawn
	spawn	tsp.spawntail4
	spawn	tsp.spawntail5
	move	$s2,$a0
	move	$s1,$a1
	move	$s0,$a2
	# .loc	2, 437
 # ["exec_times": 0]
	li	$t0,2
 # ["exec_times": 1]
	div	$s4,$s0,$t0
 # ["exec_times": 1]
	# .loc	2, 439
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 1]
	addu	$t2,$s2,$t1
 # ["fields": "sz"]
 # ["exec_times": 1]
	lw	$t3,0($t2)
 # ["exec_times": 1]
	sle	$t4,$t3,$s1
 # ["exec_times": 1]
	beqz	$t4,tsp.L1
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 439
 # ["exec_times": 0]
	la	$t0,conquer
 # ["exec_times": 1]
	move	$a0,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "conquer"]
 # ["call_overhead": 269326]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	cqip	tsp.spawntail4
tsp.spawntail4:
	pslice_entry	tsp.spawntail4
	pslice_exit	tsp.spawntail4
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
 # ["exec_times": 1]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
tsp.L1:
	# .loc	2, 441
 # ["exec_times": 0]
	li	$t5,24
 # ["exec_times": 0]
	addu	$t6,$s2,$t5
 # ["fields": "left"]
 # ["exec_times": 0]
	lw	$a0,0($t6)
 # ["exec_times": 0]
	# .loc	2, 441
 # ["exec_times": 0]
	li	$t7,28
 # ["exec_times": 0]
	addu	$t8,$s2,$t7
 # ["fields": "right"]
 # ["exec_times": 0]
	lw	$s5,0($t8)
 # ["exec_times": 0]
	# .loc	2, 443
 # ["exec_times": 0]
	la	$t0,tsp
 # ["exec_times": 0]
	move	$a1,$s1
	move	$a2,$s4
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "tsp"]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
	# .loc	2, 447
 # ["exec_times": 0]
	la	$t0,tsp
 # ["exec_times": 0]
	move	$a0,$s5
	move	$a1,$s1
	move	$a2,$s4
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "tsp"]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 453
 # ["exec_times": 0]
	la	$t0,merge
 # ["exec_times": 0]
	move	$a0,$s3
	move	$a1,$v0
	move	$a2,$s2
	move	$a3,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "merge"]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	cqip	tsp.spawntail5
tsp.spawntail5:
	pslice_entry	tsp.spawntail5
	pslice_exit	tsp.spawntail5
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
 # ["exec_times": 0]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	tsp 
	.text	
	.align	2
	.align	2
	.globl	drand48
	# .loc	2, 78
	.ent	drand48 
drand48:
	spawn	drand48.headerspawn
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
	cqip	drand48.headerspawn
 # ["header/trailer":]
drand48.headerspawn:
 # ["header/trailer":]
	pslice_entry	drand48.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	pslice_exit	drand48.headerspawn
	# .loc	2, 79
 # ["exec_times": 0]
	la	$t0,rand
 # ["exec_times": 254]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 254]
 # ["proc_name": "rand"]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	mtc1	$v0,$f2
	cvt.d.w	$f4,$f2
 # ["exec_times": 254]
	li.d	$f6,3.276700000000000000e+04
 # ["exec_times": 254]
	div.d	$f0,$f4,$f6
 # ["exec_times": 254]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 254]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	drand48 
	.text	
	.align	2
	.align	2
	.globl	print_tree
	# .loc	2, 465
	.ent	print_tree 
print_tree:
	spawn	print_tree.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -112
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 112, $31
 # ["header/trailer":]
	cqip	print_tree.headerspawn
 # ["header/trailer":]
print_tree.headerspawn:
 # ["header/trailer":]
	pslice_entry	print_tree.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	pslice_exit	print_tree.headerspawn
	move	$s0,$a0
	# .loc	2, 470
 # ["exec_times": 0]
	la	$t2,0($zero)
 # ["exec_times": 0]
	sne	$t3,$s0,$t2
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
	seq	$t5,$t3,$t4
 # ["exec_times": 0]
	beqz	$t5,print_tree.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 470
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
print_tree.L1:
	# .loc	2, 471
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 0]
	addu	$t7,$s0,$t6
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f14,0($t7)
 # ["exec_times": 0]
	# .loc	2, 471
 # ["exec_times": 0]
	li	$t8,16
 # ["exec_times": 0]
	addu	$t9,$s0,$t8
 # ["fields": "y"]
 # ["exec_times": 0]
	l.d	$f4,0($t9)
 # ["exec_times": 0]
	# .loc	2, 472
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_0
 # ["exec_times": 0]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f4,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 473
 # ["exec_times": 0]
	li	$a0,24
 # ["exec_times": 0]
	addu	$a1,$s0,$a0
 # ["fields": "left"]
 # ["exec_times": 0]
	lw	$a0,0($a1)
 # ["exec_times": 0]
	# .loc	2, 473
 # ["exec_times": 0]
	li	$a2,28
 # ["exec_times": 0]
	addu	$a3,$s0,$a2
 # ["fields": "right"]
 # ["exec_times": 0]
	lw	$s0,0($a3)
 # ["exec_times": 0]
	# .loc	2, 474
 # ["exec_times": 0]
	la	$t0,print_tree
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "print_tree"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 475
 # ["exec_times": 0]
	la	$t0,print_tree
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "print_tree"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 476
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	print_tree 
	.text	
	.align	2
	.align	2
	.globl	print_list
	# .loc	2, 479
	.ent	print_list 
print_list:
	spawn	print_list.headerspawn
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
	.mask	0x80030000, -136
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 136, $31
 # ["header/trailer":]
	cqip	print_list.headerspawn
 # ["header/trailer":]
print_list.headerspawn:
 # ["header/trailer":]
	pslice_entry	print_list.headerspawn
 # ["header/trailer":]
	la	$sp,-136($sp)
 # ["header/trailer":]
	pslice_exit	print_list.headerspawn
	move	$s0,$a0
	# .loc	2, 483
 # ["exec_times": 0]
	la	$t1,0($zero)
 # ["exec_times": 0]
	sne	$t2,$s0,$t1
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	seq	$t4,$t2,$t3
 # ["exec_times": 0]
	beqz	$t4,print_list.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 483
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
print_list.L1:
	# .loc	2, 484
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	addu	$t6,$s0,$t5
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f14,0($t6)
 # ["exec_times": 0]
	# .loc	2, 484
 # ["exec_times": 0]
	li	$t7,16
 # ["exec_times": 0]
	addu	$t8,$s0,$t7
 # ["fields": "y"]
 # ["exec_times": 0]
	l.d	$f10,0($t8)
 # ["exec_times": 0]
	# .loc	2, 485
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_1
 # ["exec_times": 0]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f10,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 486
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 0]
	addu	$a0,$s0,$t9
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s1,0($a0)
 # ["exec_times": 0]
	# .loc	2, 486
 # ["exec_times": 0]
	sne	$a1,$s1,$s0
 # ["exec_times": 0]
	beqz	$a1,print_list.L5
 # ["exec_times": 0]
	nop	
print_list.L4:
	# .loc	2, 488
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 0]
	addu	$a3,$s1,$a2
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f14,0($a3)
 # ["exec_times": 0]
	# .loc	2, 488
 # ["exec_times": 0]
	li	$v0,16
 # ["exec_times": 0]
	addu	$v1,$s1,$v0
 # ["fields": "y"]
 # ["exec_times": 0]
	l.d	$f10,0($v1)
 # ["exec_times": 0]
	# .loc	2, 489
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_1
 # ["exec_times": 0]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f10,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 486
 # ["exec_times": 0]
	li	$t0,32
 # ["exec_times": 0]
	addu	$t1,$s1,$t0
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s1,0($t1)
 # ["exec_times": 0]
	# .loc	2, 486
 # ["exec_times": 0]
	sne	$t2,$s1,$s0
 # ["exec_times": 0]
	bnez	$t2,print_list.L4
 # ["exec_times": 0]
	nop	
print_list.L5:
	# .loc	2, 491
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
	.end	print_list 
	.text	
	.align	2
	.align	2
	.globl	entry
	# .loc	2, 494
	.ent	entry 
entry:
	spawn	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -200
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 200, $31
 # ["header/trailer":]
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L6
 # ["cqip_pos": <L:entry.L6,0>]
	# .loc	2, 501
 # ["exec_times": 0]
	la	$t0,dealwithargs
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "dealwithargs"]
 # ["call_overhead": 20]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L6
 # ["cqip_pos": <L:entry.L6,0>]
entry.L6:
	pslice_entry	entry.L6
 # ["pslice_entry_pos": <L:entry.L6,0>]
	pslice_exit	entry.L6
 # ["pslice_exit_pos": <L:entry.L6,0>]
	spawn	entry.L7
 # ["cqip_pos": <L:entry.L7,0>]
	move	$s0,$v0
	# .loc	2, 503
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_2
 # ["exec_times": 1]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 504
 # ["exec_times": 0]
	la	$t0,build_tree
 # ["exec_times": 1]
	move	$a1,$zero
 # ["exec_times": 1]
	move	$a2,$zero
 # ["exec_times": 1]
	li.d	$f18,0.000000000000000000e+00
 # ["exec_times": 1]
	li.d	$f12,1.000000000000000000e+00
 # ["exec_times": 1]
	li.d	$f14,0.000000000000000000e+00
 # ["exec_times": 1]
	li.d	$f0,1.000000000000000000e+00
 # ["exec_times": 1]
	move	$a0,$s0
	lw	$a3,NumNodes
	move	$fp,$sp
	fst	$sp
	s.d	$f18,-24($sp)
	s.d	$f12,-32($sp)
	s.d	$f14,-40($sp)
	s.d	$f0,-48($sp)
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "build_tree"]
 # ["call_overhead": 13636]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L7
 # ["cqip_pos": <L:entry.L7,0>]
entry.L7:
	pslice_entry	entry.L7
 # ["pslice_entry_pos": <L:entry.L7,0>]
	pslice_exit	entry.L7
 # ["pslice_exit_pos": <L:entry.L7,0>]
	spawn	entry.L8
 # ["cqip_pos": <L:entry.L8,0>]
	move	$s0,$v0
	# .loc	2, 505
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 1]
	lw	$t5,flag
	sne	$t6,$t5,$t4
 # ["exec_times": 1]
	move	$t7,$zero
 # ["exec_times": 1]
	seq	$t8,$t6,$t7
 # ["exec_times": 1]
	beqz	$t8,entry.L1
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 505
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
entry.L1:
	# .loc	2, 506
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 1]
	lw	$a0,flag
	sne	$a1,$a0,$t9
 # ["exec_times": 1]
	beqz	$a1,entry.L2
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	# .loc	2, 506
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
entry.L2:
	cqip	entry.L8
 # ["cqip_pos": <L:entry.L8,0>]
entry.L8:
	pslice_entry	entry.L8
 # ["pslice_entry_pos": <L:entry.L8,0>]
	pslice_exit	entry.L8
 # ["pslice_exit_pos": <L:entry.L8,0>]
	spawn	entry.L9
 # ["cqip_pos": <L:entry.L9,0>]
	# .loc	2, 507
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 1]
	lw	$a3,flag
	sne	$v0,$a3,$a2
 # ["exec_times": 1]
	beqz	$v0,entry.L3
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	# .loc	2, 507
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 0]
	la	$a0,__tmp_string_5
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
entry.L3:
	# .loc	2, 510
 # ["exec_times": 0]
	la	$t0,myprintf2
 # ["exec_times": 1]
	la	$a0,__tmp_string_6
 # ["exec_times": 1]
	li	$a1,150
 # ["exec_times": 1]
	lw	$a2,NumNodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf2"]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 511
 # ["exec_times": 0]
	la	$t0,tsp
 # ["exec_times": 1]
	li	$a1,150
 # ["exec_times": 1]
	move	$a0,$s0
	lw	$a2,NumNodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "tsp"]
 # ["call_overhead": 269336]
 # ["regs_used": 5 6 7]
	nop	
	cqip	entry.L9
 # ["cqip_pos": <L:entry.L9,0>]
entry.L9:
	pslice_entry	entry.L9
 # ["pslice_entry_pos": <L:entry.L9,0>]
	pslice_exit	entry.L9
 # ["pslice_exit_pos": <L:entry.L9,0>]
	# .loc	2, 516
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 1]
	lw	$t0,flag
	sne	$t1,$t0,$v1
 # ["exec_times": 1]
	beqz	$t1,entry.L4
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	# .loc	2, 516
 # ["exec_times": 0]
	la	$t0,print_list
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "print_list"]
 # ["regs_used": 5]
	nop	
entry.L4:
	# .loc	2, 517
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 1]
	lw	$t3,flag
	sne	$t4,$t3,$t2
 # ["exec_times": 1]
	beqz	$t4,entry.L5
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	# .loc	2, 517
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 0]
	la	$a0,__tmp_string_7
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
entry.L5:
	# .loc	2, 522
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 1]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
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
