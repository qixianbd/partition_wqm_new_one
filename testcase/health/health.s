	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc12416_0.i /home/keyming/Prophet/testcase/health/health.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/health/health.snt /home/keyming/Prophet/testcase/health/health.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/health/health.temp1 /home/keyming/Prophet/testcase/health/health.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/health/health.temp2 /home/keyming/Prophet/testcase/health/health.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/health/health.temp3 /home/keyming/Prophet/testcase/health/health.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/health/health.temp4 /home/keyming/Prophet/testcase/health/health.snp
	# history:  transform_print /home/keyming/Prophet/testcase/health/health.snp /home/keyming/Prophet/testcase/health/health.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/health/health.tp /home/keyming/Prophet/testcase/health/health.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/health/health.iocal /home/keyming/Prophet/testcase/health/health.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/health/health.bore /home/keyming/Prophet/testcase/health/health.porky
	# history:  suifvm /home/keyming/Prophet/testcase/health/health.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/health/health.pf /home/keyming/Prophet/testcase/health/health.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/health/health.swig /home/keyming/Prophet/testcase/health/health.mgen
	# history:  raga /home/keyming/Prophet/testcase/health/health.mgen /home/keyming/Prophet/testcase/health/health.raga
	# history:  partition /home/keyming/Prophet/testcase/health/health.sche /home/keyming/Prophet/testcase/health/health.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/health/health.par /home/keyming/Prophet/testcase/health/health.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/health/health.mfin /home/keyming/Prophet/testcase/health/health.nop
	# history:  transform_main /home/keyming/Prophet/testcase/health/health.nop /home/keyming/Prophet/testcase/health/health.entry
	# history:  printmachine /home/keyming/Prophet/testcase/health/health.entry /home/keyming/Prophet/testcase/health/health.s
	.set	noreorder
	.comm	max_level, 4
	.comm	max_time, 4
	.comm	seed, 4
	.sdata	
	.globl	time
	.align	2
	.align	0	# disable automatic alignment
time:
	.word	0
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"usage:  health <# levels> <time> <seed>\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"max_level=%d  max_time=%d  seed=%d \012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"\012\012    Columbian Health Care Simulator\012\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_3:
	.ascii	"Working...\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_4:
	.ascii	"%d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_5:
	.ascii	"Done.\012\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_6:
	.ascii	"# of people treated:              %f people\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_7:
	.ascii	"Average length of stay:           %f time units\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_8:
	.ascii	"Average # of hospitals visited:   %f hospitals\012\012\000"
	.file	2 "health.c"
	.text	
	.align	2
	.align	2
	.globl	dealwithargs
	# .loc	2, 35
	.ent	dealwithargs 
dealwithargs:
	spawn	dealwithargs.headerspawn
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
	cqip	dealwithargs.headerspawn
 # ["header/trailer":]
dealwithargs.headerspawn:
 # ["header/trailer":]
	pslice_entry	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	pslice_exit	dealwithargs.headerspawn
	# .loc	2, 37
 # ["exec_times": 0]
	li	$t0,4
 # ["exec_times": 1]
	slt	$t1,$a0,$t0
 # ["exec_times": 1]
	beqz	$t1,dealwithargs.L1
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 38
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_0
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 39
 # ["exec_times": 0]
	li	$t2,2
 # ["exec_times": 1]
	sw	$t2,max_level
	# .loc	2, 40
 # ["exec_times": 0]
	li	$t3,16
 # ["exec_times": 1]
	sw	$t3,max_time
	# .loc	2, 41
 # ["exec_times": 0]
	li	$t4,1
 # ["exec_times": 1]
	sw	$t4,seed
dealwithargs.L1:
	# .loc	2, 49
 # ["exec_times": 0]
	la	$t0,myprintf3
 # ["exec_times": 1]
	la	$a0,__tmp_string_1
 # ["exec_times": 1]
	lw	$a1,max_level
	lw	$a2,max_time
	lw	$a3,seed
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf3"]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 50
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
	.end	dealwithargs 
	.text	
	.align	2
	.align	2
	.globl	my_rand
	# .loc	2, 123
	.ent	my_rand 
my_rand:
	spawn	my_rand.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 112, $31
 # ["header/trailer":]
	cqip	my_rand.headerspawn
 # ["header/trailer":]
my_rand.headerspawn:
 # ["header/trailer":]
	pslice_entry	my_rand.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	pslice_exit	my_rand.headerspawn
	# .loc	2, 127
 # ["exec_times": 0]
	li	$t5,123459876
 # ["exec_times": 86]
	xor	$a0,$a0,$t5
 # ["exec_times": 86]
	# .loc	2, 128
 # ["exec_times": 0]
	li	$t6,127773
 # ["exec_times": 86]
	div	$t7,$a0,$t6
 # ["exec_times": 86]
	# .loc	2, 129
 # ["exec_times": 0]
	li	$t8,16807
 # ["exec_times": 86]
	li	$t9,127773
 # ["exec_times": 86]
	mult	$t7,$t9
	mflo	$a1
 # ["exec_times": 86]
	subu	$a1,$a0,$a1
 # ["exec_times": 86]
	mult	$t8,$a1
	mflo	$a2
 # ["exec_times": 86]
	li	$a3,2836
 # ["exec_times": 86]
	mult	$a3,$t7
	mflo	$v0
 # ["exec_times": 86]
	subu	$a0,$a2,$v0
 # ["exec_times": 86]
	# .loc	2, 130
 # ["exec_times": 0]
	li	$v1,123459876
 # ["exec_times": 86]
	xor	$a0,$a0,$v1
 # ["exec_times": 86]
	# .loc	2, 131
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 86]
	slt	$t1,$a0,$t0
 # ["exec_times": 86]
	beqz	$t1,my_rand.L1
 # ["exec_times": 86]
 # ["instr_profile": 86 84]
	nop	
	# .loc	2, 132
 # ["exec_times": 0]
	li	$t2,2147483647
 # ["exec_times": 2]
	addu	$a0,$a0,$t2
 # ["exec_times": 2]
my_rand.L1:
	# .loc	2, 133
 # ["exec_times": 0]
	li.d	$f10,4.656612875245796923e-10
 # ["exec_times": 86]
	mtc1	$a0,$f16
	cvt.d.w	$f18,$f16
 # ["exec_times": 86]
	mul.d	$f0,$f10,$f18
 # ["exec_times": 86]
	# .loc	2, 135
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 86]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	my_rand 
	.text	
	.align	2
	.align	2
	.globl	generate_patient
	# .loc	2, 410
	.ent	generate_patient 
generate_patient:
	spawn	generate_patient.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -168
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 168, $31
 # ["header/trailer":]
	cqip	generate_patient.headerspawn
 # ["header/trailer":]
generate_patient.headerspawn:
 # ["header/trailer":]
	pslice_entry	generate_patient.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	pslice_exit	generate_patient.headerspawn
	spawn	generate_patient.L3
 # ["cqip_pos": <L:generate_patient.L3,0>]
	move	$s0,$a0
	# .loc	2, 417
 # ["exec_times": 0]
	li	$t6,96
 # ["exec_times": 80]
	addu	$t7,$s0,$t6
 # ["fields": "seed"]
 # ["exec_times": 80]
	lw	$a0,0($t7)
 # ["exec_times": 80]
	# .loc	2, 418
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 80]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 80]
 # ["proc_name": "my_rand"]
 # ["call_overhead": 25]
 # ["regs_used": 5]
 # ["regs_defd": 36]
	nop	
	cqip	generate_patient.L3
 # ["cqip_pos": <L:generate_patient.L3,0>]
generate_patient.L3:
	pslice_entry	generate_patient.L3
 # ["pslice_entry_pos": <L:generate_patient.L3,0>]
	pslice_exit	generate_patient.L3
 # ["pslice_exit_pos": <L:generate_patient.L3,0>]
	# .loc	2, 419
 # ["exec_times": 0]
	li	$t8,96
 # ["exec_times": 80]
	addu	$t9,$s0,$t8
 # ["fields": "seed"]
 # ["exec_times": 80]
	li.d	$f4,2.147483647000000000e+09
 # ["exec_times": 80]
	mul.d	$f4,$f0,$f4
 # ["exec_times": 80]
	cvt.w.d	$f6,$f4
	mfc1	$a0,$f6
 # ["exec_times": 80]
	sw	$a0,0($t9)
 # ["exec_times": 80]
	# .loc	2, 421
 # ["exec_times": 0]
	li	$a1,92
 # ["exec_times": 80]
	addu	$a2,$s0,$a1
 # ["fields": "label"]
 # ["exec_times": 80]
	lw	$a3,0($a2)
 # ["exec_times": 80]
	# .loc	2, 422
 # ["exec_times": 0]
	li.d	$f8,6.660000000000000364e-01
 # ["exec_times": 80]
	li	$v0,1
	c.lt.d	$f8,$f0
 # ["exec_times": 80]
	bc1t	generate_patient.L2
	nop	
	move	$v0,$zero
generate_patient.L2:
	beqz	$v0,generate_patient.L1
 # ["exec_times": 80]
 # ["instr_profile": 80 54]
	nop	
	# .loc	2, 423
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 26]
	li	$a0,16
 # ["exec_times": 26]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 26]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 425
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 26]
	addu	$t0,$v0,$v1
 # ["fields": "hosps_visited"]
 # ["exec_times": 26]
	move	$t1,$zero
 # ["exec_times": 26]
	sw	$t1,0($t0)
 # ["exec_times": 26]
	# .loc	2, 426
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 26]
	addu	$t3,$v0,$t2
 # ["fields": "time"]
 # ["exec_times": 26]
	move	$t4,$zero
 # ["exec_times": 26]
	sw	$t4,0($t3)
 # ["exec_times": 26]
	# .loc	2, 427
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 26]
	addu	$t6,$v0,$t5
 # ["fields": "time_left"]
 # ["exec_times": 26]
	move	$t7,$zero
 # ["exec_times": 26]
	sw	$t7,0($t6)
 # ["exec_times": 26]
	# .loc	2, 428
 # ["exec_times": 0]
	li	$t8,12
 # ["exec_times": 26]
	addu	$t9,$v0,$t8
 # ["fields": "home_village"]
 # ["exec_times": 26]
	sw	$s0,0($t9)
 # ["exec_times": 26]
	# .loc	2, 430
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 26]
 # ["instr_ret": t:g54]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
generate_patient.L1:
	# .loc	2, 432
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 54]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 54]
 # ["instr_ret": t:g54]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	generate_patient 
	.text	
	.align	2
	.align	2
	.globl	put_in_hosp
	# .loc	2, 388
	.ent	put_in_hosp 
put_in_hosp:
	spawn	put_in_hosp.headerspawn
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
	cqip	put_in_hosp.headerspawn
 # ["header/trailer":]
put_in_hosp.headerspawn:
 # ["header/trailer":]
	pslice_entry	put_in_hosp.headerspawn
 # ["header/trailer":]
	la	$sp,-152($sp)
 # ["header/trailer":]
	pslice_exit	put_in_hosp.headerspawn
	move	$s0,$a1
	# .loc	2, 393
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 26]
	addu	$t4,$s0,$t3
 # ["fields": "hosps_visited"]
 # ["exec_times": 26]
	lw	$t5,0($t4)
 # ["exec_times": 26]
	# .loc	2, 394
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 26]
	addu	$t7,$s0,$t6
 # ["fields": "hosps_visited"]
 # ["exec_times": 26]
	li	$t8,1
 # ["exec_times": 26]
	addu	$t9,$t5,$t8
 # ["exec_times": 26]
	sw	$t9,0($t7)
 # ["exec_times": 26]
	# .loc	2, 395
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 26]
	li	$a2,4
 # ["exec_times": 26]
	addu	$a2,$a0,$a2
 # ["fields": "free_personnel"]
 # ["exec_times": 26]
	lw	$a3,0($a2)
 # ["exec_times": 26]
	slt	$v0,$a1,$a3
 # ["exec_times": 26]
	beqz	$v0,put_in_hosp.L1
 # ["exec_times": 26]
 # ["instr_profile": 26 20]
	nop	
	# .loc	2, 396
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 6]
	addu	$t0,$a0,$v1
 # ["fields": "free_personnel"]
 # ["exec_times": 6]
	lw	$t5,0($t0)
 # ["exec_times": 6]
	# .loc	2, 397
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 6]
	addu	$t2,$a0,$t1
 # ["fields": "free_personnel"]
 # ["exec_times": 6]
	li	$t3,1
 # ["exec_times": 6]
	subu	$t4,$t5,$t3
 # ["exec_times": 6]
	sw	$t4,0($t2)
 # ["exec_times": 6]
	# .loc	2, 398
 # ["exec_times": 0]
	li	$t5,24
 # ["exec_times": 6]
	addu	$a0,$a0,$t5
 # ["fields": "assess"]
 # ["exec_times": 6]
	# .loc	2, 399
 # ["exec_times": 0]
	la	$t0,addList
 # ["exec_times": 6]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 6]
 # ["proc_name": "addList"]
 # ["call_overhead": 31]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 400
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 6]
	addu	$t7,$s0,$t6
 # ["fields": "time_left"]
 # ["exec_times": 6]
	li	$t8,3
 # ["exec_times": 6]
	sw	$t8,0($t7)
 # ["exec_times": 6]
	# .loc	2, 401
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 6]
	addu	$a0,$s0,$t9
 # ["fields": "time"]
 # ["exec_times": 6]
	lw	$t5,0($a0)
 # ["exec_times": 6]
	# .loc	2, 402
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 6]
	addu	$a2,$s0,$a1
 # ["fields": "time"]
 # ["exec_times": 6]
	li	$a3,3
 # ["exec_times": 6]
	addu	$v0,$t5,$a3
 # ["exec_times": 6]
	sw	$v0,0($a2)
 # ["exec_times": 6]
	j	put_in_hosp.__done2
 # ["exec_times": 6]
 # ["instr_profile": 6 6]
	nop	
put_in_hosp.L1:
	# .loc	2, 404
 # ["exec_times": 0]
	li	$v1,12
 # ["exec_times": 20]
	addu	$a0,$a0,$v1
 # ["fields": "waiting"]
 # ["exec_times": 20]
	# .loc	2, 405
 # ["exec_times": 0]
	la	$t0,addList
 # ["exec_times": 20]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 20]
 # ["proc_name": "addList"]
 # ["call_overhead": 51]
 # ["regs_used": 5 6]
	nop	
put_in_hosp.__done2:
	# .loc	2, 406
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 26]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	put_in_hosp 
	.text	
	.align	2
	.align	2
	.globl	addList
	# .loc	2, 77
	.ent	addList 
addList:
	spawn	addList.headerspawn
 # ["header/trailer":]
	la	$sp,-104($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -104
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 104, $31
 # ["header/trailer":]
	cqip	addList.headerspawn
 # ["header/trailer":]
addList.headerspawn:
 # ["header/trailer":]
	pslice_entry	addList.headerspawn
 # ["header/trailer":]
	la	$sp,-104($sp)
 # ["header/trailer":]
	pslice_exit	addList.headerspawn
	move	$v0,$a0
	move	$s0,$a1
	# .loc	2, 81
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 34]
	sne	$t1,$v0,$t0
 # ["exec_times": 34]
	beqz	$t1,addList.L1
 # ["exec_times": 34]
 # ["instr_profile": 34 0]
	nop	
addList.L4:
	# .loc	2, 82
 # ["exec_times": 0]
	move	$s1,$v0
 # ["exec_times": 71]
	# .loc	2, 83
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 71]
	addu	$t3,$v0,$t2
 # ["fields": "forward"]
 # ["exec_times": 71]
	lw	$v0,0($t3)
 # ["exec_times": 71]
	la	$t4,0($zero)
 # ["exec_times": 71]
	sne	$t5,$v0,$t4
 # ["exec_times": 71]
	bnez	$t5,addList.L4
 # ["exec_times": 71]
 # ["instr_profile": 71 37]
	nop	
addList.L1:
	# .loc	2, 85
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 34]
	li	$a0,12
 # ["exec_times": 34]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 34]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 88
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 34]
	addu	$t7,$v0,$t6
 # ["fields": "patient"]
 # ["exec_times": 34]
	sw	$s0,0($t7)
 # ["exec_times": 34]
	# .loc	2, 89
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 34]
	addu	$t9,$v0,$t8
 # ["fields": "forward"]
 # ["exec_times": 34]
	la	$a0,0($zero)
 # ["exec_times": 34]
	sw	$a0,0($t9)
 # ["exec_times": 34]
	# .loc	2, 90
 # ["exec_times": 0]
	li	$a1,8
 # ["exec_times": 34]
	addu	$a2,$v0,$a1
 # ["fields": "back"]
 # ["exec_times": 34]
	sw	$s1,0($a2)
 # ["exec_times": 34]
	# .loc	2, 92
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 34]
	addu	$v1,$s1,$a3
 # ["fields": "forward"]
 # ["exec_times": 34]
	sw	$v0,0($v1)
 # ["exec_times": 34]
	# .loc	2, 92
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
 # ["exec_times": 34]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	addList 
	.text	
	.align	2
	.align	2
	.globl	removeList
	# .loc	2, 95
	.ent	removeList 
removeList:
	spawn	removeList.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	removeList.headerspawn
 # ["header/trailer":]
removeList.headerspawn:
 # ["header/trailer":]
	pslice_entry	removeList.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	removeList.headerspawn
	# .loc	2, 100
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 8]
	addu	$t0,$a0,$v1
 # ["fields": "patient"]
 # ["exec_times": 8]
	lw	$t1,0($t0)
 # ["exec_times": 8]
	# .loc	2, 101
 # ["exec_times": 0]
	sne	$t2,$t1,$a1
 # ["exec_times": 8]
	beqz	$t2,removeList.L1
 # ["exec_times": 8]
 # ["instr_profile": 8 0]
	nop	
removeList.L4:
	# .loc	2, 102
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 8]
	addu	$t4,$a0,$t3
 # ["fields": "forward"]
 # ["exec_times": 8]
	lw	$a0,0($t4)
 # ["exec_times": 8]
	# .loc	2, 103
 # ["exec_times": 0]
	li	$t5,4
 # ["exec_times": 8]
	addu	$t6,$a0,$t5
 # ["fields": "patient"]
 # ["exec_times": 8]
	lw	$t1,0($t6)
 # ["exec_times": 8]
	sne	$t7,$t1,$a1
 # ["exec_times": 8]
	bnez	$t7,removeList.L4
 # ["exec_times": 8]
 # ["instr_profile": 8 0]
	nop	
removeList.L1:
	# .loc	2, 105
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 8]
	addu	$t9,$a0,$t8
 # ["fields": "back"]
 # ["exec_times": 8]
	lw	$a1,0($t9)
 # ["exec_times": 8]
	# .loc	2, 106
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 8]
	addu	$a2,$a0,$a2
 # ["fields": "forward"]
 # ["exec_times": 8]
	lw	$a3,0($a2)
 # ["exec_times": 8]
	# .loc	2, 107
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 8]
	addu	$v1,$a1,$v0
 # ["fields": "forward"]
 # ["exec_times": 8]
	sw	$a3,0($v1)
 # ["exec_times": 8]
	# .loc	2, 108
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 8]
	addu	$t1,$a0,$t0
 # ["fields": "forward"]
 # ["exec_times": 8]
	lw	$t2,0($t1)
 # ["exec_times": 8]
	la	$t3,0($zero)
 # ["exec_times": 8]
	sne	$t4,$t2,$t3
 # ["exec_times": 8]
	beqz	$t4,removeList.L5
 # ["exec_times": 8]
 # ["instr_profile": 8 6]
	nop	
	# .loc	2, 109
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 2]
	addu	$t6,$a0,$t5
 # ["fields": "forward"]
 # ["exec_times": 2]
	lw	$a1,0($t6)
 # ["exec_times": 2]
	# .loc	2, 110
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 2]
	addu	$t8,$a0,$t7
 # ["fields": "back"]
 # ["exec_times": 2]
	lw	$a3,0($t8)
 # ["exec_times": 2]
	# .loc	2, 111
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 2]
	addu	$a0,$a1,$t9
 # ["fields": "back"]
 # ["exec_times": 2]
	sw	$a3,0($a0)
 # ["exec_times": 2]
removeList.L5:
	# .loc	2, 114
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 8]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	removeList 
	.text	
	.align	2
	.align	2
	.globl	sim
	# .loc	2, 480
	.ent	sim 
sim:
	spawn	sim.headerspawn
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
	.mask	0x801f0000, -368
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 368, $31
 # ["header/trailer":]
	cqip	sim.headerspawn
 # ["header/trailer":]
sim.headerspawn:
 # ["header/trailer":]
	pslice_entry	sim.headerspawn
 # ["header/trailer":]
	la	$sp,-368($sp)
 # ["header/trailer":]
	pslice_exit	sim.headerspawn
	spawn	sim.spawntail0
	spawn	sim.spawntail1
	move	$s0,$a0
	# .loc	2, 491
 # ["exec_times": 0]
	la	$a2,0($zero)
 # ["exec_times": 336]
	seq	$a3,$s0,$a2
 # ["exec_times": 336]
	beqz	$a3,sim.L1
 # ["exec_times": 336]
 # ["instr_profile": 336 80]
	nop	
	# .loc	2, 491
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 256]
	cqip	sim.spawntail0
sim.spawntail0:
	pslice_entry	sim.spawntail0
	pslice_exit	sim.spawntail0
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
 # ["exec_times": 256]
 # ["instr_ret": t:g53]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
sim.L1:
	# .loc	2, 493
 # ["exec_times": 0]
	li	$v0,92
 # ["exec_times": 80]
	addu	$v1,$s0,$v0
 # ["fields": "label"]
 # ["exec_times": 80]
	lw	$t0,0($v1)
 # ["exec_times": 80]
	# .loc	2, 500
 # ["exec_times": 0]
	li	$s2,3
 # ["exec_times": 80]
sim.L12:
	# .loc	2, 501
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 240]
	mult	$s2,$t1
	mflo	$t2
 # ["exec_times": 240]
	addu	$t3,$s0,$t2
 # ["exec_times": 240]
	lw	$a0,0($t3)
 # ["exec_times": 240]
	# .loc	2, 502
 # ["exec_times": 0]
	la	$t4,320($sp)
 # ["exec_times": 240]
	li	$t5,4
 # ["exec_times": 240]
	mult	$s2,$t5
	mflo	$t6
 # ["exec_times": 240]
	addu	$s1,$t4,$t6
 # ["exec_times": 240]
	la	$t0,sim
 # ["exec_times": 240]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 240]
 # ["proc_name": "sim"]
 # ["call_overhead": 35]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s1)
 # ["exec_times": 240]
	li	$t7,-1
 # ["exec_times": 240]
	addu	$s2,$s2,$t7
 # ["exec_times": 240]
	move	$t8,$zero
 # ["exec_times": 240]
	sle	$t9,$s2,$t8
 # ["exec_times": 240]
	beqz	$t9,sim.L12
 # ["exec_times": 240]
 # ["instr_profile": 240 160]
	nop	
	# .loc	2, 505
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 80]
	addu	$a1,$s0,$a0
 # ["fields": "forward"]
 # ["exec_times": 80]
	lw	$a0,0($a1)
 # ["exec_times": 80]
	# .loc	2, 506
 # ["exec_times": 0]
	la	$s1,320($sp)
 # ["exec_times": 80]
	la	$t0,sim
 # ["exec_times": 80]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 80]
 # ["proc_name": "sim"]
 # ["call_overhead": 178]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s1)
 # ["exec_times": 80]
	# .loc	2, 507
 # ["exec_times": 0]
	li	$a1,32
 # ["exec_times": 80]
	addu	$s4,$s0,$a1
 # ["fields": "hosp"]
 # ["exec_times": 80]
	# .loc	2, 514
 # ["exec_times": 0]
	li	$s2,3
 # ["exec_times": 80]
sim.L13:
	# .loc	2, 515
 # ["exec_times": 0]
	la	$a2,320($sp)
 # ["exec_times": 320]
	li	$a3,4
 # ["exec_times": 320]
	mult	$s2,$a3
	mflo	$v0
 # ["exec_times": 320]
	addu	$v1,$a2,$v0
 # ["exec_times": 320]
	lw	$s1,0($v1)
 # ["exec_times": 320]
	# .loc	2, 516
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 320]
	sne	$t1,$s1,$t0
 # ["exec_times": 320]
	beqz	$t1,sim.L6
 # ["exec_times": 320]
 # ["instr_profile": 320 320]
	nop	
	# .loc	2, 517
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 0]
	addu	$t3,$s1,$t2
 # ["fields": "forward"]
 # ["exec_times": 0]
	lw	$s1,0($t3)
 # ["exec_times": 0]
	# .loc	2, 518
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 0]
	sne	$t5,$s1,$t4
 # ["exec_times": 0]
	beqz	$t5,sim.L6
 # ["exec_times": 0]
	nop	
sim.L10:
	# .loc	2, 519
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 0]
	addu	$t7,$s1,$t6
 # ["fields": "patient"]
 # ["exec_times": 0]
	lw	$s3,0($t7)
 # ["exec_times": 0]
	# .loc	2, 520
 # ["exec_times": 0]
	la	$t0,put_in_hosp
 # ["exec_times": 0]
	move	$a0,$s4
	move	$a1,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "put_in_hosp"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 521
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	addu	$t9,$s1,$t8
 # ["fields": "forward"]
 # ["exec_times": 0]
	lw	$s1,0($t9)
 # ["exec_times": 0]
	# .loc	2, 522
 # ["exec_times": 0]
	la	$t0,removeList
 # ["exec_times": 0]
	la	$a0,320($sp)
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 0]
	mult	$s2,$a1
	mflo	$a2
 # ["exec_times": 0]
	addu	$a3,$a0,$a2
 # ["exec_times": 0]
	lw	$a0,0($a3)
 # ["exec_times": 0]
	move	$a1,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "removeList"]
 # ["regs_used": 5 6]
	nop	
	la	$v0,0($zero)
 # ["exec_times": 0]
	sne	$v1,$s1,$v0
 # ["exec_times": 0]
	bnez	$v1,sim.L10
 # ["exec_times": 0]
	nop	
sim.L6:
	li	$t0,-1
 # ["exec_times": 320]
	addu	$s2,$s2,$t0
 # ["exec_times": 320]
	move	$t1,$zero
 # ["exec_times": 320]
	slt	$t2,$s2,$t1
 # ["exec_times": 320]
	beqz	$t2,sim.L13
 # ["exec_times": 320]
 # ["instr_profile": 320 240]
	nop	
	# .loc	2, 527
 # ["exec_times": 0]
	li	$t3,68
 # ["exec_times": 80]
	addu	$t4,$s0,$t3
 # ["fields": "hosp" "inside" "forward"]
 # ["exec_times": 80]
	lw	$s1,0($t4)
 # ["exec_times": 80]
	# .loc	2, 529
 # ["exec_times": 0]
	la	$t0,check_patients_inside
 # ["exec_times": 80]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 80]
 # ["proc_name": "check_patients_inside"]
 # ["call_overhead": 38]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 530
 # ["exec_times": 0]
	li	$t5,56
 # ["exec_times": 80]
	addu	$t6,$s0,$t5
 # ["fields": "hosp" "assess" "forward"]
 # ["exec_times": 80]
	lw	$s1,0($t6)
 # ["exec_times": 80]
	# .loc	2, 531
 # ["exec_times": 0]
	la	$t0,check_patients_assess
 # ["exec_times": 80]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 80]
 # ["proc_name": "check_patients_assess"]
 # ["call_overhead": 5]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s2,$v0
	# .loc	2, 532
 # ["exec_times": 0]
	li	$t7,44
 # ["exec_times": 80]
	addu	$t8,$s0,$t7
 # ["fields": "hosp" "waiting" "forward"]
 # ["exec_times": 80]
	lw	$s1,0($t8)
 # ["exec_times": 80]
	# .loc	2, 533
 # ["exec_times": 0]
	la	$t0,check_patients_waiting
 # ["exec_times": 80]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 80]
 # ["proc_name": "check_patients_waiting"]
 # ["call_overhead": 82]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 536
 # ["exec_times": 0]
	la	$t0,generate_patient
 # ["exec_times": 80]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 80]
 # ["proc_name": "generate_patient"]
 # ["call_overhead": 47]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$a1,$v0
	la	$t9,0($zero)
 # ["exec_times": 80]
	sne	$a0,$a1,$t9
 # ["exec_times": 80]
	beqz	$a0,sim.L11
 # ["exec_times": 80]
 # ["instr_profile": 80 54]
	nop	
	# .loc	2, 537
 # ["exec_times": 0]
	li	$a2,92
 # ["exec_times": 26]
	addu	$a2,$s0,$a2
 # ["fields": "label"]
 # ["exec_times": 26]
	lw	$t0,0($a2)
 # ["exec_times": 26]
	# .loc	2, 538
 # ["exec_times": 0]
	li	$a3,32
 # ["exec_times": 26]
	addu	$s4,$s0,$a3
 # ["fields": "hosp"]
 # ["exec_times": 26]
	# .loc	2, 539
 # ["exec_times": 0]
	la	$t0,put_in_hosp
 # ["exec_times": 26]
	move	$a0,$s4
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 26]
 # ["proc_name": "put_in_hosp"]
 # ["call_overhead": 70]
 # ["regs_used": 5 6]
	nop	
sim.L11:
	# .loc	2, 542
 # ["exec_times": 0]
	move	$v0,$s2
	cqip	sim.spawntail1
sim.spawntail1:
	pslice_entry	sim.spawntail1
	pslice_exit	sim.spawntail1
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
 # ["exec_times": 80]
 # ["instr_ret": t:g53]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	sim 
	.text	
	.align	2
	.align	2
	.globl	check_patients_inside
	# .loc	2, 285
	.ent	check_patients_inside 
check_patients_inside:
	spawn	check_patients_inside.headerspawn
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
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 160, $31
 # ["header/trailer":]
	cqip	check_patients_inside.headerspawn
 # ["header/trailer":]
check_patients_inside.headerspawn:
 # ["header/trailer":]
	pslice_entry	check_patients_inside.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
 # ["header/trailer":]
	pslice_exit	check_patients_inside.headerspawn
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 292
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 80]
	sne	$v1,$s0,$v0
 # ["exec_times": 80]
	beqz	$v1,check_patients_inside.L1
 # ["exec_times": 80]
 # ["instr_profile": 80 40]
	nop	
check_patients_inside.L4:
	# .loc	2, 293
 # ["exec_times": 0]
	li	$t0,4
 # ["exec_times": 45]
	addu	$t1,$s0,$t0
 # ["fields": "patient"]
 # ["exec_times": 45]
	lw	$s2,0($t1)
 # ["exec_times": 45]
	# .loc	2, 294
 # ["exec_times": 0]
	li	$t2,8
 # ["exec_times": 45]
	addu	$t3,$s2,$t2
 # ["fields": "time_left"]
 # ["exec_times": 45]
	lw	$t4,0($t3)
 # ["exec_times": 45]
	# .loc	2, 295
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 45]
	addu	$t6,$s2,$t5
 # ["fields": "time_left"]
 # ["exec_times": 45]
	li	$t7,1
 # ["exec_times": 45]
	subu	$t8,$t4,$t7
 # ["exec_times": 45]
	sw	$t8,0($t6)
 # ["exec_times": 45]
	# .loc	2, 296
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 45]
	addu	$a0,$s2,$t9
 # ["fields": "time_left"]
 # ["exec_times": 45]
	lw	$a1,0($a0)
 # ["exec_times": 45]
	move	$a2,$zero
 # ["exec_times": 45]
	seq	$a3,$a1,$a2
 # ["exec_times": 45]
	beqz	$a3,check_patients_inside.L5
 # ["exec_times": 45]
 # ["instr_profile": 45 44]
	nop	
	# .loc	2, 297
 # ["exec_times": 0]
	li	$v0,36
 # ["exec_times": 1]
	addu	$v1,$s1,$v0
 # ["fields": "hosp" "free_personnel"]
 # ["exec_times": 1]
	lw	$t4,0($v1)
 # ["exec_times": 1]
	# .loc	2, 298
 # ["exec_times": 0]
	li	$t0,36
 # ["exec_times": 1]
	addu	$t1,$s1,$t0
 # ["fields": "hosp" "free_personnel"]
 # ["exec_times": 1]
	li	$t2,1
 # ["exec_times": 1]
	addu	$t3,$t4,$t2
 # ["exec_times": 1]
	sw	$t3,0($t1)
 # ["exec_times": 1]
	# .loc	2, 299
 # ["exec_times": 0]
	li	$t4,68
 # ["exec_times": 1]
	addu	$a0,$s1,$t4
 # ["fields": "hosp" "inside"]
 # ["exec_times": 1]
	# .loc	2, 300
 # ["exec_times": 0]
	la	$t0,removeList
 # ["exec_times": 1]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "removeList"]
 # ["call_overhead": 29]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 301
 # ["exec_times": 0]
	li	$t5,20
 # ["exec_times": 1]
	addu	$a0,$s1,$t5
 # ["fields": "returned"]
 # ["exec_times": 1]
	# .loc	2, 302
 # ["exec_times": 0]
	la	$t0,addList
 # ["exec_times": 1]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "addList"]
 # ["call_overhead": 28]
 # ["regs_used": 5 6]
	nop	
check_patients_inside.L5:
	# .loc	2, 303
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 45]
	addu	$t7,$s0,$t6
 # ["fields": "forward"]
 # ["exec_times": 45]
	lw	$s0,0($t7)
 # ["exec_times": 45]
	la	$t8,0($zero)
 # ["exec_times": 45]
	sne	$t9,$s0,$t8
 # ["exec_times": 45]
	bnez	$t9,check_patients_inside.L4
 # ["exec_times": 45]
 # ["instr_profile": 45 5]
	nop	
check_patients_inside.L1:
	# .loc	2, 305
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
 # ["exec_times": 80]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	check_patients_inside 
	.text	
	.align	2
	.align	2
	.globl	check_patients_assess
	# .loc	2, 309
	.ent	check_patients_assess 
check_patients_assess:
	spawn	check_patients_assess.headerspawn
 # ["header/trailer":]
	la	$sp,-320($sp)
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
	.mask	0x800f0000, -320
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 320, $31
 # ["header/trailer":]
	cqip	check_patients_assess.headerspawn
 # ["header/trailer":]
check_patients_assess.headerspawn:
 # ["header/trailer":]
	pslice_entry	check_patients_assess.headerspawn
 # ["header/trailer":]
	la	$sp,-320($sp)
 # ["header/trailer":]
	pslice_exit	check_patients_assess.headerspawn
	spawn	check_patients_assess.spawntail2
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 313
 # ["exec_times": 0]
	la	$s3,0($zero)
 # ["exec_times": 80]
	# .loc	2, 320
 # ["exec_times": 0]
	la	$a1,0($zero)
 # ["exec_times": 80]
	sne	$a2,$s0,$a1
 # ["exec_times": 80]
	beqz	$a2,check_patients_assess.L1
 # ["exec_times": 80]
 # ["instr_profile": 80 62]
	nop	
check_patients_assess.L4:
	# .loc	2, 322
 # ["exec_times": 0]
	li	$a3,4
 # ["exec_times": 19]
	addu	$v0,$s0,$a3
 # ["fields": "patient"]
 # ["exec_times": 19]
	lw	$s2,0($v0)
 # ["exec_times": 19]
	# .loc	2, 323
 # ["exec_times": 0]
	li	$v1,8
 # ["exec_times": 19]
	addu	$t0,$s2,$v1
 # ["fields": "time_left"]
 # ["exec_times": 19]
	lw	$t1,0($t0)
 # ["exec_times": 19]
	# .loc	2, 324
 # ["exec_times": 0]
	li	$t2,8
 # ["exec_times": 19]
	addu	$t3,$s2,$t2
 # ["fields": "time_left"]
 # ["exec_times": 19]
	li	$t4,1
 # ["exec_times": 19]
	subu	$t5,$t1,$t4
 # ["exec_times": 19]
	sw	$t5,0($t3)
 # ["exec_times": 19]
	# .loc	2, 325
 # ["exec_times": 0]
	li	$t6,92
 # ["exec_times": 19]
	addu	$t7,$s1,$t6
 # ["fields": "label"]
 # ["exec_times": 19]
	lw	$t8,0($t7)
 # ["exec_times": 19]
	# .loc	2, 326
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 19]
	addu	$a0,$s2,$t9
 # ["fields": "time_left"]
 # ["exec_times": 19]
	lw	$a1,0($a0)
 # ["exec_times": 19]
	move	$a2,$zero
 # ["exec_times": 19]
	seq	$a3,$a1,$a2
 # ["exec_times": 19]
	beqz	$a3,check_patients_assess.L5
 # ["exec_times": 19]
 # ["instr_profile": 19 13]
	nop	
	# .loc	2, 327
 # ["exec_times": 0]
	li	$v0,96
 # ["exec_times": 6]
	addu	$v1,$s1,$v0
 # ["fields": "seed"]
 # ["exec_times": 6]
	lw	$a0,0($v1)
 # ["exec_times": 6]
	# .loc	2, 329
 # ["exec_times": 0]
	la	$t0,my_rand
 # ["exec_times": 6]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 6]
 # ["proc_name": "my_rand"]
 # ["call_overhead": 25]
 # ["regs_used": 5]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 330
 # ["exec_times": 0]
	li	$t0,96
 # ["exec_times": 6]
	addu	$t1,$s1,$t0
 # ["fields": "seed"]
 # ["exec_times": 6]
	li.d	$f4,2.147483647000000000e+09
 # ["exec_times": 6]
	mul.d	$f6,$f0,$f4
 # ["exec_times": 6]
	cvt.w.d	$f8,$f6
	mfc1	$t2,$f8
 # ["exec_times": 6]
	sw	$t2,0($t1)
 # ["exec_times": 6]
	# .loc	2, 331
 # ["exec_times": 0]
	li	$t3,92
 # ["exec_times": 6]
	addu	$t4,$s1,$t3
 # ["fields": "label"]
 # ["exec_times": 6]
	lw	$t8,0($t4)
 # ["exec_times": 6]
	# .loc	2, 332
 # ["exec_times": 0]
	li.d	$f10,1.000000000000000056e-01
 # ["exec_times": 6]
	li	$a0,1
	c.lt.d	$f10,$f0
 # ["exec_times": 6]
	bc1t	check_patients_assess.L8
	nop	
	move	$a0,$zero
check_patients_assess.L8:
	beqz	$a0,check_patients_assess.L6
 # ["exec_times": 6]
 # ["instr_profile": 6 1]
	nop	
check_patients_assess.L9:
	j	check_patients_assess.__done1
 # ["exec_times": 5]
 # ["instr_profile": 5 5]
	nop	
check_patients_assess.L6:
	move	$t5,$zero
 # ["exec_times": 1]
	seq	$a0,$t8,$t5
 # ["exec_times": 1]
check_patients_assess.__done1:
	beqz	$a0,check_patients_assess.L7
 # ["exec_times": 6]
 # ["instr_profile": 6 0]
	nop	
	# .loc	2, 333
 # ["exec_times": 0]
	li	$t6,56
 # ["exec_times": 6]
	addu	$a0,$s1,$t6
 # ["fields": "hosp" "assess"]
 # ["exec_times": 6]
	# .loc	2, 334
 # ["exec_times": 0]
	la	$t0,removeList
 # ["exec_times": 6]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 6]
 # ["proc_name": "removeList"]
 # ["call_overhead": 30]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 335
 # ["exec_times": 0]
	li	$t7,68
 # ["exec_times": 6]
	addu	$a0,$s1,$t7
 # ["fields": "hosp" "inside"]
 # ["exec_times": 6]
	# .loc	2, 336
 # ["exec_times": 0]
	la	$t0,addList
 # ["exec_times": 6]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 6]
 # ["proc_name": "addList"]
 # ["call_overhead": 31]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 337
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 6]
	addu	$t9,$s2,$t8
 # ["fields": "time_left"]
 # ["exec_times": 6]
	li	$a0,10
 # ["exec_times": 6]
	sw	$a0,0($t9)
 # ["exec_times": 6]
	# .loc	2, 339
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 6]
	addu	$a2,$s2,$a1
 # ["fields": "time"]
 # ["exec_times": 6]
	lw	$t1,0($a2)
 # ["exec_times": 6]
	# .loc	2, 340
 # ["exec_times": 0]
	li	$a3,4
 # ["exec_times": 6]
	addu	$v0,$s2,$a3
 # ["fields": "time"]
 # ["exec_times": 6]
	li	$v1,10
 # ["exec_times": 6]
	addu	$t0,$t1,$v1
 # ["exec_times": 6]
	sw	$t0,0($v0)
 # ["exec_times": 6]
	# .loc	2, 341
 # ["exec_times": 0]
	j	check_patients_assess.L5
 # ["exec_times": 6]
 # ["instr_profile": 6 6]
	nop	
check_patients_assess.L7:
	# .loc	2, 343
 # ["exec_times": 0]
	li	$t1,36
 # ["exec_times": 0]
	addu	$t2,$s1,$t1
 # ["fields": "hosp" "free_personnel"]
 # ["exec_times": 0]
	lw	$t1,0($t2)
 # ["exec_times": 0]
	# .loc	2, 345
 # ["exec_times": 0]
	li	$t3,36
 # ["exec_times": 0]
	addu	$t4,$s1,$t3
 # ["fields": "hosp" "free_personnel"]
 # ["exec_times": 0]
	li	$t5,1
 # ["exec_times": 0]
	addu	$t6,$t1,$t5
 # ["exec_times": 0]
	sw	$t6,0($t4)
 # ["exec_times": 0]
	# .loc	2, 346
 # ["exec_times": 0]
	li	$t7,56
 # ["exec_times": 0]
	addu	$a0,$s1,$t7
 # ["fields": "hosp" "assess"]
 # ["exec_times": 0]
	# .loc	2, 347
 # ["exec_times": 0]
	li	$t8,80
 # ["exec_times": 0]
	addu	$s3,$s1,$t8
 # ["fields": "hosp" "up"]
 # ["exec_times": 0]
	# .loc	2, 349
 # ["exec_times": 0]
	la	$t0,removeList
 # ["exec_times": 0]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "removeList"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 350
 # ["exec_times": 0]
	la	$t0,addList
 # ["exec_times": 0]
	move	$a0,$s3
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "addList"]
 # ["regs_used": 5 6]
	nop	
check_patients_assess.L5:
	# .loc	2, 352
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 19]
	addu	$a0,$s0,$t9
 # ["fields": "forward"]
 # ["exec_times": 19]
	lw	$s0,0($a0)
 # ["exec_times": 19]
	la	$a1,0($zero)
 # ["exec_times": 19]
	sne	$a2,$s0,$a1
 # ["exec_times": 19]
	bnez	$a2,check_patients_assess.L4
 # ["exec_times": 19]
 # ["instr_profile": 19 1]
	nop	
check_patients_assess.L1:
	# .loc	2, 354
 # ["exec_times": 0]
	move	$v0,$s3
	cqip	check_patients_assess.spawntail2
check_patients_assess.spawntail2:
	pslice_entry	check_patients_assess.spawntail2
	pslice_exit	check_patients_assess.spawntail2
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
 # ["exec_times": 80]
 # ["instr_ret": t:g53]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	check_patients_assess 
	.text	
	.align	2
	.align	2
	.globl	check_patients_waiting
	# .loc	2, 359
	.ent	check_patients_waiting 
check_patients_waiting:
	spawn	check_patients_waiting.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
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
	.mask	0x80070000, -200
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 200, $31
 # ["header/trailer":]
	cqip	check_patients_waiting.headerspawn
 # ["header/trailer":]
check_patients_waiting.headerspawn:
 # ["header/trailer":]
	pslice_entry	check_patients_waiting.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	pslice_exit	check_patients_waiting.headerspawn
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 365
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 80]
	sne	$t5,$s0,$t4
 # ["exec_times": 80]
	beqz	$t5,check_patients_waiting.L1
 # ["exec_times": 80]
 # ["instr_profile": 80 39]
	nop	
check_patients_waiting.L4:
	# .loc	2, 366
 # ["exec_times": 0]
	li	$t6,36
 # ["exec_times": 99]
	addu	$t7,$s1,$t6
 # ["fields": "hosp" "free_personnel"]
 # ["exec_times": 99]
	lw	$t8,0($t7)
 # ["exec_times": 99]
	# .loc	2, 367
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 99]
	addu	$a0,$s0,$t9
 # ["fields": "patient"]
 # ["exec_times": 99]
	lw	$s2,0($a0)
 # ["exec_times": 99]
	# .loc	2, 368
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 99]
	slt	$a2,$a1,$t8
 # ["exec_times": 99]
	beqz	$a2,check_patients_waiting.L5
 # ["exec_times": 99]
 # ["instr_profile": 99 98]
	nop	
	# .loc	2, 369
 # ["exec_times": 0]
	li	$a3,36
 # ["exec_times": 1]
	addu	$v0,$s1,$a3
 # ["fields": "hosp" "free_personnel"]
 # ["exec_times": 1]
	lw	$v1,0($v0)
 # ["exec_times": 1]
	# .loc	2, 370
 # ["exec_times": 0]
	li	$t0,36
 # ["exec_times": 1]
	addu	$t1,$s1,$t0
 # ["fields": "hosp" "free_personnel"]
 # ["exec_times": 1]
	li	$t2,1
 # ["exec_times": 1]
	subu	$t3,$v1,$t2
 # ["exec_times": 1]
	sw	$t3,0($t1)
 # ["exec_times": 1]
	# .loc	2, 371
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 1]
	addu	$t5,$s2,$t4
 # ["fields": "time_left"]
 # ["exec_times": 1]
	li	$t6,3
 # ["exec_times": 1]
	sw	$t6,0($t5)
 # ["exec_times": 1]
	# .loc	2, 373
 # ["exec_times": 0]
	li	$t7,4
 # ["exec_times": 1]
	addu	$t8,$s2,$t7
 # ["fields": "time"]
 # ["exec_times": 1]
	lw	$v1,0($t8)
 # ["exec_times": 1]
	# .loc	2, 374
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 1]
	addu	$a0,$s2,$t9
 # ["fields": "time"]
 # ["exec_times": 1]
	li	$a1,3
 # ["exec_times": 1]
	addu	$a2,$v1,$a1
 # ["exec_times": 1]
	sw	$a2,0($a0)
 # ["exec_times": 1]
	# .loc	2, 376
 # ["exec_times": 0]
	li	$a3,44
 # ["exec_times": 1]
	addu	$a0,$s1,$a3
 # ["fields": "hosp" "waiting"]
 # ["exec_times": 1]
	# .loc	2, 377
 # ["exec_times": 0]
	la	$t0,removeList
 # ["exec_times": 1]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "removeList"]
 # ["call_overhead": 38]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 378
 # ["exec_times": 0]
	li	$v0,56
 # ["exec_times": 1]
	addu	$a0,$s1,$v0
 # ["fields": "hosp" "assess"]
 # ["exec_times": 1]
	# .loc	2, 379
 # ["exec_times": 0]
	la	$t0,addList
 # ["exec_times": 1]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "addList"]
 # ["call_overhead": 28]
 # ["regs_used": 5 6]
	nop	
check_patients_waiting.L7:
	j	check_patients_waiting.__done6
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
check_patients_waiting.L5:
	# .loc	2, 381
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 98]
	addu	$t0,$s2,$v1
 # ["fields": "time"]
 # ["exec_times": 98]
	lw	$v1,0($t0)
 # ["exec_times": 98]
	# .loc	2, 382
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 98]
	addu	$t2,$s2,$t1
 # ["fields": "time"]
 # ["exec_times": 98]
	li	$t3,1
 # ["exec_times": 98]
	addu	$t4,$v1,$t3
 # ["exec_times": 98]
	sw	$t4,0($t2)
 # ["exec_times": 98]
check_patients_waiting.__done6:
	# .loc	2, 383
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 99]
	addu	$t6,$s0,$t5
 # ["fields": "forward"]
 # ["exec_times": 99]
	lw	$s0,0($t6)
 # ["exec_times": 99]
	la	$t7,0($zero)
 # ["exec_times": 99]
	sne	$t8,$s0,$t7
 # ["exec_times": 99]
	bnez	$t8,check_patients_waiting.L4
 # ["exec_times": 99]
 # ["instr_profile": 99 58]
	nop	
check_patients_waiting.L1:
	# .loc	2, 384
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
 # ["exec_times": 80]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	check_patients_waiting 
	.text	
	.align	2
	.align	2
	.globl	get_results
	# .loc	2, 228
	.ent	get_results 
get_results:
	spawn	get_results.headerspawn
 # ["header/trailer":]
	la	$sp,-704($sp)
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
	.mask	0x800f0000, -704
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 704, $31
 # ["header/trailer":]
	cqip	get_results.headerspawn
 # ["header/trailer":]
get_results.headerspawn:
 # ["header/trailer":]
	pslice_entry	get_results.headerspawn
 # ["header/trailer":]
	la	$sp,-704($sp)
 # ["header/trailer":]
	pslice_exit	get_results.headerspawn
	spawn	get_results.spawntail3
	spawn	get_results.spawntail4
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 239
 # ["exec_times": 0]
	la	$a0,576($sp)
 # ["exec_times": 21]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 21]
	s.d	$f12,0($a0)
 # ["exec_times": 21]
	# .loc	2, 240
 # ["exec_times": 0]
	la	$a1,560($sp)
 # ["fields": "total_patients"]
 # ["exec_times": 21]
	li.d	$f14,0.000000000000000000e+00
 # ["exec_times": 21]
	s.d	$f14,0($a1)
 # ["exec_times": 21]
	# .loc	2, 241
 # ["exec_times": 0]
	la	$a2,568($sp)
 # ["exec_times": 21]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 21]
	s.d	$f0,0($a2)
 # ["exec_times": 21]
	# .loc	2, 243
 # ["exec_times": 0]
	la	$a3,0($zero)
 # ["exec_times": 21]
	seq	$v0,$s0,$a3
 # ["exec_times": 21]
	beqz	$v0,get_results.L1
 # ["exec_times": 21]
 # ["instr_profile": 21 5]
	nop	
	# .loc	2, 243
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$v1,560($sp)
 # ["struct alignment": 64]
	la	$t0,0($s1)
	lw	$t1,0($v1)
	lw	$t2,4($v1)
	lw	$t3,8($v1)
	sw	$t1,0($t0)
	sw	$t2,4($t0)
	sw	$t3,8($t0)
	lw	$t4,12($v1)
	lw	$t5,16($v1)
	lw	$t6,20($v1)
	sw	$t4,12($t0)
	sw	$t5,16($t0)
	sw	$t6,20($t0)
	# END structure move
	cqip	get_results.spawntail3
get_results.spawntail3:
	pslice_entry	get_results.spawntail3
	pslice_exit	get_results.spawntail3
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
 # ["exec_times": 16]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
get_results.L1:
	# .loc	2, 251
 # ["exec_times": 0]
	li	$s2,3
 # ["exec_times": 5]
get_results.L10:
	# .loc	2, 252
 # ["exec_times": 0]
	li	$t7,4
 # ["exec_times": 15]
	mult	$s2,$t7
	mflo	$t8
 # ["exec_times": 15]
	addu	$t9,$s0,$t8
 # ["exec_times": 15]
	lw	$a1,0($t9)
 # ["exec_times": 15]
	# .loc	2, 253
 # ["exec_times": 0]
	la	$a0,584($sp)
 # ["exec_times": 15]
	li	$a2,24
 # ["exec_times": 15]
	mult	$s2,$a2
	mflo	$a2
 # ["exec_times": 15]
	addu	$s3,$a0,$a2
 # ["exec_times": 15]
	la	$t0,get_results
 # ["exec_times": 15]
	la	$a0,448($sp)
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 15]
 # ["proc_name": "get_results"]
 # ["call_overhead": 30]
 # ["regs_used": 5 6]
	nop	
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$a3,448($sp)
 # ["struct alignment": 64]
	la	$v0,0($s3)
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
	# END structure move
	li	$t5,-1
 # ["exec_times": 15]
	addu	$s2,$s2,$t5
 # ["exec_times": 15]
	move	$t6,$zero
 # ["exec_times": 15]
	sle	$t7,$s2,$t6
 # ["exec_times": 15]
	beqz	$t7,get_results.L10
 # ["exec_times": 15]
 # ["instr_profile": 15 10]
	nop	
	# .loc	2, 257
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 5]
	addu	$t9,$s0,$t8
 # ["fields": "forward"]
 # ["exec_times": 5]
	lw	$a1,0($t9)
 # ["exec_times": 5]
	# .loc	2, 258
 # ["exec_times": 0]
	la	$s2,584($sp)
 # ["exec_times": 5]
	la	$t0,get_results
 # ["exec_times": 5]
	la	$a0,392($sp)
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 5]
 # ["proc_name": "get_results"]
 # ["call_overhead": 141]
 # ["regs_used": 5 6]
	nop	
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t9,392($sp)
 # ["struct alignment": 64]
	la	$a0,0($s2)
	lw	$a1,0($t9)
	lw	$a2,4($t9)
	lw	$a3,8($t9)
	sw	$a1,0($a0)
	sw	$a2,4($a0)
	sw	$a3,8($a0)
	lw	$v0,12($t9)
	lw	$v1,16($t9)
	lw	$t0,20($t9)
	sw	$v0,12($a0)
	sw	$v1,16($a0)
	sw	$t0,20($a0)
	# END structure move
	# .loc	2, 265
 # ["exec_times": 0]
	li	$s2,3
 # ["exec_times": 5]
get_results.L11:
	# .loc	2, 266
 # ["exec_times": 0]
	la	$t1,576($sp)
 # ["exec_times": 20]
	la	$t2,576($sp)
 # ["exec_times": 20]
	l.d	$f2,0($t2)
 # ["exec_times": 20]
	la	$t3,600($sp)
 # ["exec_times": 20]
	li	$t4,24
 # ["exec_times": 20]
	mult	$s2,$t4
	mflo	$t5
 # ["exec_times": 20]
	addu	$t6,$t3,$t5
 # ["exec_times": 20]
	l.d	$f4,0($t6)
 # ["exec_times": 20]
	add.d	$f6,$f2,$f4
 # ["exec_times": 20]
	s.d	$f6,0($t1)
 # ["exec_times": 20]
	# .loc	2, 267
 # ["exec_times": 0]
	la	$t7,560($sp)
 # ["fields": "total_patients"]
 # ["exec_times": 20]
	la	$t8,560($sp)
 # ["fields": "total_patients"]
 # ["exec_times": 20]
	l.d	$f8,0($t8)
 # ["exec_times": 20]
	la	$t9,584($sp)
 # ["exec_times": 20]
	li	$a0,24
 # ["exec_times": 20]
	mult	$s2,$a0
	mflo	$a1
 # ["exec_times": 20]
	addu	$a2,$t9,$a1
 # ["exec_times": 20]
	l.d	$f10,0($a2)
 # ["exec_times": 20]
	add.d	$f16,$f8,$f10
 # ["exec_times": 20]
	s.d	$f16,0($t7)
 # ["exec_times": 20]
	# .loc	2, 268
 # ["exec_times": 0]
	la	$a3,568($sp)
 # ["exec_times": 20]
	la	$v0,568($sp)
 # ["exec_times": 20]
	l.d	$f18,0($v0)
 # ["exec_times": 20]
	la	$v1,592($sp)
 # ["exec_times": 20]
	li	$t0,24
 # ["exec_times": 20]
	mult	$s2,$t0
	mflo	$t1
 # ["exec_times": 20]
	addu	$t2,$v1,$t1
 # ["exec_times": 20]
	l.d	$f12,0($t2)
 # ["exec_times": 20]
	add.d	$f14,$f18,$f12
 # ["exec_times": 20]
	s.d	$f14,0($a3)
 # ["exec_times": 20]
	li	$t3,-1
 # ["exec_times": 20]
	addu	$s2,$s2,$t3
 # ["exec_times": 20]
	move	$t4,$zero
 # ["exec_times": 20]
	slt	$t5,$s2,$t4
 # ["exec_times": 20]
	beqz	$t5,get_results.L11
 # ["exec_times": 20]
 # ["instr_profile": 20 15]
	nop	
	# .loc	2, 271
 # ["exec_times": 0]
	li	$t6,20
 # ["exec_times": 5]
	addu	$t7,$s0,$t6
 # ["fields": "returned" "forward"]
 # ["exec_times": 5]
	lw	$t8,0($t7)
 # ["exec_times": 5]
	# .loc	2, 273
 # ["exec_times": 0]
	la	$t9,0($zero)
 # ["exec_times": 5]
	sne	$a0,$t8,$t9
 # ["exec_times": 5]
	beqz	$a0,get_results.L6
 # ["exec_times": 5]
 # ["instr_profile": 5 4]
	nop	
get_results.L9:
	# .loc	2, 274
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 1]
	addu	$a2,$t8,$a1
 # ["fields": "patient"]
 # ["exec_times": 1]
	lw	$a3,0($a2)
 # ["exec_times": 1]
	# .loc	2, 275
 # ["exec_times": 0]
	la	$v0,576($sp)
 # ["exec_times": 1]
	la	$v1,576($sp)
 # ["exec_times": 1]
	l.d	$f0,0($v1)
 # ["exec_times": 1]
	move	$t0,$zero
 # ["exec_times": 1]
	addu	$t1,$a3,$t0
 # ["fields": "hosps_visited"]
 # ["exec_times": 1]
	lw	$t2,0($t1)
 # ["exec_times": 1]
	mtc1	$t2,$f2
	cvt.d.w	$f4,$f2
 # ["exec_times": 1]
	add.d	$f6,$f0,$f4
 # ["exec_times": 1]
	s.d	$f6,0($v0)
 # ["exec_times": 1]
	# .loc	2, 276
 # ["exec_times": 0]
	la	$t3,568($sp)
 # ["exec_times": 1]
	la	$t4,568($sp)
 # ["exec_times": 1]
	l.d	$f8,0($t4)
 # ["exec_times": 1]
	li	$t5,4
 # ["exec_times": 1]
	addu	$t6,$a3,$t5
 # ["fields": "time"]
 # ["exec_times": 1]
	lw	$t7,0($t6)
 # ["exec_times": 1]
	mtc1	$t7,$f10
	cvt.d.w	$f16,$f10
 # ["exec_times": 1]
	add.d	$f18,$f8,$f16
 # ["exec_times": 1]
	s.d	$f18,0($t3)
 # ["exec_times": 1]
	# .loc	2, 277
 # ["exec_times": 0]
	la	$t9,560($sp)
 # ["fields": "total_patients"]
 # ["exec_times": 1]
	la	$a0,560($sp)
 # ["fields": "total_patients"]
 # ["exec_times": 1]
	l.d	$f12,0($a0)
 # ["exec_times": 1]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 1]
	add.d	$f0,$f12,$f14
 # ["exec_times": 1]
	s.d	$f0,0($t9)
 # ["exec_times": 1]
	# .loc	2, 278
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 1]
	addu	$a1,$t8,$a0
 # ["fields": "forward"]
 # ["exec_times": 1]
	lw	$t8,0($a1)
 # ["exec_times": 1]
	la	$a2,0($zero)
 # ["exec_times": 1]
	sne	$a3,$t8,$a2
 # ["exec_times": 1]
	bnez	$a3,get_results.L9
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
get_results.L6:
	# .loc	2, 280
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$v0,560($sp)
 # ["struct alignment": 64]
	la	$v1,0($s1)
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
	# END structure move
	cqip	get_results.spawntail4
get_results.spawntail4:
	pslice_entry	get_results.spawntail4
	pslice_exit	get_results.spawntail4
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
 # ["exec_times": 5]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	get_results 
	.text	
	.align	2
	.align	2
	.globl	alloc_tree
	# .loc	2, 174
	.ent	alloc_tree 
alloc_tree:
	spawn	alloc_tree.headerspawn
 # ["header/trailer":]
	la	$sp,-520($sp)
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
	.mask	0x80ff0000, -520
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 520, $31
 # ["header/trailer":]
	cqip	alloc_tree.headerspawn
 # ["header/trailer":]
alloc_tree.headerspawn:
 # ["header/trailer":]
	pslice_entry	alloc_tree.headerspawn
 # ["header/trailer":]
	la	$sp,-520($sp)
 # ["header/trailer":]
	pslice_exit	alloc_tree.headerspawn
	spawn	alloc_tree.spawntail5
	spawn	alloc_tree.spawntail6
	lw	$s5,500($sp)
	move	$s3,$a0
	move	$s2,$a1
	move	$s1,$a2
	move	$s0,$a3
	# .loc	2, 175
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 21]
	seq	$a1,$s3,$a0
 # ["exec_times": 21]
	beqz	$a1,alloc_tree.L1
 # ["exec_times": 21]
 # ["instr_profile": 21 5]
	nop	
	# .loc	2, 176
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 16]
	cqip	alloc_tree.spawntail5
alloc_tree.spawntail5:
	pslice_entry	alloc_tree.spawntail5
	pslice_exit	alloc_tree.spawntail5
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
 # ["exec_times": 16]
 # ["instr_ret": t:g51]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
alloc_tree.L1:
	# .loc	2, 183
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 5]
	li	$a0,100
 # ["exec_times": 5]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 5]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s4,$v0
 # ["exec_times": 5]
	# .loc	2, 190
 # ["exec_times": 0]
	li	$s7,3
 # ["exec_times": 5]
alloc_tree.L6:
	# .loc	2, 191
 # ["exec_times": 0]
	la	$a2,472($sp)
 # ["exec_times": 15]
	li	$a3,4
 # ["exec_times": 15]
	mult	$s7,$a3
	mflo	$v0
 # ["exec_times": 15]
	addu	$s6,$a2,$v0
 # ["exec_times": 15]
	la	$t0,alloc_tree
 # ["exec_times": 15]
	li	$v1,1
 # ["exec_times": 15]
	subu	$a0,$s3,$v1
 # ["exec_times": 15]
	mult	$s1,$s7
	mflo	$t1
 # ["exec_times": 15]
	li	$t2,4
 # ["exec_times": 15]
	div	$t2,$t1,$t2
 # ["exec_times": 15]
	addu	$a1,$s2,$t2
 # ["exec_times": 15]
	li	$t3,4
 # ["exec_times": 15]
	div	$a2,$s1,$t3
 # ["exec_times": 15]
	li	$t4,4
 # ["exec_times": 15]
	mult	$s0,$t4
	mflo	$t5
 # ["exec_times": 15]
	addu	$t6,$t5,$s7
 # ["exec_times": 15]
	li	$t7,1
 # ["exec_times": 15]
	addu	$a3,$t6,$t7
 # ["exec_times": 15]
	move	$fp,$sp
	fst	$sp
	sw	$s4,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 15]
 # ["proc_name": "alloc_tree"]
 # ["call_overhead": 20]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s6)
 # ["exec_times": 15]
	li	$t8,-1
 # ["exec_times": 15]
	addu	$s7,$s7,$t8
 # ["exec_times": 15]
	move	$t9,$zero
 # ["exec_times": 15]
	sle	$a0,$s7,$t9
 # ["exec_times": 15]
	beqz	$a0,alloc_tree.L6
 # ["exec_times": 15]
 # ["instr_profile": 15 10]
	nop	
	# .loc	2, 196
 # ["exec_times": 0]
	la	$s6,472($sp)
 # ["exec_times": 5]
	la	$t0,alloc_tree
 # ["exec_times": 5]
	li	$a1,1
 # ["exec_times": 5]
	subu	$a0,$s3,$a1
 # ["exec_times": 5]
	li	$a2,4
 # ["exec_times": 5]
	div	$a2,$s1,$a2
 # ["exec_times": 5]
	li	$a3,4
 # ["exec_times": 5]
	mult	$s0,$a3
	mflo	$v0
 # ["exec_times": 5]
	li	$v1,1
 # ["exec_times": 5]
	addu	$a3,$v0,$v1
 # ["exec_times": 5]
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	sw	$s4,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 5]
 # ["proc_name": "alloc_tree"]
 # ["call_overhead": 125]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s6)
 # ["exec_times": 5]
	# .loc	2, 198
 # ["exec_times": 0]
	li	$t0,16
 # ["exec_times": 5]
	addu	$t1,$s4,$t0
 # ["fields": "back"]
 # ["exec_times": 5]
	sw	$s5,0($t1)
 # ["exec_times": 5]
	# .loc	2, 200
 # ["exec_times": 0]
	li	$t2,92
 # ["exec_times": 5]
	addu	$t3,$s4,$t2
 # ["fields": "label"]
 # ["exec_times": 5]
	sw	$s0,0($t3)
 # ["exec_times": 5]
	# .loc	2, 201
 # ["exec_times": 0]
	li	$t4,96
 # ["exec_times": 5]
	addu	$t5,$s4,$t4
 # ["fields": "seed"]
 # ["exec_times": 5]
	li	$t6,127773
 # ["exec_times": 5]
	lw	$t7,seed
	addu	$t8,$t6,$t7
 # ["exec_times": 5]
	mult	$s0,$t8
	mflo	$t9
 # ["exec_times": 5]
	sw	$t9,0($t5)
 # ["exec_times": 5]
	# .loc	2, 202
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 5]
	addu	$s0,$s4,$a0
 # ["fields": "hosp" "personnel"]
 # ["exec_times": 5]
	la	$t0,pow
 # ["exec_times": 5]
	li.d	$f12,2.000000000000000000e+00
 # ["exec_times": 5]
	li	$a1,1
 # ["exec_times": 5]
	subu	$a2,$s3,$a1
 # ["exec_times": 5]
	mtc1	$a2,$f0
	cvt.d.w	$f14,$f0
 # ["exec_times": 5]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 5]
 # ["proc_name": "pow"]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	cvt.w.d	$f2,$f0
	mfc1	$a3,$f2
 # ["exec_times": 5]
	sw	$a3,0($s0)
 # ["exec_times": 5]
	# .loc	2, 203
 # ["exec_times": 0]
	li	$v0,36
 # ["exec_times": 5]
	addu	$v1,$s4,$v0
 # ["fields": "hosp" "free_personnel"]
 # ["exec_times": 5]
	li	$t0,32
 # ["exec_times": 5]
	addu	$t1,$s4,$t0
 # ["fields": "hosp" "personnel"]
 # ["exec_times": 5]
	lw	$t2,0($t1)
 # ["exec_times": 5]
	sw	$t2,0($v1)
 # ["exec_times": 5]
	# .loc	2, 204
 # ["exec_times": 0]
	li	$t3,40
 # ["exec_times": 5]
	addu	$t4,$s4,$t3
 # ["fields": "hosp" "num_waiting_patients"]
 # ["exec_times": 5]
	move	$t5,$zero
 # ["exec_times": 5]
	sw	$t5,0($t4)
 # ["exec_times": 5]
	# .loc	2, 205
 # ["exec_times": 0]
	li	$t6,56
 # ["exec_times": 5]
	addu	$t7,$s4,$t6
 # ["fields": "hosp" "assess" "forward"]
 # ["exec_times": 5]
	la	$t8,0($zero)
 # ["exec_times": 5]
	sw	$t8,0($t7)
 # ["exec_times": 5]
	# .loc	2, 206
 # ["exec_times": 0]
	li	$t9,64
 # ["exec_times": 5]
	addu	$a0,$s4,$t9
 # ["fields": "hosp" "assess" "back"]
 # ["exec_times": 5]
	la	$a1,0($zero)
 # ["exec_times": 5]
	sw	$a1,0($a0)
 # ["exec_times": 5]
	# .loc	2, 207
 # ["exec_times": 0]
	li	$a2,44
 # ["exec_times": 5]
	addu	$a3,$s4,$a2
 # ["fields": "hosp" "waiting" "forward"]
 # ["exec_times": 5]
	la	$v0,0($zero)
 # ["exec_times": 5]
	sw	$v0,0($a3)
 # ["exec_times": 5]
	# .loc	2, 208
 # ["exec_times": 0]
	li	$v1,52
 # ["exec_times": 5]
	addu	$t0,$s4,$v1
 # ["fields": "hosp" "waiting" "back"]
 # ["exec_times": 5]
	la	$t1,0($zero)
 # ["exec_times": 5]
	sw	$t1,0($t0)
 # ["exec_times": 5]
	# .loc	2, 209
 # ["exec_times": 0]
	li	$t2,68
 # ["exec_times": 5]
	addu	$t3,$s4,$t2
 # ["fields": "hosp" "inside" "forward"]
 # ["exec_times": 5]
	la	$t4,0($zero)
 # ["exec_times": 5]
	sw	$t4,0($t3)
 # ["exec_times": 5]
	# .loc	2, 210
 # ["exec_times": 0]
	li	$t5,76
 # ["exec_times": 5]
	addu	$t6,$s4,$t5
 # ["fields": "hosp" "inside" "back"]
 # ["exec_times": 5]
	la	$t7,0($zero)
 # ["exec_times": 5]
	sw	$t7,0($t6)
 # ["exec_times": 5]
	# .loc	2, 211
 # ["exec_times": 0]
	li	$t8,28
 # ["exec_times": 5]
	addu	$t9,$s4,$t8
 # ["fields": "returned" "back"]
 # ["exec_times": 5]
	la	$a0,0($zero)
 # ["exec_times": 5]
	sw	$a0,0($t9)
 # ["exec_times": 5]
	# .loc	2, 212
 # ["exec_times": 0]
	li	$a1,20
 # ["exec_times": 5]
	addu	$a2,$s4,$a1
 # ["fields": "returned" "forward"]
 # ["exec_times": 5]
	la	$a3,0($zero)
 # ["exec_times": 5]
	sw	$a3,0($a2)
 # ["exec_times": 5]
	# .loc	2, 219
 # ["exec_times": 0]
	move	$s7,$zero
 # ["exec_times": 5]
alloc_tree.L7:
	# .loc	2, 220
 # ["exec_times": 0]
	li	$v0,4
 # ["exec_times": 20]
	mult	$s7,$v0
	mflo	$v1
 # ["exec_times": 20]
	addu	$t0,$s4,$v1
 # ["exec_times": 20]
	la	$t1,472($sp)
 # ["exec_times": 20]
	li	$t2,4
 # ["exec_times": 20]
	mult	$s7,$t2
	mflo	$t3
 # ["exec_times": 20]
	addu	$t4,$t1,$t3
 # ["exec_times": 20]
	lw	$t9,0($t4)
 # ["exec_times": 20]
	sw	$t9,0($t0)
 # ["exec_times": 20]
	li	$t5,1
 # ["exec_times": 20]
	addu	$s7,$s7,$t5
 # ["exec_times": 20]
	li	$t6,4
 # ["exec_times": 20]
	sle	$t7,$t6,$s7
 # ["exec_times": 20]
	beqz	$t7,alloc_tree.L7
 # ["exec_times": 20]
 # ["instr_profile": 20 15]
	nop	
	# .loc	2, 222
 # ["exec_times": 0]
	move	$v0,$s4
	cqip	alloc_tree.spawntail6
alloc_tree.spawntail6:
	pslice_entry	alloc_tree.spawntail6
	pslice_exit	alloc_tree.spawntail6
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
 # ["exec_times": 5]
 # ["instr_ret": t:g51]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	alloc_tree 
	.text	
	.align	2
	.align	2
	.globl	entry
	# .loc	2, 437
	.ent	entry 
entry:
	spawn	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-256($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -256
 # ["header/trailer":]
	s.d	$f20,16($sp)
 # ["header/trailer":]
	s.d	$f22,24($sp)
 # ["header/trailer":]
	s.d	$f24,32($sp)
 # ["header/trailer":]
	.fmask	0x01500000, -256
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 256, $31
 # ["header/trailer":]
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-256($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L8
 # ["cqip_pos": <L:entry.L8,0>]
	# .loc	2, 445
 # ["exec_times": 0]
	la	$t0,dealwithargs
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "dealwithargs"]
 # ["call_overhead": 14]
 # ["regs_used": 5 6]
	nop	
	cqip	entry.L8
 # ["cqip_pos": <L:entry.L8,0>]
entry.L8:
	pslice_entry	entry.L8
 # ["pslice_entry_pos": <L:entry.L8,0>]
	pslice_exit	entry.L8
 # ["pslice_exit_pos": <L:entry.L8,0>]
	spawn	entry.L9
 # ["cqip_pos": <L:entry.L9,0>]
	# .loc	2, 448
 # ["exec_times": 0]
	la	$t0,alloc_tree
 # ["exec_times": 1]
	move	$a1,$zero
 # ["exec_times": 1]
	move	$a2,$zero
 # ["exec_times": 1]
	move	$a3,$zero
 # ["exec_times": 1]
	lw	$a0,max_level
	move	$fp,$sp
	fst	$sp
	sw	$s0,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "alloc_tree"]
 # ["call_overhead": 1205]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L9
 # ["cqip_pos": <L:entry.L9,0>]
entry.L9:
	pslice_entry	entry.L9
 # ["pslice_entry_pos": <L:entry.L9,0>]
	pslice_exit	entry.L9
 # ["pslice_exit_pos": <L:entry.L9,0>]
	spawn	entry.L10
 # ["cqip_pos": <L:entry.L10,0>]
	move	$s0,$v0
	# .loc	2, 450
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_2
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 451
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
	# .loc	2, 453
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 1]
	lw	$t1,max_time
	slt	$t2,$t0,$t1
 # ["exec_times": 1]
	beqz	$t2,entry.L4
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	move	$s1,$zero
 # ["exec_times": 1]
entry.L5:
	# .loc	2, 454
 # ["exec_times": 0]
	sw	$s1,time
	# .loc	2, 455
 # ["exec_times": 0]
	li	$t3,50
 # ["exec_times": 16]
	rem	$t4,$s1,$t3
 # ["exec_times": 16]
	move	$t5,$zero
 # ["exec_times": 16]
	seq	$t6,$t4,$t5
 # ["exec_times": 16]
	beqz	$t6,entry.L3
 # ["exec_times": 16]
 # ["instr_profile": 16 15]
	nop	
	# .loc	2, 455
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_4
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
	# .loc	2, 456
 # ["exec_times": 0]
	la	$t0,sim
 # ["exec_times": 16]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 16]
 # ["proc_name": "sim"]
 # ["call_overhead": 1836]
 # ["regs_used": 5]
	nop	
	li	$t7,1
 # ["exec_times": 16]
	addu	$s1,$s1,$t7
 # ["exec_times": 16]
	lw	$t8,max_time
	sle	$t9,$t8,$s1
 # ["exec_times": 16]
	beqz	$t9,entry.L5
 # ["exec_times": 16]
 # ["instr_profile": 16 15]
	nop	
entry.L7:
	j	entry.__done6
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
entry.L4:
	move	$s1,$zero
 # ["exec_times": 0]
entry.__done6:
	cqip	entry.L10
 # ["cqip_pos": <L:entry.L10,0>]
entry.L10:
	pslice_entry	entry.L10
 # ["pslice_entry_pos": <L:entry.L10,0>]
	pslice_exit	entry.L10
 # ["pslice_exit_pos": <L:entry.L10,0>]
	spawn	entry.L11
 # ["cqip_pos": <L:entry.L11,0>]
	# .loc	2, 458
 # ["exec_times": 0]
	la	$t0,get_results
 # ["exec_times": 1]
	la	$a0,224($sp)
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "get_results"]
 # ["call_overhead": 1326]
 # ["regs_used": 5 6]
	nop	
	cqip	entry.L11
 # ["cqip_pos": <L:entry.L11,0>]
entry.L11:
	pslice_entry	entry.L11
 # ["pslice_entry_pos": <L:entry.L11,0>]
	pslice_exit	entry.L11
 # ["pslice_exit_pos": <L:entry.L11,0>]
	spawn	entry.L12
 # ["cqip_pos": <L:entry.L12,0>]
	# .loc	2, 459
 # ["exec_times": 0]
	la	$a0,224($sp)
 # ["fields": "total_patients"]
 # ["exec_times": 1]
	l.d	$f20,0($a0)
 # ["exec_times": 1]
	# .loc	2, 460
 # ["exec_times": 0]
	la	$a1,232($sp)
 # ["exec_times": 1]
	l.d	$f22,0($a1)
 # ["exec_times": 1]
	# .loc	2, 461
 # ["exec_times": 0]
	la	$a2,240($sp)
 # ["exec_times": 1]
	l.d	$f24,0($a2)
 # ["exec_times": 1]
	# .loc	2, 464
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
	# .loc	2, 465
 # ["exec_times": 0]
	la	$t0,myprintf4
 # ["exec_times": 1]
	la	$a0,__tmp_string_6
 # ["exec_times": 1]
	mov.d	$f14,$f20
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf4"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	cqip	entry.L12
 # ["cqip_pos": <L:entry.L12,0>]
entry.L12:
	pslice_entry	entry.L12
 # ["pslice_entry_pos": <L:entry.L12,0>]
	pslice_exit	entry.L12
 # ["pslice_exit_pos": <L:entry.L12,0>]
	# .loc	2, 467
 # ["exec_times": 0]
	la	$t0,myprintf4
 # ["exec_times": 1]
	la	$a0,__tmp_string_7
 # ["exec_times": 1]
	div.d	$f14,$f22,$f20
 # ["exec_times": 1]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf4"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 469
 # ["exec_times": 0]
	la	$t0,myprintf4
 # ["exec_times": 1]
	la	$a0,__tmp_string_8
 # ["exec_times": 1]
	div.d	$f14,$f24,$f20
 # ["exec_times": 1]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf4"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 476
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 1]
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
 # ["exec_times": 1]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	entry 
