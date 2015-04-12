	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc12494_0.i /home/keyming/Prophet/testcase/perimeter/perimeter.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/perimeter/perimeter.snt /home/keyming/Prophet/testcase/perimeter/perimeter.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/perimeter/perimeter.temp1 /home/keyming/Prophet/testcase/perimeter/perimeter.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/perimeter/perimeter.temp2 /home/keyming/Prophet/testcase/perimeter/perimeter.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/perimeter/perimeter.temp3 /home/keyming/Prophet/testcase/perimeter/perimeter.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/perimeter/perimeter.temp4 /home/keyming/Prophet/testcase/perimeter/perimeter.snp
	# history:  transform_print /home/keyming/Prophet/testcase/perimeter/perimeter.snp /home/keyming/Prophet/testcase/perimeter/perimeter.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/perimeter/perimeter.tp /home/keyming/Prophet/testcase/perimeter/perimeter.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/perimeter/perimeter.iocal /home/keyming/Prophet/testcase/perimeter/perimeter.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/perimeter/perimeter.bore /home/keyming/Prophet/testcase/perimeter/perimeter.porky
	# history:  suifvm /home/keyming/Prophet/testcase/perimeter/perimeter.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/perimeter/perimeter.pf /home/keyming/Prophet/testcase/perimeter/perimeter.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/perimeter/perimeter.swig /home/keyming/Prophet/testcase/perimeter/perimeter.mgen
	# history:  raga /home/keyming/Prophet/testcase/perimeter/perimeter.mgen /home/keyming/Prophet/testcase/perimeter/perimeter.raga
	# history:  partition /home/keyming/Prophet/testcase/perimeter/perimeter.sche /home/keyming/Prophet/testcase/perimeter/perimeter.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/perimeter/perimeter.par /home/keyming/Prophet/testcase/perimeter/perimeter.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/perimeter/perimeter.mfin /home/keyming/Prophet/testcase/perimeter/perimeter.nop
	# history:  transform_main /home/keyming/Prophet/testcase/perimeter/perimeter.nop /home/keyming/Prophet/testcase/perimeter/perimeter.entry
	# history:  printmachine /home/keyming/Prophet/testcase/perimeter/perimeter.entry /home/keyming/Prophet/testcase/perimeter/perimeter.s
	.set	noreorder
	.comm	NumNodes, 4
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"Perimeter with %d levels on %d processors\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"# of leaves is %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"perimeter is %d\012\000"
	.file	2 "perimeter.c"
	.text	
	.align	2
	.align	2
	# .loc	2, 42
	.ent	CheckOutside 
CheckOutside:
	spawn	CheckOutside.headerspawn
 # ["header/trailer":]
	la	$sp,-56($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 56, $31
 # ["header/trailer":]
	cqip	CheckOutside.headerspawn
 # ["header/trailer":]
CheckOutside.headerspawn:
 # ["header/trailer":]
	pslice_entry	CheckOutside.headerspawn
 # ["header/trailer":]
	la	$sp,-56($sp)
 # ["header/trailer":]
	pslice_exit	CheckOutside.headerspawn
	# .loc	2, 43
 # ["exec_times": 0]
	mult	$a0,$a0
	mflo	$t0
 # ["exec_times": 1305]
	mult	$a1,$a1
	mflo	$t1
 # ["exec_times": 1305]
	addu	$t2,$t0,$t1
 # ["exec_times": 1305]
	# .loc	2, 45
 # ["exec_times": 0]
	li	$t3,4194304
 # ["exec_times": 1305]
	slt	$t4,$t3,$t2
 # ["exec_times": 1305]
	beqz	$t4,CheckOutside.L1
 # ["exec_times": 1305]
 # ["instr_profile": 1305 906]
	nop	
	# .loc	2, 46
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 399]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 399]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
CheckOutside.L1:
	# .loc	2, 47
 # ["exec_times": 0]
	li	$t5,1048576
 # ["exec_times": 906]
	slt	$t6,$t2,$t5
 # ["exec_times": 906]
	beqz	$t6,CheckOutside.L2
 # ["exec_times": 906]
 # ["instr_profile": 906 680]
	nop	
	# .loc	2, 48
 # ["exec_times": 0]
	li	$v0,-1
 # ["exec_times": 226]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 226]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
CheckOutside.L2:
	# .loc	2, 49
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 680]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 680]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	CheckOutside 
	.text	
	.align	2
	.align	2
	# .loc	2, 53
	.ent	CheckIntersect 
CheckIntersect:
	spawn	CheckIntersect.headerspawn
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
	.mask	0x800f0000, -280
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 280, $31
 # ["header/trailer":]
	cqip	CheckIntersect.headerspawn
 # ["header/trailer":]
CheckIntersect.headerspawn:
 # ["header/trailer":]
	pslice_entry	CheckIntersect.headerspawn
 # ["header/trailer":]
	la	$sp,-280($sp)
 # ["header/trailer":]
	pslice_exit	CheckIntersect.headerspawn
	spawn	CheckIntersect.spawntail0
	spawn	CheckIntersect.spawntail1
	spawn	CheckIntersect.spawntail2
	move	$s2,$a0
	move	$s1,$a1
	move	$s0,$a2
	# .loc	2, 56
 # ["exec_times": 0]
	la	$t0,CheckOutside
 # ["exec_times": 245]
	addu	$a0,$s2,$s0
 # ["exec_times": 245]
	addu	$a1,$s1,$s0
 # ["exec_times": 245]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 245]
 # ["proc_name": "CheckOutside"]
 # ["call_overhead": 8]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$t9,$zero
 # ["exec_times": 245]
	sne	$a0,$v0,$t9
 # ["exec_times": 245]
	move	$a1,$zero
 # ["exec_times": 245]
	seq	$t7,$a0,$a1
 # ["exec_times": 245]
	bnez	$t7,CheckIntersect.L3
 # ["exec_times": 245]
 # ["instr_profile": 245 136]
	nop	
CheckIntersect.L11:
	j	CheckIntersect.__done9
 # ["exec_times": 109]
 # ["instr_profile": 109 109]
	nop	
CheckIntersect.L3:
	la	$t0,CheckOutside
 # ["exec_times": 136]
	addu	$a0,$s2,$s0
 # ["exec_times": 136]
	subu	$a1,$s1,$s0
 # ["exec_times": 136]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 136]
 # ["proc_name": "CheckOutside"]
 # ["call_overhead": 10]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$a2,$zero
 # ["exec_times": 136]
	sne	$a3,$v0,$a2
 # ["exec_times": 136]
	move	$v0,$zero
 # ["exec_times": 136]
	seq	$t7,$a3,$v0
 # ["exec_times": 136]
	bnez	$t7,CheckIntersect.L2
 # ["exec_times": 136]
 # ["instr_profile": 136 98]
	nop	
CheckIntersect.L12:
	j	CheckIntersect.__done8
 # ["exec_times": 38]
 # ["instr_profile": 38 38]
	nop	
CheckIntersect.L2:
	la	$t0,CheckOutside
 # ["exec_times": 98]
	subu	$a0,$s2,$s0
 # ["exec_times": 98]
	subu	$a1,$s1,$s0
 # ["exec_times": 98]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 98]
 # ["proc_name": "CheckOutside"]
 # ["call_overhead": 10]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$v1,$zero
 # ["exec_times": 98]
	sne	$t0,$v0,$v1
 # ["exec_times": 98]
	move	$t1,$zero
 # ["exec_times": 98]
	seq	$t7,$t0,$t1
 # ["exec_times": 98]
	bnez	$t7,CheckIntersect.L1
 # ["exec_times": 98]
 # ["instr_profile": 98 70]
	nop	
CheckIntersect.L13:
	j	CheckIntersect.__done7
 # ["exec_times": 28]
 # ["instr_profile": 28 28]
	nop	
CheckIntersect.L1:
	la	$t0,CheckOutside
 # ["exec_times": 70]
	subu	$a0,$s2,$s0
 # ["exec_times": 70]
	addu	$a1,$s1,$s0
 # ["exec_times": 70]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 70]
 # ["proc_name": "CheckOutside"]
 # ["call_overhead": 9]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$t2,$zero
 # ["exec_times": 70]
	sne	$t3,$v0,$t2
 # ["exec_times": 70]
	move	$t4,$zero
 # ["exec_times": 70]
	seq	$t7,$t3,$t4
 # ["exec_times": 70]
CheckIntersect.__done7:
CheckIntersect.__done8:
CheckIntersect.__done9:
	beqz	$t7,CheckIntersect.L4
 # ["exec_times": 245]
 # ["instr_profile": 245 189]
	nop	
	# .loc	2, 60
 # ["exec_times": 0]
	li	$v0,2
 # ["exec_times": 56]
	cqip	CheckIntersect.spawntail0
CheckIntersect.spawntail0:
	pslice_entry	CheckIntersect.spawntail0
	pslice_exit	CheckIntersect.spawntail0
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
 # ["exec_times": 56]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
CheckIntersect.L4:
	# .loc	2, 61
 # ["exec_times": 0]
	la	$t0,CheckOutside
 # ["exec_times": 189]
	addu	$a0,$s2,$s0
 # ["exec_times": 189]
	addu	$a1,$s1,$s0
 # ["exec_times": 189]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 189]
 # ["proc_name": "CheckOutside"]
 # ["call_overhead": 8]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
	la	$t0,CheckOutside
 # ["exec_times": 189]
	addu	$a0,$s2,$s0
 # ["exec_times": 189]
	subu	$a1,$s1,$s0
 # ["exec_times": 189]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 189]
 # ["proc_name": "CheckOutside"]
 # ["call_overhead": 8]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	addu	$s3,$s3,$v0
 # ["exec_times": 189]
	la	$t0,CheckOutside
 # ["exec_times": 189]
	subu	$a0,$s2,$s0
 # ["exec_times": 189]
	subu	$a1,$s1,$s0
 # ["exec_times": 189]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 189]
 # ["proc_name": "CheckOutside"]
 # ["call_overhead": 8]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	addu	$s3,$s3,$v0
 # ["exec_times": 189]
	la	$t0,CheckOutside
 # ["exec_times": 189]
	subu	$a0,$s2,$s0
 # ["exec_times": 189]
	addu	$a1,$s1,$s0
 # ["exec_times": 189]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 189]
 # ["proc_name": "CheckOutside"]
 # ["call_overhead": 8]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	addu	$t5,$s3,$v0
 # ["exec_times": 189]
	# .loc	2, 65
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 189]
	seq	$t8,$t5,$t6
 # ["exec_times": 189]
	beqz	$t8,CheckIntersect.L5
 # ["exec_times": 189]
 # ["instr_profile": 189 168]
	nop	
CheckIntersect.L14:
	j	CheckIntersect.__done10
 # ["exec_times": 21]
 # ["instr_profile": 21 21]
	nop	
CheckIntersect.L5:
	li	$t7,-4
 # ["exec_times": 168]
	seq	$t8,$t5,$t7
 # ["exec_times": 168]
CheckIntersect.__done10:
	beqz	$t8,CheckIntersect.L6
 # ["exec_times": 189]
 # ["instr_profile": 189 148]
	nop	
	# .loc	2, 66
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 41]
	cqip	CheckIntersect.spawntail1
CheckIntersect.spawntail1:
	pslice_entry	CheckIntersect.spawntail1
	pslice_exit	CheckIntersect.spawntail1
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
 # ["exec_times": 41]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
CheckIntersect.L6:
	# .loc	2, 67
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 148]
	cqip	CheckIntersect.spawntail2
CheckIntersect.spawntail2:
	pslice_entry	CheckIntersect.spawntail2
	pslice_exit	CheckIntersect.spawntail2
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
 # ["exec_times": 148]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	CheckIntersect 
	.text	
	.align	2
	.align	2
	# .loc	2, 184
	.ent	adj 
adj:
	spawn	adj.headerspawn
 # ["header/trailer":]
	la	$sp,-224($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 224, $31
 # ["header/trailer":]
	cqip	adj.headerspawn
 # ["header/trailer":]
adj.headerspawn:
 # ["header/trailer":]
	pslice_entry	adj.headerspawn
 # ["header/trailer":]
	la	$sp,-224($sp)
 # ["header/trailer":]
	pslice_exit	adj.headerspawn
	# .loc	2, 185
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 1056]
	slt	$a3,$a0,$a2
 # ["exec_times": 1056]
	bnez	$a3,adj.L1
 # ["exec_times": 1056]
 # ["instr_profile": 1056 0]
	nop	
	li	$v0,3
 # ["exec_times": 1056]
	slt	$v1,$v0,$a0
 # ["exec_times": 1056]
	bnez	$v1,adj.L1
 # ["exec_times": 1056]
 # ["instr_profile": 1056 0]
	nop	
	move	$t0,$zero
 # ["exec_times": 1056]
	seq	$t1,$a0,$t0
 # ["exec_times": 1056]
	bnez	$t1,adj.L2
 # ["exec_times": 1056]
 # ["instr_profile": 1056 264]
	nop	
	li	$t2,1
 # ["exec_times": 792]
	seq	$t3,$a0,$t2
 # ["exec_times": 792]
	bnez	$t3,adj.L6
 # ["exec_times": 792]
 # ["instr_profile": 792 264]
	nop	
	li	$t4,2
 # ["exec_times": 528]
	seq	$t5,$a0,$t4
 # ["exec_times": 528]
	bnez	$t5,adj.L4
 # ["exec_times": 528]
 # ["instr_profile": 528 264]
	nop	
	li	$t6,3
 # ["exec_times": 264]
	seq	$t7,$a0,$t6
 # ["exec_times": 264]
	bnez	$t7,adj.L8
 # ["exec_times": 264]
 # ["instr_profile": 264 264]
	nop	
adj.L15:
	j	adj.L1
 # ["exec_times": 0]
	nop	
adj.L2:
	# .loc	2, 187
 # ["exec_times": 0]
	move	$t8,$a1
 # ["exec_times": 264]
	li	$v0,1
 # ["exec_times": 264]
	seq	$v0,$t8,$v0
 # ["exec_times": 264]
	beqz	$v0,adj.L3
 # ["exec_times": 264]
 # ["instr_profile": 264 200]
	nop	
adj.L16:
	j	adj.__done11
 # ["exec_times": 64]
 # ["instr_profile": 64 64]
	nop	
adj.L3:
	move	$v1,$zero
 # ["exec_times": 200]
	seq	$v0,$a1,$v1
 # ["exec_times": 200]
adj.__done11:
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 264]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
adj.L4:
	# .loc	2, 189
 # ["exec_times": 0]
	move	$t9,$a1
 # ["exec_times": 264]
	li	$a0,3
 # ["exec_times": 264]
	seq	$v0,$t9,$a0
 # ["exec_times": 264]
	beqz	$v0,adj.L5
 # ["exec_times": 264]
 # ["instr_profile": 264 200]
	nop	
adj.L17:
	j	adj.__done12
 # ["exec_times": 64]
 # ["instr_profile": 64 64]
	nop	
adj.L5:
	li	$a2,2
 # ["exec_times": 200]
	seq	$v0,$a1,$a2
 # ["exec_times": 200]
adj.__done12:
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 264]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
adj.L6:
	# .loc	2, 191
 # ["exec_times": 0]
	move	$a0,$a1
 # ["exec_times": 264]
	li	$a2,1
 # ["exec_times": 264]
	seq	$v0,$a0,$a2
 # ["exec_times": 264]
	beqz	$v0,adj.L7
 # ["exec_times": 264]
 # ["instr_profile": 264 200]
	nop	
adj.L18:
	j	adj.__done13
 # ["exec_times": 64]
 # ["instr_profile": 64 64]
	nop	
adj.L7:
	li	$a3,3
 # ["exec_times": 200]
	seq	$v0,$a1,$a3
 # ["exec_times": 200]
adj.__done13:
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 264]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
adj.L8:
	# .loc	2, 193
 # ["exec_times": 0]
	move	$a2,$a1
 # ["exec_times": 264]
	li	$t8,2
 # ["exec_times": 264]
	seq	$v0,$a2,$t8
 # ["exec_times": 264]
	beqz	$v0,adj.L9
 # ["exec_times": 264]
 # ["instr_profile": 264 200]
	nop	
adj.L19:
	j	adj.__done14
 # ["exec_times": 64]
 # ["instr_profile": 64 64]
	nop	
adj.L9:
	move	$t9,$zero
 # ["exec_times": 200]
	seq	$v0,$a1,$t9
 # ["exec_times": 200]
adj.__done14:
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 264]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
adj.L1:
	# .loc	2, 195
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	adj 
	.text	
	.align	2
	.align	2
	# .loc	2, 198
	.ent	reflect 
reflect:
	spawn	reflect.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 200, $31
 # ["header/trailer":]
	cqip	reflect.headerspawn
 # ["header/trailer":]
reflect.headerspawn:
 # ["header/trailer":]
	pslice_entry	reflect.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	pslice_exit	reflect.headerspawn
	# .loc	2, 199
 # ["exec_times": 0]
	move	$t0,$a0
 # ["exec_times": 840]
	li	$t3,3
 # ["exec_times": 840]
	seq	$t1,$t0,$t3
 # ["exec_times": 840]
	beqz	$t1,reflect.L1
 # ["exec_times": 840]
 # ["instr_profile": 840 630]
	nop	
reflect.L18:
	j	reflect.__done15
 # ["exec_times": 210]
 # ["instr_profile": 210 210]
	nop	
reflect.L1:
	li	$t4,1
 # ["exec_times": 630]
	seq	$t1,$a0,$t4
 # ["exec_times": 630]
reflect.__done15:
	beqz	$t1,reflect.L2
 # ["exec_times": 840]
 # ["instr_profile": 840 420]
	nop	
	# .loc	2, 200
 # ["exec_times": 0]
	move	$t2,$a1
 # ["exec_times": 420]
	move	$t5,$zero
 # ["exec_times": 420]
	slt	$t6,$t2,$t5
 # ["exec_times": 420]
	bnez	$t6,reflect.L2
 # ["exec_times": 420]
 # ["instr_profile": 420 0]
	nop	
	li	$t7,3
 # ["exec_times": 420]
	slt	$t8,$t7,$t2
 # ["exec_times": 420]
	bnez	$t8,reflect.L2
 # ["exec_times": 420]
 # ["instr_profile": 420 0]
	nop	
	move	$t9,$zero
 # ["exec_times": 420]
	seq	$a0,$t2,$t9
 # ["exec_times": 420]
	bnez	$a0,reflect.L4
 # ["exec_times": 420]
 # ["instr_profile": 420 105]
	nop	
	li	$a2,1
 # ["exec_times": 315]
	seq	$a2,$t2,$a2
 # ["exec_times": 315]
	bnez	$a2,reflect.L5
 # ["exec_times": 315]
 # ["instr_profile": 315 105]
	nop	
	li	$a3,2
 # ["exec_times": 210]
	seq	$v0,$t2,$a3
 # ["exec_times": 210]
	bnez	$v0,reflect.L7
 # ["exec_times": 210]
 # ["instr_profile": 210 105]
	nop	
	li	$v1,3
 # ["exec_times": 105]
	seq	$t0,$t2,$v1
 # ["exec_times": 105]
	bnez	$t0,reflect.L6
 # ["exec_times": 105]
 # ["instr_profile": 105 105]
	nop	
reflect.L16:
	j	reflect.L2
 # ["exec_times": 0]
	nop	
reflect.L4:
	# .loc	2, 202
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 105]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 105]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
reflect.L5:
	# .loc	2, 204
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 105]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 105]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
reflect.L6:
	# .loc	2, 206
 # ["exec_times": 0]
	li	$v0,2
 # ["exec_times": 105]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 105]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
reflect.L7:
	# .loc	2, 208
 # ["exec_times": 0]
	li	$v0,3
 # ["exec_times": 105]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 105]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
reflect.L2:
	# .loc	2, 216
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 420]
	slt	$t2,$a1,$t1
 # ["exec_times": 420]
	bnez	$t2,reflect.L9
 # ["exec_times": 420]
 # ["instr_profile": 420 0]
	nop	
	li	$t3,3
 # ["exec_times": 420]
	slt	$t4,$t3,$a1
 # ["exec_times": 420]
	bnez	$t4,reflect.L9
 # ["exec_times": 420]
 # ["instr_profile": 420 0]
	nop	
	move	$t5,$zero
 # ["exec_times": 420]
	seq	$t6,$a1,$t5
 # ["exec_times": 420]
	bnez	$t6,reflect.L10
 # ["exec_times": 420]
 # ["instr_profile": 420 105]
	nop	
	li	$t7,1
 # ["exec_times": 315]
	seq	$t8,$a1,$t7
 # ["exec_times": 315]
	bnez	$t8,reflect.L11
 # ["exec_times": 315]
 # ["instr_profile": 315 105]
	nop	
	li	$t9,2
 # ["exec_times": 210]
	seq	$a0,$a1,$t9
 # ["exec_times": 210]
	bnez	$a0,reflect.L13
 # ["exec_times": 210]
 # ["instr_profile": 210 105]
	nop	
	li	$a2,3
 # ["exec_times": 105]
	seq	$a2,$a1,$a2
 # ["exec_times": 105]
	bnez	$a2,reflect.L12
 # ["exec_times": 105]
 # ["instr_profile": 105 105]
	nop	
reflect.L17:
	j	reflect.L9
 # ["exec_times": 0]
	nop	
reflect.L10:
	# .loc	2, 218
 # ["exec_times": 0]
	li	$v0,2
 # ["exec_times": 105]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 105]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
reflect.L11:
	# .loc	2, 220
 # ["exec_times": 0]
	li	$v0,3
 # ["exec_times": 105]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 105]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
reflect.L12:
	# .loc	2, 222
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 105]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 105]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
reflect.L13:
	# .loc	2, 224
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 105]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 105]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
reflect.L9:
	# .loc	2, 231
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	reflect 
	.text	
	.align	2
	.align	2
	# .loc	2, 249
	.ent	child 
child:
	spawn	child.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	child.headerspawn
 # ["header/trailer":]
child.headerspawn:
 # ["header/trailer":]
	pslice_entry	child.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	child.headerspawn
	# .loc	2, 250
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 920]
	slt	$v0,$a1,$a3
 # ["exec_times": 920]
	bnez	$v0,child.L1
 # ["exec_times": 920]
 # ["instr_profile": 920 0]
	nop	
	li	$v1,3
 # ["exec_times": 920]
	slt	$t0,$v1,$a1
 # ["exec_times": 920]
	bnez	$t0,child.L1
 # ["exec_times": 920]
 # ["instr_profile": 920 0]
	nop	
	move	$t1,$zero
 # ["exec_times": 920]
	seq	$t2,$a1,$t1
 # ["exec_times": 920]
	bnez	$t2,child.L3
 # ["exec_times": 920]
 # ["instr_profile": 920 230]
	nop	
	li	$t3,1
 # ["exec_times": 690]
	seq	$t4,$a1,$t3
 # ["exec_times": 690]
	bnez	$t4,child.L2
 # ["exec_times": 690]
 # ["instr_profile": 690 230]
	nop	
	li	$t5,2
 # ["exec_times": 460]
	seq	$t6,$a1,$t5
 # ["exec_times": 460]
	bnez	$t6,child.L5
 # ["exec_times": 460]
 # ["instr_profile": 460 230]
	nop	
	li	$t7,3
 # ["exec_times": 230]
	seq	$t8,$a1,$t7
 # ["exec_times": 230]
	bnez	$t8,child.L4
 # ["exec_times": 230]
 # ["instr_profile": 230 230]
	nop	
child.L7:
	j	child.L1
 # ["exec_times": 0]
	nop	
child.L2:
	# .loc	2, 252
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 230]
	addu	$v0,$a0,$a3
 # ["fields": "ne"]
 # ["exec_times": 230]
	lw	$v0,0($v0)
 # ["exec_times": 230]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 230]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
child.L3:
	# .loc	2, 254
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 230]
	addu	$t0,$a0,$v1
 # ["fields": "nw"]
 # ["exec_times": 230]
	lw	$v0,0($t0)
 # ["exec_times": 230]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 230]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
child.L4:
	# .loc	2, 256
 # ["exec_times": 0]
	li	$t9,16
 # ["exec_times": 230]
	addu	$a0,$a0,$t9
 # ["fields": "se"]
 # ["exec_times": 230]
	lw	$v0,0($a0)
 # ["exec_times": 230]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 230]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
child.L5:
	# .loc	2, 258
 # ["exec_times": 0]
	li	$a1,12
 # ["exec_times": 230]
	addu	$a2,$a0,$a1
 # ["fields": "sw"]
 # ["exec_times": 230]
	lw	$v0,0($a2)
 # ["exec_times": 230]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 230]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
child.L1:
	# .loc	2, 265
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	child 
	.text	
	.align	2
	.align	2
	# .loc	2, 268
	.ent	gtequal_adj_neighbor 
gtequal_adj_neighbor:
	spawn	gtequal_adj_neighbor.headerspawn
 # ["header/trailer":]
	la	$sp,-144($sp)
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
	.mask	0x800f0000, -144
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 144, $31
 # ["header/trailer":]
	cqip	gtequal_adj_neighbor.headerspawn
 # ["header/trailer":]
gtequal_adj_neighbor.headerspawn:
 # ["header/trailer":]
	pslice_entry	gtequal_adj_neighbor.headerspawn
 # ["header/trailer":]
	la	$sp,-144($sp)
 # ["header/trailer":]
	pslice_exit	gtequal_adj_neighbor.headerspawn
	spawn	gtequal_adj_neighbor.L11
 # ["cqip_pos": <L:gtequal_adj_neighbor.L11,0>]
	move	$s0,$a1
	# .loc	2, 272
 # ["exec_times": 0]
	li	$t4,20
 # ["exec_times": 1088]
	addu	$t5,$a0,$t4
 # ["fields": "parent"]
 # ["exec_times": 1088]
	lw	$s2,0($t5)
 # ["exec_times": 1088]
	# .loc	2, 273
 # ["exec_times": 0]
	li	$t6,1
 # ["exec_times": 1088]
	addu	$t7,$a0,$t6
 # ["fields": "childtype"]
 # ["exec_times": 1088]
	lbu	$s1,0($t7)
 # ["exec_times": 1088]
	# .loc	2, 274
 # ["exec_times": 0]
	la	$t8,0($zero)
 # ["exec_times": 1088]
	sne	$t1,$s2,$t8
 # ["exec_times": 1088]
	bnez	$t1,gtequal_adj_neighbor.L1
 # ["exec_times": 1088]
 # ["instr_profile": 1088 1056]
	nop	
gtequal_adj_neighbor.L9:
	j	gtequal_adj_neighbor.__done5
 # ["exec_times": 32]
 # ["instr_profile": 32 32]
	nop	
gtequal_adj_neighbor.L1:
	la	$t0,adj
 # ["exec_times": 1056]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1056]
 # ["proc_name": "adj"]
 # ["call_overhead": 28]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$t9,$zero
 # ["exec_times": 1056]
	sne	$t1,$v0,$t9
 # ["exec_times": 1056]
gtequal_adj_neighbor.__done5:
	beqz	$t1,gtequal_adj_neighbor.L2
 # ["exec_times": 1088]
 # ["instr_profile": 1088 576]
	nop	
	# .loc	2, 275
 # ["exec_times": 0]
	la	$t0,gtequal_adj_neighbor
 # ["exec_times": 512]
	move	$a0,$s2
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 512]
 # ["proc_name": "gtequal_adj_neighbor"]
 # ["call_overhead": 128]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s2,$v0
	j	gtequal_adj_neighbor.__done6
 # ["exec_times": 512]
 # ["instr_profile": 512 512]
	nop	
gtequal_adj_neighbor.L2:
	# .loc	2, 277
 # ["exec_times": 0]
gtequal_adj_neighbor.__done6:
	cqip	gtequal_adj_neighbor.L11
 # ["cqip_pos": <L:gtequal_adj_neighbor.L11,0>]
gtequal_adj_neighbor.L11:
	pslice_entry	gtequal_adj_neighbor.L11
 # ["pslice_entry_pos": <L:gtequal_adj_neighbor.L11,0>]
	pslice_exit	gtequal_adj_neighbor.L11
 # ["pslice_exit_pos": <L:gtequal_adj_neighbor.L11,0>]
	# .loc	2, 278
 # ["exec_times": 0]
	la	$a0,0($zero)
 # ["exec_times": 1088]
	sne	$t2,$s2,$a0
 # ["exec_times": 1088]
	bnez	$t2,gtequal_adj_neighbor.L3
 # ["exec_times": 1088]
 # ["instr_profile": 1088 928]
	nop	
gtequal_adj_neighbor.L10:
	j	gtequal_adj_neighbor.__done7
 # ["exec_times": 160]
 # ["instr_profile": 160 160]
	nop	
gtequal_adj_neighbor.L3:
	move	$a1,$zero
 # ["exec_times": 928]
	addu	$a2,$s2,$a1
 # ["fields": "color"]
 # ["exec_times": 928]
	lbu	$t3,0($a2)
 # ["exec_times": 928]
	li	$a3,2
 # ["exec_times": 928]
	seq	$t2,$t3,$a3
 # ["exec_times": 928]
gtequal_adj_neighbor.__done7:
	beqz	$t2,gtequal_adj_neighbor.L4
 # ["exec_times": 1088]
 # ["instr_profile": 1088 248]
	nop	
	# .loc	2, 279
 # ["exec_times": 0]
	la	$s3,child
 # ["exec_times": 840]
	la	$t0,reflect
 # ["exec_times": 840]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 840]
 # ["proc_name": "reflect"]
 # ["call_overhead": 29]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$a0,$s2
	move	$a1,$v0
	move	$fp,$sp
	fst	$sp
	move	$t0,$s3
	jalr	$t0,$ra
 # ["exec_times": 840]
 # ["proc_name": "child"]
 # ["call_overhead": 20]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
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
 # ["exec_times": 840]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
gtequal_adj_neighbor.L4:
	# .loc	2, 281
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 248]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	gtequal_adj_neighbor 
	.text	
	.align	2
	.align	2
	# .loc	2, 285
	.ent	sum_adjacent 
sum_adjacent:
	spawn	sum_adjacent.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
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
	.mask	0x803f0000, -168
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 168, $31
 # ["header/trailer":]
	cqip	sum_adjacent.headerspawn
 # ["header/trailer":]
sum_adjacent.headerspawn:
 # ["header/trailer":]
	pslice_entry	sum_adjacent.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	pslice_exit	sum_adjacent.headerspawn
	spawn	sum_adjacent.spawntail3
	spawn	sum_adjacent.spawntail4
	spawn	sum_adjacent.spawntail5
	move	$s3,$a0
	move	$s2,$a1
	move	$s1,$a2
	move	$s0,$a3
	# .loc	2, 286
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 120]
	addu	$t1,$s3,$t0
 # ["fields": "color"]
 # ["exec_times": 120]
	lbu	$v0,0($t1)
 # ["exec_times": 120]
	li	$t2,2
 # ["exec_times": 120]
	seq	$t3,$v0,$t2
 # ["exec_times": 120]
	beqz	$t3,sum_adjacent.L1
 # ["exec_times": 120]
 # ["instr_profile": 120 80]
	nop	
	# .loc	2, 287
 # ["exec_times": 0]
	la	$s4,sum_adjacent
 # ["exec_times": 40]
	la	$t0,child
 # ["exec_times": 40]
	move	$a0,$s3
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 40]
 # ["proc_name": "child"]
 # ["call_overhead": 18]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	li	$t4,2
 # ["exec_times": 40]
	div	$a3,$s0,$t4
 # ["exec_times": 40]
	move	$a0,$v0
	move	$a1,$s2
	move	$a2,$s1
	move	$fp,$sp
	fst	$sp
	move	$t0,$s4
	jalr	$t0,$ra
 # ["exec_times": 40]
 # ["proc_name": "sum_adjacent"]
 # ["call_overhead": 18]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	move	$s5,$v0
	la	$s4,sum_adjacent
 # ["exec_times": 40]
	la	$t0,child
 # ["exec_times": 40]
	move	$a0,$s3
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 40]
 # ["proc_name": "child"]
 # ["call_overhead": 19]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	li	$t5,2
 # ["exec_times": 40]
	div	$a3,$s0,$t5
 # ["exec_times": 40]
	move	$a0,$v0
	move	$a1,$s2
	move	$a2,$s1
	move	$fp,$sp
	fst	$sp
	move	$t0,$s4
	jalr	$t0,$ra
 # ["exec_times": 40]
 # ["proc_name": "sum_adjacent"]
 # ["call_overhead": 18]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	addu	$v0,$s5,$v0
 # ["exec_times": 40]
	cqip	sum_adjacent.spawntail3
sum_adjacent.spawntail3:
	pslice_entry	sum_adjacent.spawntail3
	pslice_exit	sum_adjacent.spawntail3
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
 # ["exec_times": 40]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
sum_adjacent.L1:
	# .loc	2, 289
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 80]
	addu	$t7,$s3,$t6
 # ["fields": "color"]
 # ["exec_times": 80]
	lbu	$v1,0($t7)
 # ["exec_times": 80]
	li	$t8,1
 # ["exec_times": 80]
	seq	$t9,$v1,$t8
 # ["exec_times": 80]
	beqz	$t9,sum_adjacent.L2
 # ["exec_times": 80]
 # ["instr_profile": 80 80]
	nop	
	# .loc	2, 290
 # ["exec_times": 0]
	move	$v0,$s0
	cqip	sum_adjacent.spawntail4
sum_adjacent.spawntail4:
	pslice_entry	sum_adjacent.spawntail4
	pslice_exit	sum_adjacent.spawntail4
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
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
sum_adjacent.L2:
	# .loc	2, 292
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 80]
	cqip	sum_adjacent.spawntail5
sum_adjacent.spawntail5:
	pslice_entry	sum_adjacent.spawntail5
	pslice_exit	sum_adjacent.spawntail5
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
 # ["exec_times": 80]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	sum_adjacent 
	.text	
	.align	2
	.align	2
	.globl	MakeTree
	# .loc	2, 72
	.ent	MakeTree 
MakeTree:
	spawn	MakeTree.headerspawn
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
	.mask	0x80ff0000, -592
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 592, $31
 # ["header/trailer":]
	cqip	MakeTree.headerspawn
 # ["header/trailer":]
MakeTree.headerspawn:
 # ["header/trailer":]
	pslice_entry	MakeTree.headerspawn
 # ["header/trailer":]
	la	$sp,-592($sp)
 # ["header/trailer":]
	pslice_exit	MakeTree.headerspawn
	spawn	MakeTree.L10
 # ["cqip_pos": <L:MakeTree.L10,0>]
	lw	$s2,560($sp)
	lw	$s0,568($sp)
	lw	$s1,572($sp)
	move	$s7,$a0
	move	$s6,$a1
	move	$s5,$a2
	move	$s4,$a3
	# .loc	2, 73
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 245]
	# .loc	2, 79
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 245]
	li	$a0,24
 # ["exec_times": 245]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 245]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
 # ["exec_times": 245]
	# .loc	2, 81
 # ["exec_times": 0]
	li	$a3,20
 # ["exec_times": 245]
	addu	$v0,$s3,$a3
 # ["fields": "parent"]
 # ["exec_times": 245]
	sw	$s0,0($v0)
 # ["exec_times": 245]
	# .loc	2, 82
 # ["exec_times": 0]
	li	$v1,1
 # ["exec_times": 245]
	addu	$t0,$s3,$v1
 # ["fields": "childtype"]
 # ["exec_times": 245]
	lbu	$t5,567($sp)
	sb	$t5,0($t0)
 # ["exec_times": 245]
	# .loc	2, 84
 # ["exec_times": 0]
	la	$t0,CheckIntersect
 # ["exec_times": 245]
	move	$a0,$s6
	move	$a1,$s5
	move	$a2,$s7
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 245]
 # ["proc_name": "CheckIntersect"]
 # ["call_overhead": 80]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	cqip	MakeTree.L10
 # ["cqip_pos": <L:MakeTree.L10,0>]
MakeTree.L10:
	pslice_entry	MakeTree.L10
 # ["pslice_entry_pos": <L:MakeTree.L10,0>]
	pslice_exit	MakeTree.L10
 # ["pslice_exit_pos": <L:MakeTree.L10,0>]
	# .loc	2, 85
 # ["exec_times": 0]
	li	$t1,2
 # ["exec_times": 245]
	div	$s7,$s7,$t1
 # ["exec_times": 245]
	# .loc	2, 86
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 245]
	seq	$a2,$v0,$t2
 # ["exec_times": 245]
	bnez	$a2,MakeTree.L1
 # ["exec_times": 245]
 # ["instr_profile": 245 41]
	nop	
MakeTree.L9:
	j	MakeTree.__done5
 # ["exec_times": 204]
 # ["instr_profile": 204 204]
	nop	
MakeTree.L1:
	li	$t3,512
 # ["exec_times": 41]
	slt	$a2,$s7,$t3
 # ["exec_times": 41]
MakeTree.__done5:
	beqz	$a2,MakeTree.L2
 # ["exec_times": 245]
 # ["instr_profile": 245 205]
	nop	
	# .loc	2, 87
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 40]
	addu	$t5,$s3,$t4
 # ["fields": "color"]
 # ["exec_times": 40]
	li	$t6,1
 # ["exec_times": 40]
	sb	$t6,0($t5)
 # ["exec_times": 40]
	# .loc	2, 88
 # ["exec_times": 0]
	li	$t7,4
 # ["exec_times": 40]
	addu	$t8,$s3,$t7
 # ["fields": "nw"]
 # ["exec_times": 40]
	la	$t9,0($zero)
 # ["exec_times": 40]
	sw	$t9,0($t8)
 # ["exec_times": 40]
	# .loc	2, 89
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 40]
	addu	$a1,$s3,$a0
 # ["fields": "ne"]
 # ["exec_times": 40]
	la	$a2,0($zero)
 # ["exec_times": 40]
	sw	$a2,0($a1)
 # ["exec_times": 40]
	# .loc	2, 90
 # ["exec_times": 0]
	li	$a3,12
 # ["exec_times": 40]
	addu	$v0,$s3,$a3
 # ["fields": "sw"]
 # ["exec_times": 40]
	la	$v1,0($zero)
 # ["exec_times": 40]
	sw	$v1,0($v0)
 # ["exec_times": 40]
	# .loc	2, 91
 # ["exec_times": 0]
	li	$t0,16
 # ["exec_times": 40]
	addu	$t1,$s3,$t0
 # ["fields": "se"]
 # ["exec_times": 40]
	la	$t2,0($zero)
 # ["exec_times": 40]
	sw	$t2,0($t1)
 # ["exec_times": 40]
	j	MakeTree.__done8
 # ["exec_times": 40]
 # ["instr_profile": 40 40]
	nop	
MakeTree.L2:
	# .loc	2, 92
 # ["exec_times": 0]
	li	$t3,2
 # ["exec_times": 205]
	seq	$t4,$v0,$t3
 # ["exec_times": 205]
	beqz	$t4,MakeTree.L3
 # ["exec_times": 205]
 # ["instr_profile": 205 149]
	nop	
	# .loc	2, 93
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 56]
	addu	$t6,$s3,$t5
 # ["fields": "color"]
 # ["exec_times": 56]
	move	$t7,$zero
 # ["exec_times": 56]
	sb	$t7,0($t6)
 # ["exec_times": 56]
	# .loc	2, 94
 # ["exec_times": 0]
	li	$t8,4
 # ["exec_times": 56]
	addu	$t9,$s3,$t8
 # ["fields": "nw"]
 # ["exec_times": 56]
	la	$a0,0($zero)
 # ["exec_times": 56]
	sw	$a0,0($t9)
 # ["exec_times": 56]
	# .loc	2, 95
 # ["exec_times": 0]
	li	$a1,8
 # ["exec_times": 56]
	addu	$a2,$s3,$a1
 # ["fields": "ne"]
 # ["exec_times": 56]
	la	$a3,0($zero)
 # ["exec_times": 56]
	sw	$a3,0($a2)
 # ["exec_times": 56]
	# .loc	2, 96
 # ["exec_times": 0]
	li	$v0,12
 # ["exec_times": 56]
	addu	$v1,$s3,$v0
 # ["fields": "sw"]
 # ["exec_times": 56]
	la	$t0,0($zero)
 # ["exec_times": 56]
	sw	$t0,0($v1)
 # ["exec_times": 56]
	# .loc	2, 97
 # ["exec_times": 0]
	li	$t1,16
 # ["exec_times": 56]
	addu	$t2,$s3,$t1
 # ["fields": "se"]
 # ["exec_times": 56]
	la	$t3,0($zero)
 # ["exec_times": 56]
	sw	$t3,0($t2)
 # ["exec_times": 56]
	j	MakeTree.__done8
 # ["exec_times": 56]
 # ["instr_profile": 56 56]
	nop	
MakeTree.L3:
	# .loc	2, 99
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 149]
	sne	$t5,$s2,$t4
 # ["exec_times": 149]
	move	$t6,$zero
 # ["exec_times": 149]
	seq	$t7,$t5,$t6
 # ["exec_times": 149]
	beqz	$t7,MakeTree.L4
 # ["exec_times": 149]
 # ["instr_profile": 149 61]
	nop	
	# .loc	2, 100
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 88]
	addu	$t9,$s3,$t8
 # ["fields": "color"]
 # ["exec_times": 88]
	move	$a0,$zero
 # ["exec_times": 88]
	sb	$a0,0($t9)
 # ["exec_times": 88]
	# .loc	2, 101
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 88]
	addu	$a2,$s3,$a1
 # ["fields": "nw"]
 # ["exec_times": 88]
	la	$a3,0($zero)
 # ["exec_times": 88]
	sw	$a3,0($a2)
 # ["exec_times": 88]
	# .loc	2, 102
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 88]
	addu	$v1,$s3,$v0
 # ["fields": "ne"]
 # ["exec_times": 88]
	la	$t0,0($zero)
 # ["exec_times": 88]
	sw	$t0,0($v1)
 # ["exec_times": 88]
	# .loc	2, 103
 # ["exec_times": 0]
	li	$t1,12
 # ["exec_times": 88]
	addu	$t2,$s3,$t1
 # ["fields": "sw"]
 # ["exec_times": 88]
	la	$t3,0($zero)
 # ["exec_times": 88]
	sw	$t3,0($t2)
 # ["exec_times": 88]
	# .loc	2, 104
 # ["exec_times": 0]
	li	$t4,16
 # ["exec_times": 88]
	addu	$t5,$s3,$t4
 # ["fields": "se"]
 # ["exec_times": 88]
	la	$t6,0($zero)
 # ["exec_times": 88]
	sw	$t6,0($t5)
 # ["exec_times": 88]
	j	MakeTree.__done8
 # ["exec_times": 88]
 # ["instr_profile": 88 88]
	nop	
MakeTree.L4:
	# .loc	2, 111
 # ["exec_times": 0]
	addu	$t7,$s4,$s1
 # ["exec_times": 61]
	li	$t8,2
 # ["exec_times": 61]
	div	$s0,$t7,$t8
 # ["exec_times": 61]
	# .loc	2, 112
 # ["exec_times": 0]
	addu	$t9,$s4,$s1
 # ["exec_times": 61]
	li	$a0,1
 # ["exec_times": 61]
	addu	$a1,$t9,$a0
 # ["exec_times": 61]
	li	$a2,2
 # ["exec_times": 61]
	div	$t4,$a1,$a2
 # ["exec_times": 61]
	sw	$t4,536($sp)
	# .loc	2, 115
 # ["exec_times": 0]
	li	$a3,12
 # ["exec_times": 61]
	addu	$t3,$s3,$a3
 # ["fields": "sw"]
 # ["exec_times": 61]
	sw	$t3,212($sp)
	la	$t0,MakeTree
 # ["exec_times": 61]
	subu	$a1,$s6,$s7
 # ["exec_times": 61]
	subu	$a2,$s5,$s7
 # ["exec_times": 61]
	lw	$t2,536($sp)
	addu	$v0,$t2,$s1
 # ["exec_times": 61]
	li	$v1,1
 # ["exec_times": 61]
	addu	$t1,$v0,$v1
 # ["exec_times": 61]
	li	$t2,2
 # ["exec_times": 61]
	div	$a3,$t1,$t2
 # ["exec_times": 61]
	li	$t2,2
 # ["exec_times": 61]
	li	$t3,1
 # ["exec_times": 61]
	subu	$t4,$s2,$t3
 # ["exec_times": 61]
	move	$a0,$s7
	move	$fp,$sp
	fst	$sp
	sw	$s1,-20($sp)
	sw	$s3,-24($sp)
	sb	$t2,-25($sp)
	sw	$t4,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "MakeTree"]
 # ["call_overhead": 210]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	lw	$t1,212($sp)
	sw	$v0,0($t1)
 # ["exec_times": 61]
	# .loc	2, 118
 # ["exec_times": 0]
	li	$t5,16
 # ["exec_times": 61]
	addu	$t0,$s3,$t5
 # ["fields": "se"]
 # ["exec_times": 61]
	sw	$t0,164($sp)
	la	$t0,MakeTree
 # ["exec_times": 61]
	addu	$a1,$s6,$s7
 # ["exec_times": 61]
	subu	$a2,$s5,$s7
 # ["exec_times": 61]
	lw	$v1,536($sp)
	addu	$t6,$v1,$s1
 # ["exec_times": 61]
	li	$t7,2
 # ["exec_times": 61]
	div	$t8,$t6,$t7
 # ["exec_times": 61]
	li	$t9,3
 # ["exec_times": 61]
	li	$a0,1
 # ["exec_times": 61]
	subu	$v0,$s2,$a0
 # ["exec_times": 61]
	move	$a0,$s7
	lw	$a3,536($sp)
	move	$fp,$sp
	fst	$sp
	sw	$t8,-20($sp)
	sw	$s3,-24($sp)
	sb	$t9,-25($sp)
	sw	$v0,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "MakeTree"]
 # ["call_overhead": 322]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	lw	$v1,164($sp)
	sw	$v0,0($v1)
 # ["exec_times": 61]
	# .loc	2, 122
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 61]
	addu	$s1,$s3,$a2
 # ["fields": "ne"]
 # ["exec_times": 61]
	la	$t0,MakeTree
 # ["exec_times": 61]
	addu	$a1,$s6,$s7
 # ["exec_times": 61]
	addu	$a2,$s5,$s7
 # ["exec_times": 61]
	addu	$a3,$s4,$s0
 # ["exec_times": 61]
	li	$v0,1
 # ["exec_times": 61]
	addu	$v1,$a3,$v0
 # ["exec_times": 61]
	li	$t1,2
 # ["exec_times": 61]
	div	$a3,$v1,$t1
 # ["exec_times": 61]
	li	$t1,1
 # ["exec_times": 61]
	li	$t2,1
 # ["exec_times": 61]
	subu	$t3,$s2,$t2
 # ["exec_times": 61]
	move	$a0,$s7
	move	$fp,$sp
	fst	$sp
	sw	$s0,-20($sp)
	sw	$s3,-24($sp)
	sb	$t1,-25($sp)
	sw	$t3,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "MakeTree"]
 # ["call_overhead": 478]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s1)
 # ["exec_times": 61]
	# .loc	2, 126
 # ["exec_times": 0]
	li	$t4,4
 # ["exec_times": 61]
	addu	$s1,$s3,$t4
 # ["fields": "nw"]
 # ["exec_times": 61]
	la	$t0,MakeTree
 # ["exec_times": 61]
	subu	$a1,$s6,$s7
 # ["exec_times": 61]
	addu	$a2,$s5,$s7
 # ["exec_times": 61]
	addu	$t5,$s4,$s0
 # ["exec_times": 61]
	li	$t6,2
 # ["exec_times": 61]
	div	$t7,$t5,$t6
 # ["exec_times": 61]
	move	$t8,$zero
 # ["exec_times": 61]
	li	$t9,1
 # ["exec_times": 61]
	subu	$v0,$s2,$t9
 # ["exec_times": 61]
	move	$a0,$s7
	move	$a3,$s4
	move	$fp,$sp
	fst	$sp
	sw	$t7,-20($sp)
	sw	$s3,-24($sp)
	sb	$t8,-25($sp)
	sw	$v0,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "MakeTree"]
 # ["call_overhead": 5625]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s1)
 # ["exec_times": 61]
	# .loc	2, 172
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 61]
	addu	$a2,$s3,$a1
 # ["fields": "color"]
 # ["exec_times": 61]
	li	$a3,2
 # ["exec_times": 61]
	sb	$a3,0($a2)
 # ["exec_times": 61]
MakeTree.__done8:
	# .loc	2, 175
 # ["exec_times": 0]
	move	$v0,$s3
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
 # ["exec_times": 245]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	MakeTree 
	.text	
	.align	2
	.align	2
	.globl	dealwithargs
	# .loc	2, 30
	.ent	dealwithargs 
dealwithargs:
	spawn	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-24($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 24, $31
 # ["header/trailer":]
	cqip	dealwithargs.headerspawn
 # ["header/trailer":]
dealwithargs.headerspawn:
 # ["header/trailer":]
	pslice_entry	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-24($sp)
 # ["header/trailer":]
	pslice_exit	dealwithargs.headerspawn
	# .loc	2, 32
 # ["exec_times": 0]
	li	$t6,10
 # ["exec_times": 1]
	sw	$t6,NumNodes
	# .loc	2, 33
 # ["exec_times": 0]
	li	$v0,4
 # ["exec_times": 1]
	# .loc	2, 35
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
	.globl	CountTree
	# .loc	2, 234
	.ent	CountTree 
CountTree:
	spawn	CountTree.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
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
	.mask	0x800f0000, -168
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 168, $31
 # ["header/trailer":]
	cqip	CountTree.headerspawn
 # ["header/trailer":]
CountTree.headerspawn:
 # ["header/trailer":]
	pslice_entry	CountTree.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	pslice_exit	CountTree.headerspawn
	spawn	CountTree.spawntail6
	spawn	CountTree.spawntail7
	move	$t7,$a0
	# .loc	2, 237
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 245]
	addu	$a0,$t7,$t9
 # ["fields": "nw"]
 # ["exec_times": 245]
	lw	$a0,0($a0)
 # ["exec_times": 245]
	# .loc	2, 238
 # ["exec_times": 0]
	li	$a1,8
 # ["exec_times": 245]
	addu	$a2,$t7,$a1
 # ["fields": "ne"]
 # ["exec_times": 245]
	lw	$s1,0($a2)
 # ["exec_times": 245]
	# .loc	2, 239
 # ["exec_times": 0]
	li	$a3,12
 # ["exec_times": 245]
	addu	$v0,$t7,$a3
 # ["fields": "sw"]
 # ["exec_times": 245]
	lw	$s0,0($v0)
 # ["exec_times": 245]
	# .loc	2, 240
 # ["exec_times": 0]
	li	$v1,16
 # ["exec_times": 245]
	addu	$t0,$t7,$v1
 # ["fields": "se"]
 # ["exec_times": 245]
	lw	$s2,0($t0)
 # ["exec_times": 245]
	# .loc	2, 241
 # ["exec_times": 0]
	la	$t1,0($zero)
 # ["exec_times": 245]
	seq	$t8,$a0,$t1
 # ["exec_times": 245]
	bnez	$t8,CountTree.L3
 # ["exec_times": 245]
 # ["instr_profile": 245 184]
	nop	
CountTree.L9:
	j	CountTree.__done7
 # ["exec_times": 61]
 # ["instr_profile": 61 61]
	nop	
CountTree.L3:
	la	$t2,0($zero)
 # ["exec_times": 184]
	seq	$t8,$s1,$t2
 # ["exec_times": 184]
	bnez	$t8,CountTree.L2
 # ["exec_times": 184]
 # ["instr_profile": 184 184]
	nop	
CountTree.L10:
	j	CountTree.__done6
 # ["exec_times": 0]
	nop	
CountTree.L2:
	la	$t3,0($zero)
 # ["exec_times": 184]
	seq	$t8,$s0,$t3
 # ["exec_times": 184]
	bnez	$t8,CountTree.L1
 # ["exec_times": 184]
 # ["instr_profile": 184 184]
	nop	
CountTree.L11:
	j	CountTree.__done5
 # ["exec_times": 0]
	nop	
CountTree.L1:
	la	$t4,0($zero)
 # ["exec_times": 184]
	seq	$t8,$s2,$t4
 # ["exec_times": 184]
CountTree.__done5:
CountTree.__done6:
CountTree.__done7:
	beqz	$t8,CountTree.L4
 # ["exec_times": 245]
 # ["instr_profile": 245 61]
	nop	
	# .loc	2, 242
 # ["exec_times": 0]
	li	$v0,1
 # ["exec_times": 184]
	cqip	CountTree.spawntail6
CountTree.spawntail6:
	pslice_entry	CountTree.spawntail6
	pslice_exit	CountTree.spawntail6
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
 # ["exec_times": 184]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
CountTree.L4:
	# .loc	2, 244
 # ["exec_times": 0]
	la	$t0,CountTree
 # ["exec_times": 61]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "CountTree"]
 # ["call_overhead": 42]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
	la	$t0,CountTree
 # ["exec_times": 61]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "CountTree"]
 # ["call_overhead": 57]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	addu	$s1,$s3,$v0
 # ["exec_times": 61]
	la	$t0,CountTree
 # ["exec_times": 61]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "CountTree"]
 # ["call_overhead": 96]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	addu	$s0,$s1,$v0
 # ["exec_times": 61]
	la	$t0,CountTree
 # ["exec_times": 61]
	move	$a0,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "CountTree"]
 # ["call_overhead": 998]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	addu	$v0,$s0,$v0
 # ["exec_times": 61]
	cqip	CountTree.spawntail7
CountTree.spawntail7:
	pslice_entry	CountTree.spawntail7
	pslice_exit	CountTree.spawntail7
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
 # ["exec_times": 61]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	CountTree 
	.text	
	.align	2
	.align	2
	.globl	perimeter
	# .loc	2, 296
	.ent	perimeter 
perimeter:
	spawn	perimeter.headerspawn
 # ["header/trailer":]
	la	$sp,-552($sp)
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
	.mask	0x80070000, -552
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 552, $31
 # ["header/trailer":]
	cqip	perimeter.headerspawn
 # ["header/trailer":]
perimeter.headerspawn:
 # ["header/trailer":]
	pslice_entry	perimeter.headerspawn
 # ["header/trailer":]
	la	$sp,-552($sp)
 # ["header/trailer":]
	pslice_exit	perimeter.headerspawn
	move	$s2,$a0
	move	$s1,$a1
	# .loc	2, 297
 # ["exec_times": 0]
	move	$s0,$zero
 # ["exec_times": 245]
	# .loc	2, 300
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 245]
	addu	$t0,$s2,$v1
 # ["fields": "color"]
 # ["exec_times": 245]
	lbu	$t1,0($t0)
 # ["exec_times": 245]
	li	$t2,2
 # ["exec_times": 245]
	seq	$t2,$t1,$t2
 # ["exec_times": 245]
	beqz	$t2,perimeter.L1
 # ["exec_times": 245]
 # ["instr_profile": 245 184]
	nop	
	# .loc	2, 307
 # ["exec_times": 0]
	li	$t3,12
 # ["exec_times": 61]
	addu	$t4,$s2,$t3
 # ["fields": "sw"]
 # ["exec_times": 61]
	lw	$a0,0($t4)
 # ["exec_times": 61]
	# .loc	2, 308
 # ["exec_times": 0]
	la	$t0,perimeter
 # ["exec_times": 61]
	li	$t5,2
 # ["exec_times": 61]
	div	$a1,$s1,$t5
 # ["exec_times": 61]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "perimeter"]
 # ["call_overhead": 789]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	addu	$s0,$s0,$v0
 # ["exec_times": 61]
	# .loc	2, 309
 # ["exec_times": 0]
	li	$t6,16
 # ["exec_times": 61]
	addu	$t7,$s2,$t6
 # ["fields": "se"]
 # ["exec_times": 61]
	lw	$a0,0($t7)
 # ["exec_times": 61]
	# .loc	2, 310
 # ["exec_times": 0]
	la	$t0,perimeter
 # ["exec_times": 61]
	li	$t8,2
 # ["exec_times": 61]
	div	$a1,$s1,$t8
 # ["exec_times": 61]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "perimeter"]
 # ["call_overhead": 1453]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	addu	$s0,$s0,$v0
 # ["exec_times": 61]
	# .loc	2, 311
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 61]
	addu	$a0,$s2,$t9
 # ["fields": "ne"]
 # ["exec_times": 61]
	lw	$a0,0($a0)
 # ["exec_times": 61]
	# .loc	2, 312
 # ["exec_times": 0]
	la	$t0,perimeter
 # ["exec_times": 61]
	li	$a1,2
 # ["exec_times": 61]
	div	$a1,$s1,$a1
 # ["exec_times": 61]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "perimeter"]
 # ["call_overhead": 1244]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	addu	$s0,$s0,$v0
 # ["exec_times": 61]
	# .loc	2, 313
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 61]
	addu	$a3,$s2,$a2
 # ["fields": "nw"]
 # ["exec_times": 61]
	lw	$a0,0($a3)
 # ["exec_times": 61]
	# .loc	2, 314
 # ["exec_times": 0]
	la	$t0,perimeter
 # ["exec_times": 61]
	li	$v0,2
 # ["exec_times": 61]
	div	$a1,$s1,$v0
 # ["exec_times": 61]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 61]
 # ["proc_name": "perimeter"]
 # ["call_overhead": 16805]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	addu	$s0,$s0,$v0
 # ["exec_times": 61]
	j	perimeter.__done15
 # ["exec_times": 61]
 # ["instr_profile": 61 61]
	nop	
perimeter.L1:
	# .loc	2, 334
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 184]
	addu	$t0,$s2,$v1
 # ["fields": "color"]
 # ["exec_times": 184]
	lbu	$t2,0($t0)
 # ["exec_times": 184]
	move	$t1,$zero
 # ["exec_times": 184]
	seq	$t2,$t2,$t1
 # ["exec_times": 184]
	beqz	$t2,perimeter.__done15
 # ["exec_times": 184]
 # ["instr_profile": 184 40]
	nop	
	# .loc	2, 336
 # ["exec_times": 0]
	la	$t0,gtequal_adj_neighbor
 # ["exec_times": 144]
	move	$a1,$zero
 # ["exec_times": 144]
	move	$a0,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "gtequal_adj_neighbor"]
 # ["call_overhead": 120]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$a0,$v0
	# .loc	2, 337
 # ["exec_times": 0]
	la	$t3,0($zero)
 # ["exec_times": 144]
	seq	$t3,$a0,$t3
 # ["exec_times": 144]
	beqz	$t3,perimeter.L3
 # ["exec_times": 144]
 # ["instr_profile": 144 136]
	nop	
perimeter.L16:
	j	perimeter.__done1
 # ["exec_times": 8]
 # ["instr_profile": 8 8]
	nop	
perimeter.L3:
	move	$t4,$zero
 # ["exec_times": 136]
	addu	$t5,$a0,$t4
 # ["fields": "color"]
 # ["exec_times": 136]
	lbu	$t4,0($t5)
 # ["exec_times": 136]
	li	$t6,1
 # ["exec_times": 136]
	seq	$t3,$t4,$t6
 # ["exec_times": 136]
perimeter.__done1:
	beqz	$t3,perimeter.L4
 # ["exec_times": 144]
 # ["instr_profile": 144 122]
	nop	
	# .loc	2, 338
 # ["exec_times": 0]
	addu	$s0,$s0,$s1
 # ["exec_times": 22]
	j	perimeter.__done2
 # ["exec_times": 22]
 # ["instr_profile": 22 22]
	nop	
perimeter.L4:
	# .loc	2, 339
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 122]
	addu	$t8,$a0,$t7
 # ["fields": "color"]
 # ["exec_times": 122]
	lbu	$t5,0($t8)
 # ["exec_times": 122]
	li	$t9,2
 # ["exec_times": 122]
	seq	$a1,$t5,$t9
 # ["exec_times": 122]
	beqz	$a1,perimeter.__done2
 # ["exec_times": 122]
 # ["instr_profile": 122 112]
	nop	
	# .loc	2, 340
 # ["exec_times": 0]
	la	$t5,sum_adjacent
 # ["exec_times": 10]
	li	$t6,3
 # ["exec_times": 10]
	li	$t7,2
 # ["exec_times": 10]
	move	$a1,$t6
	move	$a2,$t7
	move	$a3,$s1
	move	$fp,$sp
	fst	$sp
	move	$t0,$t5
	jalr	$t0,$ra
 # ["exec_times": 10]
 # ["proc_name": "sum_adjacent"]
 # ["call_overhead": 103]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	addu	$s0,$s0,$v0
 # ["exec_times": 10]
perimeter.__done2:
	# .loc	2, 342
 # ["exec_times": 0]
	la	$t0,gtequal_adj_neighbor
 # ["exec_times": 144]
	li	$a1,1
 # ["exec_times": 144]
	move	$a0,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "gtequal_adj_neighbor"]
 # ["call_overhead": 221]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$a0,$v0
	# .loc	2, 343
 # ["exec_times": 0]
	la	$a1,0($zero)
 # ["exec_times": 144]
	seq	$t6,$a0,$a1
 # ["exec_times": 144]
	beqz	$t6,perimeter.L6
 # ["exec_times": 144]
 # ["instr_profile": 144 136]
	nop	
perimeter.L17:
	j	perimeter.__done3
 # ["exec_times": 8]
 # ["instr_profile": 8 8]
	nop	
perimeter.L6:
	move	$a2,$zero
 # ["exec_times": 136]
	addu	$a3,$a0,$a2
 # ["fields": "color"]
 # ["exec_times": 136]
	lbu	$t7,0($a3)
 # ["exec_times": 136]
	li	$v0,1
 # ["exec_times": 136]
	seq	$t6,$t7,$v0
 # ["exec_times": 136]
perimeter.__done3:
	beqz	$t6,perimeter.L7
 # ["exec_times": 144]
 # ["instr_profile": 144 122]
	nop	
	# .loc	2, 344
 # ["exec_times": 0]
	addu	$s0,$s0,$s1
 # ["exec_times": 22]
	j	perimeter.__done4
 # ["exec_times": 22]
 # ["instr_profile": 22 22]
	nop	
perimeter.L7:
	# .loc	2, 345
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 122]
	addu	$t0,$a0,$v1
 # ["fields": "color"]
 # ["exec_times": 122]
	lbu	$t8,0($t0)
 # ["exec_times": 122]
	li	$t1,2
 # ["exec_times": 122]
	seq	$t2,$t8,$t1
 # ["exec_times": 122]
	beqz	$t2,perimeter.__done4
 # ["exec_times": 122]
 # ["instr_profile": 122 112]
	nop	
	# .loc	2, 346
 # ["exec_times": 0]
	la	$t8,sum_adjacent
 # ["exec_times": 10]
	li	$t9,2
 # ["exec_times": 10]
	move	$a2,$zero
 # ["exec_times": 10]
	move	$a1,$t9
	move	$a3,$s1
	move	$fp,$sp
	fst	$sp
	move	$t0,$t8
	jalr	$t0,$ra
 # ["exec_times": 10]
 # ["proc_name": "sum_adjacent"]
 # ["call_overhead": 94]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	addu	$s0,$s0,$v0
 # ["exec_times": 10]
perimeter.__done4:
	# .loc	2, 348
 # ["exec_times": 0]
	la	$t0,gtequal_adj_neighbor
 # ["exec_times": 144]
	li	$a1,2
 # ["exec_times": 144]
	move	$a0,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "gtequal_adj_neighbor"]
 # ["call_overhead": 197]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$a0,$v0
	# .loc	2, 349
 # ["exec_times": 0]
	la	$t3,0($zero)
 # ["exec_times": 144]
	seq	$t9,$a0,$t3
 # ["exec_times": 144]
	beqz	$t9,perimeter.L9
 # ["exec_times": 144]
 # ["instr_profile": 144 136]
	nop	
perimeter.L18:
	j	perimeter.__done5
 # ["exec_times": 8]
 # ["instr_profile": 8 8]
	nop	
perimeter.L9:
	move	$t4,$zero
 # ["exec_times": 136]
	addu	$t5,$a0,$t4
 # ["fields": "color"]
 # ["exec_times": 136]
	lbu	$a1,0($t5)
 # ["exec_times": 136]
	li	$t6,1
 # ["exec_times": 136]
	seq	$t9,$a1,$t6
 # ["exec_times": 136]
perimeter.__done5:
	beqz	$t9,perimeter.L10
 # ["exec_times": 144]
 # ["instr_profile": 144 122]
	nop	
	# .loc	2, 350
 # ["exec_times": 0]
	addu	$s0,$s0,$s1
 # ["exec_times": 22]
	j	perimeter.__done6
 # ["exec_times": 22]
 # ["instr_profile": 22 22]
	nop	
perimeter.L10:
	# .loc	2, 351
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 122]
	addu	$t8,$a0,$t7
 # ["fields": "color"]
 # ["exec_times": 122]
	lbu	$a1,0($t8)
 # ["exec_times": 122]
	li	$t9,2
 # ["exec_times": 122]
	seq	$a1,$a1,$t9
 # ["exec_times": 122]
	beqz	$a1,perimeter.__done6
 # ["exec_times": 122]
 # ["instr_profile": 122 112]
	nop	
	# .loc	2, 352
 # ["exec_times": 0]
	la	$v0,sum_adjacent
 # ["exec_times": 10]
	move	$a2,$zero
 # ["exec_times": 10]
	li	$a3,1
 # ["exec_times": 10]
	move	$a1,$a2
	move	$a2,$a3
	move	$a3,$s1
	move	$fp,$sp
	fst	$sp
	move	$t0,$v0
	jalr	$t0,$ra
 # ["exec_times": 10]
 # ["proc_name": "sum_adjacent"]
 # ["call_overhead": 91]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	addu	$s0,$s0,$v0
 # ["exec_times": 10]
perimeter.__done6:
	# .loc	2, 354
 # ["exec_times": 0]
	la	$t0,gtequal_adj_neighbor
 # ["exec_times": 144]
	li	$a1,3
 # ["exec_times": 144]
	move	$a0,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "gtequal_adj_neighbor"]
 # ["call_overhead": 138]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$a0,$v0
	# .loc	2, 355
 # ["exec_times": 0]
	la	$a1,0($zero)
 # ["exec_times": 144]
	seq	$a2,$a0,$a1
 # ["exec_times": 144]
	beqz	$a2,perimeter.L12
 # ["exec_times": 144]
 # ["instr_profile": 144 136]
	nop	
perimeter.L19:
	j	perimeter.__done7
 # ["exec_times": 8]
 # ["instr_profile": 8 8]
	nop	
perimeter.L12:
	move	$a2,$zero
 # ["exec_times": 136]
	addu	$a3,$a0,$a2
 # ["fields": "color"]
 # ["exec_times": 136]
	lbu	$a3,0($a3)
 # ["exec_times": 136]
	li	$v0,1
 # ["exec_times": 136]
	seq	$a2,$a3,$v0
 # ["exec_times": 136]
perimeter.__done7:
	beqz	$a2,perimeter.L13
 # ["exec_times": 144]
 # ["instr_profile": 144 122]
	nop	
	# .loc	2, 356
 # ["exec_times": 0]
	addu	$s0,$s0,$s1
 # ["exec_times": 22]
	j	perimeter.__done15
 # ["exec_times": 22]
 # ["instr_profile": 22 22]
	nop	
perimeter.L13:
	# .loc	2, 357
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 122]
	addu	$t0,$a0,$v1
 # ["fields": "color"]
 # ["exec_times": 122]
	lbu	$v0,0($t0)
 # ["exec_times": 122]
	li	$t1,2
 # ["exec_times": 122]
	seq	$t2,$v0,$t1
 # ["exec_times": 122]
	beqz	$t2,perimeter.__done15
 # ["exec_times": 122]
 # ["instr_profile": 122 112]
	nop	
	# .loc	2, 358
 # ["exec_times": 0]
	la	$v0,sum_adjacent
 # ["exec_times": 10]
	li	$v1,1
 # ["exec_times": 10]
	li	$t0,3
 # ["exec_times": 10]
	move	$a1,$v1
	move	$a2,$t0
	move	$a3,$s1
	move	$fp,$sp
	fst	$sp
	move	$t0,$v0
	jalr	$t0,$ra
 # ["exec_times": 10]
 # ["proc_name": "sum_adjacent"]
 # ["call_overhead": 100]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	addu	$s0,$s0,$v0
 # ["exec_times": 10]
perimeter.__done15:
	# .loc	2, 360
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
 # ["exec_times": 245]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	perimeter 
	.text	
	.align	2
	.align	2
	.globl	entry
	# .loc	2, 366
	.ent	entry 
entry:
	spawn	entry.headerspawn
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
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L1
 # ["cqip_pos": <L:entry.L1,0>]
	# .loc	2, 370
 # ["exec_times": 0]
	la	$t0,dealwithargs
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "dealwithargs"]
 # ["call_overhead": 3]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
	# .loc	2, 371
 # ["exec_times": 0]
	la	$t0,myprintf2
 # ["exec_times": 1]
	la	$a0,__tmp_string_0
 # ["exec_times": 1]
	move	$a1,$s0
	lw	$a2,NumNodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf2"]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 372
 # ["exec_times": 0]
	la	$t0,MakeTree
 # ["exec_times": 1]
	li	$a0,2048
 # ["exec_times": 1]
	move	$a1,$zero
 # ["exec_times": 1]
	move	$a2,$zero
 # ["exec_times": 1]
	move	$a3,$zero
 # ["exec_times": 1]
	li	$t3,1
 # ["exec_times": 1]
	lw	$t4,NumNodes
	subu	$t5,$t4,$t3
 # ["exec_times": 1]
	la	$t6,0($zero)
 # ["exec_times": 1]
	li	$t7,3
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	sw	$t5,-20($sp)
	sw	$t6,-24($sp)
	sb	$t7,-25($sp)
	sw	$s0,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "MakeTree"]
 # ["call_overhead": 38835]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L1
 # ["cqip_pos": <L:entry.L1,0>]
entry.L1:
	pslice_entry	entry.L1
 # ["pslice_entry_pos": <L:entry.L1,0>]
	pslice_exit	entry.L1
 # ["pslice_exit_pos": <L:entry.L1,0>]
	spawn	entry.L2
 # ["cqip_pos": <L:entry.L2,0>]
	move	$s0,$v0
	# .loc	2, 373
 # ["exec_times": 0]
	la	$t0,CountTree
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "CountTree"]
 # ["call_overhead": 6982]
 # ["regs_used": 5]
 # ["regs_defd": 9]
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
	# .loc	2, 374
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_1
 # ["exec_times": 1]
	move	$a1,$v0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 375
 # ["exec_times": 0]
	la	$t0,perimeter
 # ["exec_times": 1]
	li	$a1,4096
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "perimeter"]
 # ["call_overhead": 121427]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L3
 # ["cqip_pos": <L:entry.L3,0>]
entry.L3:
	pslice_entry	entry.L3
 # ["pslice_entry_pos": <L:entry.L3,0>]
	pslice_exit	entry.L3
 # ["pslice_exit_pos": <L:entry.L3,0>]
	# .loc	2, 376
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_2
 # ["exec_times": 1]
	move	$a1,$v0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 377
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 1]
	move	$a0,$zero
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 378
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	entry 
