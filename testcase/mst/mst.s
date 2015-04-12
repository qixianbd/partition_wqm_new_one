	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc12455_0.i /home/keyming/Prophet/testcase/mst/mst.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/mst/mst.snt /home/keyming/Prophet/testcase/mst/mst.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/mst/mst.temp1 /home/keyming/Prophet/testcase/mst/mst.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/mst/mst.temp2 /home/keyming/Prophet/testcase/mst/mst.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/mst/mst.temp3 /home/keyming/Prophet/testcase/mst/mst.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/mst/mst.temp4 /home/keyming/Prophet/testcase/mst/mst.snp
	# history:  transform_print /home/keyming/Prophet/testcase/mst/mst.snp /home/keyming/Prophet/testcase/mst/mst.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/mst/mst.tp /home/keyming/Prophet/testcase/mst/mst.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/mst/mst.iocal /home/keyming/Prophet/testcase/mst/mst.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/mst/mst.bore /home/keyming/Prophet/testcase/mst/mst.porky
	# history:  suifvm /home/keyming/Prophet/testcase/mst/mst.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/mst/mst.pf /home/keyming/Prophet/testcase/mst/mst.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/mst/mst.swig /home/keyming/Prophet/testcase/mst/mst.mgen
	# history:  raga /home/keyming/Prophet/testcase/mst/mst.mgen /home/keyming/Prophet/testcase/mst/mst.raga
	# history:  partition /home/keyming/Prophet/testcase/mst/mst.sche /home/keyming/Prophet/testcase/mst/mst.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/mst/mst.par /home/keyming/Prophet/testcase/mst/mst.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/mst/mst.mfin /home/keyming/Prophet/testcase/mst/mst.nop
	# history:  transform_main /home/keyming/Prophet/testcase/mst/mst.nop /home/keyming/Prophet/testcase/mst/mst.entry
	# history:  printmachine /home/keyming/Prophet/testcase/mst/mst.entry /home/keyming/Prophet/testcase/mst/mst.s
	.set	noreorder
	.comm	NumNodes, 4
	.sdata	
	.align	2
	.align	0	# disable automatic alignment
remaining:
	.word	0
	.lcomm	temp, 4
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"Error! malloc returns null\012\000"
	.lcomm	HashRange, 4
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"Make phase 2\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"Make phase 3\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_3:
	.ascii	"Make phase 4\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_4:
	.ascii	"Make returning\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_5:
	.ascii	"Not found\012\000"
	.sdata	
	.align	2
	.align	0	# disable automatic alignment
MyVertexList:
	.word	0
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_6:
	.ascii	"Compute phase 1\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_7:
	.ascii	"Compute phase 2\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_8:
	.ascii	"Making graph of size %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_9:
	.ascii	"Graph completed\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_10:
	.ascii	"About to compute mst \012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_11:
	.ascii	"MST has cost %d\012\000"
	.file	2 "mst.c"
	.text	
	.align	2
	.align	2
	# .loc	2, 75
	.ent	localmalloc 
localmalloc:
	spawn	localmalloc.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -64
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 64, $31
 # ["header/trailer":]
	cqip	localmalloc.headerspawn
 # ["header/trailer":]
localmalloc.headerspawn:
 # ["header/trailer":]
	pslice_entry	localmalloc.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	localmalloc.headerspawn
	move	$s0,$a0
	# .loc	2, 78
 # ["exec_times": 0]
	lw	$t0,remaining
	slt	$t1,$t0,$s0
 # ["exec_times": 72]
	beqz	$t1,localmalloc.L1
 # ["exec_times": 72]
 # ["instr_profile": 72 71]
	nop	
	# .loc	2, 80
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 1]
	li	$a0,32768
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,temp
	# .loc	2, 81
 # ["exec_times": 0]
	la	$t2,0($zero)
 # ["exec_times": 1]
	lw	$t3,temp
	sne	$t4,$t3,$t2
 # ["exec_times": 1]
	move	$t5,$zero
 # ["exec_times": 1]
	seq	$t6,$t4,$t5
 # ["exec_times": 1]
	beqz	$t6,localmalloc.L2
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	# .loc	2, 81
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 0]
	la	$a0,__tmp_string_0
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
localmalloc.L2:
	# .loc	2, 82
 # ["exec_times": 0]
	li	$t7,32768
 # ["exec_times": 1]
	sw	$t7,remaining
localmalloc.L1:
	# .loc	2, 84
 # ["exec_times": 0]
	lw	$v0,temp
	# .loc	2, 85
 # ["exec_times": 0]
	lw	$t8,temp
	addu	$t9,$s0,$t8
 # ["exec_times": 72]
	sw	$t9,temp
	# .loc	2, 86
 # ["exec_times": 0]
	lw	$a0,remaining
	subu	$a1,$a0,$s0
 # ["exec_times": 72]
	sw	$a1,remaining
	# .loc	2, 87
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 72]
 # ["instr_ret": t:g58]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	localmalloc 
	.text	
	.align	2
	.align	2
	# .loc	2, 163
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
	# .loc	2, 166
 # ["exec_times": 0]
	li	$a2,10000
 # ["exec_times": 0]
	div	$a3,$a0,$a2
 # ["exec_times": 0]
	# .loc	2, 166
 # ["exec_times": 0]
	li	$v0,10000
 # ["exec_times": 0]
	rem	$v1,$a0,$v0
 # ["exec_times": 0]
	# .loc	2, 167
 # ["exec_times": 0]
	li	$t0,10000
 # ["exec_times": 0]
	div	$t1,$a1,$t0
 # ["exec_times": 0]
	# .loc	2, 167
 # ["exec_times": 0]
	li	$t2,10000
 # ["exec_times": 0]
	rem	$t3,$a1,$t2
 # ["exec_times": 0]
	# .loc	2, 168
 # ["exec_times": 0]
	mult	$v1,$t1
	mflo	$t4
 # ["exec_times": 0]
	mult	$a3,$t3
	mflo	$t5
 # ["exec_times": 0]
	addu	$t6,$t4,$t5
 # ["exec_times": 0]
	li	$t7,10000
 # ["exec_times": 0]
	rem	$t8,$t6,$t7
 # ["exec_times": 0]
	li	$t9,10000
 # ["exec_times": 0]
	mult	$t8,$t9
	mflo	$a0
 # ["exec_times": 0]
	mult	$v1,$t3
	mflo	$a1
 # ["exec_times": 0]
	addu	$v0,$a0,$a1
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	mult 
	.text	
	.align	2
	.align	2
	# .loc	2, 172
	.ent	mst_random 
mst_random:
	spawn	mst_random.headerspawn
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
	cqip	mst_random.headerspawn
 # ["header/trailer":]
mst_random.headerspawn:
 # ["header/trailer":]
	pslice_entry	mst_random.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	pslice_exit	mst_random.headerspawn
	# .loc	2, 175
 # ["exec_times": 0]
	la	$t0,srand
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "srand"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 176
 # ["exec_times": 0]
	la	$t0,rand
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "rand"]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 177
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	mst_random 
	.text	
	.align	2
	.align	2
	# .loc	2, 181
	.ent	compute_dist 
compute_dist:
	spawn	compute_dist.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	compute_dist.headerspawn
 # ["header/trailer":]
compute_dist.headerspawn:
 # ["header/trailer":]
	pslice_entry	compute_dist.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	compute_dist.headerspawn
	# .loc	2, 186
 # ["exec_times": 0]
	slt	$a3,$a0,$a1
 # ["exec_times": 56]
	beqz	$a3,compute_dist.L1
 # ["exec_times": 56]
 # ["instr_profile": 56 28]
	nop	
	# .loc	2, 186
 # ["exec_times": 0]
	move	$a3,$a0
 # ["exec_times": 28]
	# .loc	2, 186
 # ["exec_times": 0]
	move	$a0,$a1
 # ["exec_times": 28]
	j	compute_dist.__done2
 # ["exec_times": 28]
 # ["instr_profile": 28 28]
	nop	
compute_dist.L1:
	# .loc	2, 186
 # ["exec_times": 0]
	move	$a3,$a1
 # ["exec_times": 28]
	# .loc	2, 186
 # ["exec_times": 0]
compute_dist.__done2:
	# .loc	2, 187
 # ["exec_times": 0]
	mult	$a3,$a2
	mflo	$v0
 # ["exec_times": 56]
	addu	$v1,$v0,$a0
 # ["exec_times": 56]
	# .loc	2, 188
 # ["exec_times": 0]
	li	$t0,10000
 # ["exec_times": 56]
	div	$t1,$v1,$t0
 # ["exec_times": 56]
	# .loc	2, 188
 # ["exec_times": 0]
	li	$t2,10000
 # ["exec_times": 56]
	rem	$t3,$v1,$t2
 # ["exec_times": 56]
	# .loc	2, 189
 # ["exec_times": 0]
	li	$t4,3141
 # ["exec_times": 56]
	# .loc	2, 189
 # ["exec_times": 0]
	li	$t5,5821
 # ["exec_times": 56]
	# .loc	2, 190
 # ["exec_times": 0]
	mult	$t3,$t4
	mflo	$t6
 # ["exec_times": 56]
	mult	$t1,$t5
	mflo	$t7
 # ["exec_times": 56]
	addu	$t8,$t6,$t7
 # ["exec_times": 56]
	li	$t9,10000
 # ["exec_times": 56]
	rem	$a0,$t8,$t9
 # ["exec_times": 56]
	li	$a1,10000
 # ["exec_times": 56]
	mult	$a0,$a1
	mflo	$a2
 # ["exec_times": 56]
	mult	$t3,$t5
	mflo	$a3
 # ["exec_times": 56]
	addu	$v0,$a2,$a3
 # ["exec_times": 56]
	li	$v1,1
 # ["exec_times": 56]
	addu	$t0,$v0,$v1
 # ["exec_times": 56]
	# .loc	2, 191
 # ["exec_times": 0]
	li	$t1,2048
 # ["exec_times": 56]
	rem	$t2,$t0,$t1
 # ["exec_times": 56]
	li	$t3,1
 # ["exec_times": 56]
	addu	$v0,$t2,$t3
 # ["exec_times": 56]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 56]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	compute_dist 
	.text	
	.align	2
	.align	2
	# .loc	2, 195
	.ent	hashfunc 
hashfunc:
	spawn	hashfunc.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 32, $31
 # ["header/trailer":]
	cqip	hashfunc.headerspawn
 # ["header/trailer":]
hashfunc.headerspawn:
 # ["header/trailer":]
	pslice_entry	hashfunc.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	pslice_exit	hashfunc.headerspawn
	# .loc	2, 198
 # ["exec_times": 0]
	li	$t5,3
 # ["exec_times": 84]
	srlv	$t6,$a0,$t5
 # ["exec_times": 84]
	lw	$t4,HashRange
	remu	$v0,$t6,$t4
 # ["exec_times": 84]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 84]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	hashfunc 
	.text	
	.align	2
	.align	2
	# .loc	2, 206
	.ent	AddEdges 
AddEdges:
	spawn	AddEdges.headerspawn
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
	sw	$s5,28($sp)
 # ["header/trailer":]
	.mask	0x803f0000, -264
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 264, $31
 # ["header/trailer":]
	cqip	AddEdges.headerspawn
 # ["header/trailer":]
AddEdges.headerspawn:
 # ["header/trailer":]
	pslice_entry	AddEdges.headerspawn
 # ["header/trailer":]
	la	$sp,-264($sp)
 # ["header/trailer":]
	pslice_exit	AddEdges.headerspawn
	lw	$t4,240($sp)
	lw	$s4,244($sp)
	move	$s2,$a0
	spawn	AddEdges.L18
 # ["cqip_pos": <L:AddEdges.L18,0>]
	move	$s1,$a2
	move	$s0,$a3
	# .loc	2, 211
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 1]
	slt	$t8,$t7,$s1
 # ["exec_times": 1]
	beqz	$t8,AddEdges.L10
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	move	$s3,$zero
 # ["exec_times": 1]
AddEdges.L11:
	# .loc	2, 212
 # ["exec_times": 0]
	la	$t9,232($sp)
 # ["exec_times": 1]
	li	$a0,4
 # ["exec_times": 1]
	mult	$s3,$a0
	mflo	$a2
 # ["exec_times": 1]
	addu	$a2,$t9,$a2
 # ["exec_times": 1]
	li	$a3,4
 # ["exec_times": 1]
	mult	$s3,$a3
	mflo	$v0
 # ["exec_times": 1]
	addu	$v1,$a1,$v0
 # ["exec_times": 1]
	lw	$t0,0($v1)
 # ["exec_times": 1]
	sw	$t0,0($a2)
 # ["exec_times": 1]
	li	$t1,1
 # ["exec_times": 1]
	addu	$s3,$s3,$t1
 # ["exec_times": 1]
	sle	$t2,$s1,$s3
 # ["exec_times": 1]
	beqz	$t2,AddEdges.L11
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
AddEdges.L16:
	j	AddEdges.__done12
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
AddEdges.L10:
	move	$s3,$zero
 # ["exec_times": 0]
AddEdges.__done12:
	cqip	AddEdges.L18
 # ["cqip_pos": <L:AddEdges.L18,0>]
AddEdges.L18:
	pslice_entry	AddEdges.L18
 # ["pslice_entry_pos": <L:AddEdges.L18,0>]
	pslice_exit	AddEdges.L18
 # ["pslice_exit_pos": <L:AddEdges.L18,0>]
	# .loc	2, 215
 # ["exec_times": 0]
	li	$t3,4
 # ["exec_times": 1]
	mult	$t4,$t3
	mflo	$t5
 # ["exec_times": 1]
	addu	$t6,$a1,$t5
 # ["exec_times": 1]
	lw	$s5,0($t6)
 # ["exec_times": 1]
	# .loc	2, 215
 # ["exec_times": 0]
	la	$t7,0($zero)
 # ["exec_times": 1]
	sne	$t8,$s5,$t7
 # ["exec_times": 1]
	beqz	$t8,AddEdges.L6
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
AddEdges.L5:
	spawn	AddEdges.L19
 # ["cqip_pos": <L:AddEdges.L19,0>]
	# .loc	2, 217
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 8]
	mult	$s1,$s0
	mflo	$a0
 # ["exec_times": 8]
	slt	$a1,$t9,$a0
 # ["exec_times": 8]
	beqz	$a1,AddEdges.L13
 # ["exec_times": 8]
 # ["instr_profile": 8 0]
	nop	
	move	$s3,$zero
 # ["exec_times": 8]
AddEdges.L14:
	# .loc	2, 217
 # ["exec_times": 0]
	# .loc	2, 223
 # ["exec_times": 0]
	sne	$a2,$s3,$s2
 # ["exec_times": 64]
	beqz	$a2,AddEdges.L9
 # ["exec_times": 64]
 # ["instr_profile": 64 8]
	nop	
	# .loc	2, 225
 # ["exec_times": 0]
	la	$t0,compute_dist
 # ["exec_times": 56]
	move	$a0,$s3
	move	$a1,$s2
	move	$a2,$s4
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 56]
 # ["proc_name": "compute_dist"]
 # ["call_overhead": 28]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 226
 # ["exec_times": 0]
	div	$a3,$s3,$s0
 # ["exec_times": 56]
	# .loc	2, 227
 # ["exec_times": 0]
	rem	$v1,$s3,$s0
 # ["exec_times": 56]
	# .loc	2, 228
 # ["exec_times": 0]
	li	$t0,12
 # ["exec_times": 56]
	mult	$t0,$v1
	mflo	$t0
 # ["exec_times": 56]
	la	$t1,232($sp)
 # ["exec_times": 56]
	li	$t2,4
 # ["exec_times": 56]
	mult	$a3,$t2
	mflo	$t3
 # ["exec_times": 56]
	addu	$t4,$t1,$t3
 # ["exec_times": 56]
	lw	$t5,0($t4)
 # ["exec_times": 56]
	addu	$a1,$t0,$t5
 # ["exec_times": 56]
	# .loc	2, 229
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 56]
	addu	$t7,$s5,$t6
 # ["fields": "edgehash"]
 # ["exec_times": 56]
	lw	$a2,0($t7)
 # ["exec_times": 56]
	# .loc	2, 230
 # ["exec_times": 0]
	la	$t0,HashInsert
 # ["exec_times": 56]
	move	$a0,$v0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 56]
 # ["proc_name": "HashInsert"]
 # ["call_overhead": 44]
 # ["regs_used": 5 6 7]
	nop	
AddEdges.L9:
	li	$t8,1
 # ["exec_times": 64]
	addu	$s3,$s3,$t8
 # ["exec_times": 64]
	mult	$s1,$s0
	mflo	$t9
 # ["exec_times": 64]
	sle	$a0,$t9,$s3
 # ["exec_times": 64]
	beqz	$a0,AddEdges.L14
 # ["exec_times": 64]
 # ["instr_profile": 64 56]
	nop	
AddEdges.L17:
	j	AddEdges.__done15
 # ["exec_times": 8]
 # ["instr_profile": 8 8]
	nop	
AddEdges.L13:
	move	$s3,$zero
 # ["exec_times": 0]
AddEdges.__done15:
	# .loc	2, 233
 # ["exec_times": 0]
	li	$a1,1
 # ["exec_times": 8]
	addu	$s2,$s2,$a1
 # ["exec_times": 8]
	# .loc	2, 215
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 8]
	addu	$a3,$s5,$a2
 # ["fields": "next"]
 # ["exec_times": 8]
	lw	$s5,0($a3)
 # ["exec_times": 8]
	# .loc	2, 215
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 8]
	sne	$v1,$s5,$v0
 # ["exec_times": 8]
	bnez	$v1,AddEdges.L5
 # ["exec_times": 8]
 # ["instr_profile": 8 7]
	nop	
AddEdges.L6:
	cqip	AddEdges.L19
 # ["cqip_pos": <L:AddEdges.L19,0>]
AddEdges.L19:
	pslice_entry	AddEdges.L19
 # ["pslice_entry_pos": <L:AddEdges.L19,0>]
	pslice_exit	AddEdges.L19
 # ["pslice_exit_pos": <L:AddEdges.L19,0>]
	# .loc	2, 235
 # ["exec_times": 0]
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
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	AddEdges 
	.text	
	.align	2
	.align	2
	# .loc	2, 319
	.ent	BlueRule 
BlueRule:
	spawn	BlueRule.headerspawn
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
	sw	$s4,24($sp)
 # ["header/trailer":]
	.mask	0x801f0000, -320
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 320, $31
 # ["header/trailer":]
	cqip	BlueRule.headerspawn
 # ["header/trailer":]
BlueRule.headerspawn:
 # ["header/trailer":]
	pslice_entry	BlueRule.headerspawn
 # ["header/trailer":]
	la	$sp,-320($sp)
 # ["header/trailer":]
	pslice_exit	BlueRule.headerspawn
	spawn	BlueRule.spawntail0
	spawn	BlueRule.spawntail1
	move	$s2,$a0
	move	$s1,$a1
	move	$s0,$a2
	# .loc	2, 326
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 7]
	sne	$t1,$s0,$t0
 # ["exec_times": 7]
	move	$t2,$zero
 # ["exec_times": 7]
	seq	$t3,$t1,$t2
 # ["exec_times": 7]
	beqz	$t3,BlueRule.L1
 # ["exec_times": 7]
 # ["instr_profile": 7 7]
	nop	
	# .loc	2, 327
 # ["exec_times": 0]
	la	$t4,300($sp)
 # ["exec_times": 0]
	li	$t5,999999
 # ["exec_times": 0]
	sw	$t5,0($t4)
 # ["exec_times": 0]
	# .loc	2, 328
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$t6,296($sp)
 # ["struct alignment": 32]
	la	$t7,0($s2)
	lw	$t8,0($t6)
	lw	$t9,4($t6)
	sw	$t8,0($t7)
	sw	$t9,4($t7)
	# END structure move
	cqip	BlueRule.spawntail0
BlueRule.spawntail0:
	pslice_entry	BlueRule.spawntail0
	pslice_exit	BlueRule.spawntail0
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
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
BlueRule.L1:
	# .loc	2, 331
 # ["exec_times": 0]
	# .loc	2, 332
 # ["exec_times": 0]
	la	$a0,296($sp)
 # ["fields": "vert"]
 # ["exec_times": 7]
	sw	$s0,0($a0)
 # ["exec_times": 7]
	# .loc	2, 333
 # ["exec_times": 0]
	la	$a1,300($sp)
 # ["exec_times": 7]
	move	$a2,$zero
 # ["exec_times": 7]
	addu	$a3,$s0,$a2
 # ["fields": "mindist"]
 # ["exec_times": 7]
	lw	$v0,0($a3)
 # ["exec_times": 7]
	sw	$v0,0($a1)
 # ["exec_times": 7]
	# .loc	2, 334
 # ["exec_times": 0]
	li	$v1,8
 # ["exec_times": 7]
	addu	$t0,$s0,$v1
 # ["fields": "edgehash"]
 # ["exec_times": 7]
	lw	$a1,0($t0)
 # ["exec_times": 7]
	# .loc	2, 335
 # ["exec_times": 0]
	la	$t0,HashLookup
 # ["exec_times": 7]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 7]
 # ["proc_name": "HashLookup"]
 # ["call_overhead": 47]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 337
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 7]
	sne	$t2,$v0,$t1
 # ["exec_times": 7]
	beqz	$t2,BlueRule.L2
 # ["exec_times": 7]
 # ["instr_profile": 7 0]
	nop	
	# .loc	2, 339
 # ["exec_times": 0]
	la	$t3,300($sp)
 # ["exec_times": 7]
	lw	$t4,0($t3)
 # ["exec_times": 7]
	slt	$t5,$v0,$t4
 # ["exec_times": 7]
	beqz	$t5,BlueRule.__done12
 # ["exec_times": 7]
 # ["instr_profile": 7 4]
	nop	
	# .loc	2, 341
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 3]
	addu	$t7,$s0,$t6
 # ["fields": "mindist"]
 # ["exec_times": 3]
	sw	$v0,0($t7)
 # ["exec_times": 3]
	# .loc	2, 342
 # ["exec_times": 0]
	la	$t8,300($sp)
 # ["exec_times": 3]
	sw	$v0,0($t8)
 # ["exec_times": 3]
	j	BlueRule.__done12
 # ["exec_times": 3]
 # ["instr_profile": 3 3]
	nop	
BlueRule.L2:
	# .loc	2, 345
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
BlueRule.__done12:
	# .loc	2, 347
 # ["exec_times": 0]
	move	$s3,$zero
 # ["exec_times": 7]
	# .loc	2, 349
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 7]
	addu	$a0,$s0,$t9
 # ["fields": "next"]
 # ["exec_times": 7]
	lw	$s4,0($a0)
 # ["exec_times": 7]
	# .loc	2, 349
 # ["exec_times": 0]
	la	$a1,0($zero)
 # ["exec_times": 7]
	sne	$a2,$s4,$a1
 # ["exec_times": 7]
	beqz	$a2,BlueRule.L7
 # ["exec_times": 7]
 # ["instr_profile": 7 1]
	nop	
BlueRule.L6:
	# .loc	2, 351
 # ["exec_times": 0]
	li	$a3,1
 # ["exec_times": 26]
	addu	$s3,$s3,$a3
 # ["exec_times": 26]
	# .loc	2, 352
 # ["exec_times": 0]
	seq	$v0,$s4,$s1
 # ["exec_times": 26]
	beqz	$v0,BlueRule.L8
 # ["exec_times": 26]
 # ["instr_profile": 26 21]
	nop	
	# .loc	2, 356
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 5]
	addu	$t0,$s4,$v1
 # ["fields": "next"]
 # ["exec_times": 5]
	lw	$t1,0($t0)
 # ["exec_times": 5]
	# .loc	2, 357
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 5]
	addu	$t3,$s0,$t2
 # ["fields": "next"]
 # ["exec_times": 5]
	sw	$t1,0($t3)
 # ["exec_times": 5]
	j	BlueRule.__done14
 # ["exec_times": 5]
 # ["instr_profile": 5 5]
	nop	
BlueRule.L8:
	# .loc	2, 361
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 21]
	addu	$t5,$s4,$t4
 # ["fields": "edgehash"]
 # ["exec_times": 21]
	lw	$a1,0($t5)
 # ["exec_times": 21]
	# .loc	2, 362
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 21]
	addu	$t7,$s4,$t6
 # ["fields": "mindist"]
 # ["exec_times": 21]
	lw	$s0,0($t7)
 # ["exec_times": 21]
	# .loc	2, 363
 # ["exec_times": 0]
	la	$t0,HashLookup
 # ["exec_times": 21]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 21]
 # ["proc_name": "HashLookup"]
 # ["call_overhead": 39]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 365
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 21]
	sne	$t9,$v0,$t8
 # ["exec_times": 21]
	beqz	$t9,BlueRule.L9
 # ["exec_times": 21]
 # ["instr_profile": 21 0]
	nop	
	# .loc	2, 367
 # ["exec_times": 0]
	slt	$a0,$v0,$s0
 # ["exec_times": 21]
	beqz	$a0,BlueRule.__done13
 # ["exec_times": 21]
 # ["instr_profile": 21 9]
	nop	
	# .loc	2, 369
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 12]
	addu	$a2,$s4,$a1
 # ["fields": "mindist"]
 # ["exec_times": 12]
	sw	$v0,0($a2)
 # ["exec_times": 12]
	# .loc	2, 370
 # ["exec_times": 0]
	move	$s0,$v0
 # ["exec_times": 12]
	j	BlueRule.__done13
 # ["exec_times": 12]
 # ["instr_profile": 12 12]
	nop	
BlueRule.L9:
	# .loc	2, 373
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
BlueRule.__done13:
	# .loc	2, 374
 # ["exec_times": 0]
	la	$a3,300($sp)
 # ["exec_times": 21]
	lw	$v0,0($a3)
 # ["exec_times": 21]
	slt	$v1,$s0,$v0
 # ["exec_times": 21]
	beqz	$v1,BlueRule.__done14
 # ["exec_times": 21]
 # ["instr_profile": 21 11]
	nop	
	# .loc	2, 376
 # ["exec_times": 0]
	la	$t0,296($sp)
 # ["fields": "vert"]
 # ["exec_times": 10]
	sw	$s4,0($t0)
 # ["exec_times": 10]
	# .loc	2, 377
 # ["exec_times": 0]
	la	$t1,300($sp)
 # ["exec_times": 10]
	sw	$s0,0($t1)
 # ["exec_times": 10]
BlueRule.__done14:
	# .loc	2, 349
 # ["exec_times": 0]
	move	$s0,$s4
 # ["exec_times": 26]
	li	$t2,4
 # ["exec_times": 26]
	addu	$t3,$s4,$t2
 # ["fields": "next"]
 # ["exec_times": 26]
	lw	$s4,0($t3)
 # ["exec_times": 26]
	# .loc	2, 349
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 26]
	sne	$t5,$s4,$t4
 # ["exec_times": 26]
	bnez	$t5,BlueRule.L6
 # ["exec_times": 26]
 # ["instr_profile": 26 20]
	nop	
BlueRule.L7:
	# .loc	2, 382
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$t6,296($sp)
 # ["struct alignment": 32]
	la	$t7,0($s2)
	lw	$t8,0($t6)
	lw	$t9,4($t6)
	sw	$t8,0($t7)
	sw	$t9,4($t7)
	# END structure move
	cqip	BlueRule.spawntail1
BlueRule.spawntail1:
	pslice_entry	BlueRule.spawntail1
	pslice_exit	BlueRule.spawntail1
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
 # ["exec_times": 7]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	BlueRule 
	.text	
	.align	2
	.align	2
	# .loc	2, 389
	.ent	SetMyVertexList 
SetMyVertexList:
	spawn	SetMyVertexList.headerspawn
 # ["header/trailer":]
	la	$sp,-16($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 16, $31
 # ["header/trailer":]
	cqip	SetMyVertexList.headerspawn
 # ["header/trailer":]
SetMyVertexList.headerspawn:
 # ["header/trailer":]
	pslice_entry	SetMyVertexList.headerspawn
 # ["header/trailer":]
	la	$sp,-16($sp)
 # ["header/trailer":]
	pslice_exit	SetMyVertexList.headerspawn
	# .loc	2, 390
 # ["exec_times": 0]
	sw	$a0,MyVertexList
	# .loc	2, 391
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	SetMyVertexList 
	.text	
	.align	2
	.align	2
	# .loc	2, 393
	.ent	Do_all_BlueRule 
Do_all_BlueRule:
	spawn	Do_all_BlueRule.headerspawn
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
	sw	$s3,20($sp)
 # ["header/trailer":]
	sw	$s4,24($sp)
 # ["header/trailer":]
	.mask	0x801f0000, -200
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 200, $31
 # ["header/trailer":]
	cqip	Do_all_BlueRule.headerspawn
 # ["header/trailer":]
Do_all_BlueRule.headerspawn:
 # ["header/trailer":]
	pslice_entry	Do_all_BlueRule.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	pslice_exit	Do_all_BlueRule.headerspawn
	spawn	Do_all_BlueRule.spawntail2
	spawn	Do_all_BlueRule.spawntail3
	move	$s3,$a0
	move	$s2,$a1
	move	$s1,$a2
	move	$s0,$a3
	# .loc	2, 397
 # ["exec_times": 0]
	li	$a1,1
 # ["exec_times": 7]
	slt	$a2,$a1,$s1
 # ["exec_times": 7]
	beqz	$a2,Do_all_BlueRule.L1
 # ["exec_times": 7]
 # ["instr_profile": 7 7]
	nop	
	# .loc	2, 406
 # ["exec_times": 0]
	la	$s4,176($sp)
 # ["fields": "value"]
 # ["exec_times": 0]
	la	$t0,Do_all_BlueRule
 # ["exec_times": 0]
	li	$a3,2
 # ["exec_times": 0]
	div	$a2,$s1,$a3
 # ["exec_times": 0]
	li	$v0,2
 # ["exec_times": 0]
	div	$v1,$s1,$v0
 # ["exec_times": 0]
	addu	$a3,$s0,$v1
 # ["exec_times": 0]
	la	$a0,112($sp)
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "Do_all_BlueRule"]
 # ["regs_used": 5 6 7 8]
	nop	
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$t0,112($sp)
 # ["struct alignment": 32]
	la	$t1,0($s4)
	lw	$t2,0($t0)
	lw	$t3,4($t0)
	sw	$t2,0($t1)
	sw	$t3,4($t1)
	# END structure move
	# .loc	2, 407
 # ["exec_times": 0]
	la	$t0,Do_all_BlueRule
 # ["exec_times": 0]
	li	$t4,2
 # ["exec_times": 0]
	div	$a2,$s1,$t4
 # ["exec_times": 0]
	la	$a0,168($sp)
	move	$a1,$s2
	move	$a3,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "Do_all_BlueRule"]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 410
 # ["exec_times": 0]
	la	$t5,180($sp)
 # ["exec_times": 0]
	lw	$t6,0($t5)
 # ["exec_times": 0]
	la	$t7,172($sp)
 # ["exec_times": 0]
	lw	$t8,0($t7)
 # ["exec_times": 0]
	slt	$t9,$t6,$t8
 # ["exec_times": 0]
	beqz	$t9,Do_all_BlueRule.L2
 # ["exec_times": 0]
	nop	
	# .loc	2, 411
 # ["exec_times": 0]
	la	$a0,172($sp)
 # ["exec_times": 0]
	la	$a1,180($sp)
 # ["exec_times": 0]
	lw	$a2,0($a1)
 # ["exec_times": 0]
	sw	$a2,0($a0)
 # ["exec_times": 0]
	# .loc	2, 412
 # ["exec_times": 0]
	la	$a3,168($sp)
 # ["fields": "vert"]
 # ["exec_times": 0]
	la	$v0,176($sp)
 # ["fields": "value" "vert"]
 # ["exec_times": 0]
	lw	$v1,0($v0)
 # ["exec_times": 0]
	sw	$v1,0($a3)
 # ["exec_times": 0]
Do_all_BlueRule.L2:
	# .loc	2, 414
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$t0,168($sp)
 # ["struct alignment": 32]
	la	$t1,0($s3)
	lw	$t2,0($t0)
	lw	$t3,4($t0)
	sw	$t2,0($t1)
	sw	$t3,4($t1)
	# END structure move
	cqip	Do_all_BlueRule.spawntail2
Do_all_BlueRule.spawntail2:
	pslice_entry	Do_all_BlueRule.spawntail2
	pslice_exit	Do_all_BlueRule.spawntail2
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
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
Do_all_BlueRule.L1:
	# .loc	2, 417
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 7]
	sne	$a0,$s2,$t4
 # ["exec_times": 7]
	bnez	$a0,Do_all_BlueRule.L3
 # ["exec_times": 7]
 # ["instr_profile": 7 7]
	nop	
Do_all_BlueRule.L6:
	j	Do_all_BlueRule.__done1
 # ["exec_times": 0]
	nop	
Do_all_BlueRule.L3:
	lw	$t5,MyVertexList
	seq	$a0,$s2,$t5
 # ["exec_times": 7]
Do_all_BlueRule.__done1:
	beqz	$a0,Do_all_BlueRule.L4
 # ["exec_times": 7]
 # ["instr_profile": 7 6]
	nop	
	# .loc	2, 418
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 1]
	lw	$t7,MyVertexList
	addu	$t8,$t7,$t6
 # ["fields": "next"]
 # ["exec_times": 1]
	lw	$t9,0($t8)
 # ["exec_times": 1]
	sw	$t9,MyVertexList
Do_all_BlueRule.L4:
	# .loc	2, 419
 # ["exec_times": 0]
	la	$t0,BlueRule
 # ["exec_times": 7]
	la	$a0,32($sp)
	move	$a1,$s2
	lw	$a2,MyVertexList
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 7]
 # ["proc_name": "BlueRule"]
 # ["call_overhead": 168]
 # ["regs_used": 5 6 7]
	nop	
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$a0,32($sp)
 # ["struct alignment": 32]
	la	$a1,0($s3)
	lw	$a2,0($a0)
	lw	$a3,4($a0)
	sw	$a2,0($a1)
	sw	$a3,4($a1)
	# END structure move
	cqip	Do_all_BlueRule.spawntail3
Do_all_BlueRule.spawntail3:
	pslice_entry	Do_all_BlueRule.spawntail3
	pslice_exit	Do_all_BlueRule.spawntail3
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
 # ["exec_times": 7]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	Do_all_BlueRule 
	.text	
	.align	2
	.align	2
	# .loc	2, 424
	.ent	ComputeMst 
ComputeMst:
	spawn	ComputeMst.headerspawn
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
	sw	$s3,20($sp)
 # ["header/trailer":]
	sw	$s4,24($sp)
 # ["header/trailer":]
	.mask	0x801f0000, -160
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 160, $31
 # ["header/trailer":]
	cqip	ComputeMst.headerspawn
 # ["header/trailer":]
ComputeMst.headerspawn:
 # ["header/trailer":]
	pslice_entry	ComputeMst.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
 # ["header/trailer":]
	pslice_exit	ComputeMst.headerspawn
	spawn	ComputeMst.L5
 # ["cqip_pos": <L:ComputeMst.L5,0>]
	move	$s4,$a0
	move	$s3,$a1
	move	$s2,$a2
	# .loc	2, 427
 # ["exec_times": 0]
	move	$s1,$zero
 # ["exec_times": 1]
	# .loc	2, 433
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_6
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 447
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 1]
	addu	$t0,$s4,$t1
 # ["fields": "vlist"]
 # ["exec_times": 1]
	lw	$s0,0($t0)
 # ["exec_times": 1]
	# .loc	2, 448
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 1]
	addu	$t3,$s0,$t2
 # ["fields": "next"]
 # ["exec_times": 1]
	lw	$v0,0($t3)
 # ["exec_times": 1]
	# .loc	2, 449
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 1]
	addu	$v1,$s4,$t4
 # ["fields": "vlist"]
 # ["exec_times": 1]
	sw	$v0,0($v1)
 # ["exec_times": 1]
	# .loc	2, 450
 # ["exec_times": 0]
	sw	$v0,MyVertexList
	# .loc	2, 451
 # ["exec_times": 0]
	li	$t5,1
 # ["exec_times": 1]
	subu	$s2,$s2,$t5
 # ["exec_times": 1]
	# .loc	2, 454
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_7
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	cqip	ComputeMst.L5
 # ["cqip_pos": <L:ComputeMst.L5,0>]
ComputeMst.L5:
	pslice_entry	ComputeMst.L5
 # ["pslice_entry_pos": <L:ComputeMst.L5,0>]
	pslice_exit	ComputeMst.L5
 # ["pslice_exit_pos": <L:ComputeMst.L5,0>]
	# .loc	2, 455
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 1]
	sne	$t7,$s2,$t6
 # ["exec_times": 1]
	beqz	$t7,ComputeMst.L1
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
ComputeMst.L4:
	spawn	ComputeMst.L6
 # ["cqip_pos": <L:ComputeMst.L6,0>]
	# .loc	2, 459
 # ["exec_times": 0]
	la	$t0,Do_all_BlueRule
 # ["exec_times": 7]
	move	$a3,$zero
 # ["exec_times": 7]
	la	$a0,120($sp)
	move	$a1,$s0
	move	$a2,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 7]
 # ["proc_name": "Do_all_BlueRule"]
 # ["call_overhead": 180]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 460
 # ["exec_times": 0]
	la	$t8,120($sp)
 # ["fields": "vert"]
 # ["exec_times": 7]
	lw	$s0,0($t8)
 # ["exec_times": 7]
	# .loc	2, 461
 # ["exec_times": 0]
	la	$t9,124($sp)
 # ["exec_times": 7]
	lw	$a0,0($t9)
 # ["exec_times": 7]
	# .loc	2, 462
 # ["exec_times": 0]
	li	$a1,1
 # ["exec_times": 7]
	subu	$s2,$s2,$a1
 # ["exec_times": 7]
	# .loc	2, 463
 # ["exec_times": 0]
	addu	$s1,$s1,$a0
 # ["exec_times": 7]
	move	$a2,$zero
 # ["exec_times": 7]
	sne	$a3,$s2,$a2
 # ["exec_times": 7]
	bnez	$a3,ComputeMst.L4
 # ["exec_times": 7]
 # ["instr_profile": 7 6]
	nop	
ComputeMst.L1:
	cqip	ComputeMst.L6
 # ["cqip_pos": <L:ComputeMst.L6,0>]
ComputeMst.L6:
	pslice_entry	ComputeMst.L6
 # ["pslice_entry_pos": <L:ComputeMst.L6,0>]
	pslice_exit	ComputeMst.L6
 # ["pslice_exit_pos": <L:ComputeMst.L6,0>]
	# .loc	2, 465
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	ComputeMst 
	.text	
	.align	2
	.align	2
	.globl	MakeHash
	# .loc	2, 93
	.ent	MakeHash 
MakeHash:
	spawn	MakeHash.headerspawn
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
	sw	$s3,20($sp)
 # ["header/trailer":]
	.mask	0x800f0000, -152
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 152, $31
 # ["header/trailer":]
	cqip	MakeHash.headerspawn
 # ["header/trailer":]
MakeHash.headerspawn:
 # ["header/trailer":]
	pslice_entry	MakeHash.headerspawn
 # ["header/trailer":]
	la	$sp,-152($sp)
 # ["header/trailer":]
	pslice_exit	MakeHash.headerspawn
	move	$s0,$a0
	move	$s3,$a1
	spawn	MakeHash.L7
 # ["cqip_pos": <L:MakeHash.L7,0>]
	# .loc	2, 97
 # ["exec_times": 0]
	la	$t0,localmalloc
 # ["exec_times": 8]
	li	$a0,12
 # ["exec_times": 8]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 8]
 # ["proc_name": "localmalloc"]
 # ["call_overhead": 6]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s2,$v0
 # ["exec_times": 8]
	# .loc	2, 98
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 8]
	addu	$s1,$s2,$v0
 # ["fields": "array"]
 # ["exec_times": 8]
	la	$t0,localmalloc
 # ["exec_times": 8]
	li	$v1,4
 # ["exec_times": 8]
	multu	$s0,$v1
	mflo	$a0
 # ["exec_times": 8]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 8]
 # ["proc_name": "localmalloc"]
 # ["call_overhead": 6]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	cqip	MakeHash.L7
 # ["cqip_pos": <L:MakeHash.L7,0>]
MakeHash.L7:
	pslice_entry	MakeHash.L7
 # ["pslice_entry_pos": <L:MakeHash.L7,0>]
	pslice_exit	MakeHash.L7
 # ["pslice_exit_pos": <L:MakeHash.L7,0>]
	sw	$v0,0($s1)
 # ["exec_times": 8]
	# .loc	2, 99
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 8]
	slt	$t1,$t0,$s0
 # ["exec_times": 8]
	beqz	$t1,MakeHash.L3
 # ["exec_times": 8]
 # ["instr_profile": 8 0]
	nop	
	move	$t2,$zero
 # ["exec_times": 8]
MakeHash.L4:
	# .loc	2, 100
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 16]
	addu	$t4,$s2,$t3
 # ["fields": "array"]
 # ["exec_times": 16]
	lw	$t5,0($t4)
 # ["exec_times": 16]
	li	$t6,4
 # ["exec_times": 16]
	mult	$t2,$t6
	mflo	$t7
 # ["exec_times": 16]
	addu	$t8,$t5,$t7
 # ["exec_times": 16]
	la	$t9,0($zero)
 # ["exec_times": 16]
	sw	$t9,0($t8)
 # ["exec_times": 16]
	li	$a0,1
 # ["exec_times": 16]
	addu	$t2,$t2,$a0
 # ["exec_times": 16]
	sle	$a1,$s0,$t2
 # ["exec_times": 16]
	beqz	$a1,MakeHash.L4
 # ["exec_times": 16]
 # ["instr_profile": 16 8]
	nop	
MakeHash.L6:
	j	MakeHash.__done5
 # ["exec_times": 8]
 # ["instr_profile": 8 8]
	nop	
MakeHash.L3:
	move	$t2,$zero
 # ["exec_times": 0]
MakeHash.__done5:
	# .loc	2, 101
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 8]
	addu	$a3,$s2,$a2
 # ["fields": "mapfunc"]
 # ["exec_times": 8]
	sw	$s3,0($a3)
 # ["exec_times": 8]
	# .loc	2, 102
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 8]
	addu	$v1,$s2,$v0
 # ["fields": "size"]
 # ["exec_times": 8]
	sw	$s0,0($v1)
 # ["exec_times": 8]
	# .loc	2, 104
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
 # ["exec_times": 8]
 # ["instr_ret": t:g47]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	MakeHash 
	.text	
	.align	2
	.align	2
	.globl	HashLookup
	# .loc	2, 108
	.ent	HashLookup 
HashLookup:
	spawn	HashLookup.headerspawn
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
	.mask	0x80030000, -144
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 144, $31
 # ["header/trailer":]
	cqip	HashLookup.headerspawn
 # ["header/trailer":]
HashLookup.headerspawn:
 # ["header/trailer":]
	pslice_entry	HashLookup.headerspawn
 # ["header/trailer":]
	la	$sp,-144($sp)
 # ["header/trailer":]
	pslice_exit	HashLookup.headerspawn
	spawn	HashLookup.L11
 # ["cqip_pos": <L:HashLookup.L11,0>]
	move	$s0,$a0
	move	$s1,$a1
	# .loc	2, 112
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 28]
	addu	$t2,$s1,$t1
 # ["fields": "mapfunc"]
 # ["exec_times": 28]
	lw	$t0,0($t2)
 # ["exec_times": 28]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 28]
 # ["call_overhead": 6]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 116
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 28]
	addu	$t4,$s1,$t3
 # ["fields": "array"]
 # ["exec_times": 28]
	lw	$t5,0($t4)
 # ["exec_times": 28]
	li	$t6,4
 # ["exec_times": 28]
	mult	$v0,$t6
	mflo	$t7
 # ["exec_times": 28]
	addu	$t8,$t5,$t7
 # ["exec_times": 28]
	lw	$t9,0($t8)
 # ["exec_times": 28]
	# .loc	2, 117
 # ["exec_times": 0]
	la	$a0,0($zero)
 # ["exec_times": 28]
	sne	$t0,$t9,$a0
 # ["exec_times": 28]
	bnez	$t0,HashLookup.L1_1
 # ["exec_times": 28]
 # ["instr_profile": 28 28]
	nop	
HashLookup.L9:
	j	HashLookup.__done7
 # ["exec_times": 0]
	nop	
HashLookup.L1_1:
	move	$a1,$zero
 # ["exec_times": 28]
	addu	$a2,$t9,$a1
 # ["fields": "key"]
 # ["exec_times": 28]
	lw	$a3,0($a2)
 # ["exec_times": 28]
	sne	$t0,$a3,$s0
 # ["exec_times": 28]
HashLookup.__done7:
	cqip	HashLookup.L11
 # ["cqip_pos": <L:HashLookup.L11,0>]
HashLookup.L11:
	pslice_entry	HashLookup.L11
 # ["pslice_entry_pos": <L:HashLookup.L11,0>]
	pslice_exit	HashLookup.L11
 # ["pslice_exit_pos": <L:HashLookup.L11,0>]
	beqz	$t0,HashLookup.L5
 # ["exec_times": 28]
 # ["instr_profile": 28 9]
	nop	
HashLookup.L4:
	# .loc	2, 119
 # ["exec_times": 0]
	# .loc	2, 119
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 35]
	addu	$v1,$t9,$v0
 # ["fields": "next"]
 # ["exec_times": 35]
	lw	$t9,0($v1)
 # ["exec_times": 35]
	# .loc	2, 117
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 35]
	sne	$t0,$t9,$t0
 # ["exec_times": 35]
	bnez	$t0,HashLookup.L1
 # ["exec_times": 35]
 # ["instr_profile": 35 35]
	nop	
HashLookup.L10:
	j	HashLookup.__done8
 # ["exec_times": 0]
	nop	
HashLookup.L1:
	move	$t1,$zero
 # ["exec_times": 35]
	addu	$t2,$t9,$t1
 # ["fields": "key"]
 # ["exec_times": 35]
	lw	$t3,0($t2)
 # ["exec_times": 35]
	sne	$t0,$t3,$s0
 # ["exec_times": 35]
HashLookup.__done8:
	bnez	$t0,HashLookup.L4
 # ["exec_times": 35]
 # ["instr_profile": 35 16]
	nop	
HashLookup.L5:
	# .loc	2, 120
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 28]
	sne	$t5,$t9,$t4
 # ["exec_times": 28]
	beqz	$t5,HashLookup.L6
 # ["exec_times": 28]
 # ["instr_profile": 28 0]
	nop	
	# .loc	2, 120
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 28]
	addu	$t7,$t9,$t6
 # ["fields": "entry"]
 # ["exec_times": 28]
	lw	$v0,0($t7)
 # ["exec_times": 28]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 28]
 # ["instr_ret": t:g29]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
HashLookup.L6:
	# .loc	2, 121
 # ["exec_times": 0]
	la	$v0,0($zero)
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
 # ["instr_ret": t:g29]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	HashLookup 
	.text	
	.align	2
	.align	2
	.globl	HashInsert
	# .loc	2, 125
	.ent	HashInsert 
HashInsert:
	spawn	HashInsert.headerspawn
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
	sw	$s3,20($sp)
 # ["header/trailer":]
	.mask	0x800f0000, -152
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 152, $31
 # ["header/trailer":]
	cqip	HashInsert.headerspawn
 # ["header/trailer":]
HashInsert.headerspawn:
 # ["header/trailer":]
	pslice_entry	HashInsert.headerspawn
 # ["header/trailer":]
	la	$sp,-152($sp)
 # ["header/trailer":]
	pslice_exit	HashInsert.headerspawn
	spawn	HashInsert.L1
 # ["cqip_pos": <L:HashInsert.L1,0>]
	move	$s3,$a0
	move	$s2,$a1
	move	$s1,$a2
	# .loc	2, 131
 # ["exec_times": 0]
	li	$t8,4
 # ["exec_times": 56]
	addu	$t9,$s1,$t8
 # ["fields": "mapfunc"]
 # ["exec_times": 56]
	lw	$t0,0($t9)
 # ["exec_times": 56]
	move	$a0,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 56]
 # ["call_overhead": 6]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	cqip	HashInsert.L1
 # ["cqip_pos": <L:HashInsert.L1,0>]
HashInsert.L1:
	pslice_entry	HashInsert.L1
 # ["pslice_entry_pos": <L:HashInsert.L1,0>]
	pslice_exit	HashInsert.L1
 # ["pslice_exit_pos": <L:HashInsert.L1,0>]
	move	$s0,$v0
	# .loc	2, 132
 # ["exec_times": 0]
	la	$t0,localmalloc
 # ["exec_times": 56]
	li	$a0,12
 # ["exec_times": 56]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 56]
 # ["proc_name": "localmalloc"]
 # ["call_overhead": 6]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 133
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 56]
	addu	$a1,$v0,$a0
 # ["fields": "next"]
 # ["exec_times": 56]
	move	$a2,$zero
 # ["exec_times": 56]
	addu	$a3,$s1,$a2
 # ["fields": "array"]
 # ["exec_times": 56]
	lw	$v1,0($a3)
 # ["exec_times": 56]
	li	$t0,4
 # ["exec_times": 56]
	mult	$s0,$t0
	mflo	$t0
 # ["exec_times": 56]
	addu	$t1,$v1,$t0
 # ["exec_times": 56]
	lw	$t2,0($t1)
 # ["exec_times": 56]
	sw	$t2,0($a1)
 # ["exec_times": 56]
	# .loc	2, 134
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 56]
	addu	$t4,$s1,$t3
 # ["fields": "array"]
 # ["exec_times": 56]
	lw	$t5,0($t4)
 # ["exec_times": 56]
	li	$t6,4
 # ["exec_times": 56]
	mult	$s0,$t6
	mflo	$t7
 # ["exec_times": 56]
	addu	$t8,$t5,$t7
 # ["exec_times": 56]
	sw	$v0,0($t8)
 # ["exec_times": 56]
	# .loc	2, 135
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 56]
	addu	$a0,$v0,$t9
 # ["fields": "key"]
 # ["exec_times": 56]
	sw	$s2,0($a0)
 # ["exec_times": 56]
	# .loc	2, 136
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 56]
	addu	$a2,$v0,$a1
 # ["fields": "entry"]
 # ["exec_times": 56]
	sw	$s3,0($a2)
 # ["exec_times": 56]
	# .loc	2, 137
 # ["exec_times": 0]
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
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	HashInsert 
	.text	
	.align	2
	.align	2
	.globl	HashDelete
	# .loc	2, 140
	.ent	HashDelete 
HashDelete:
	spawn	HashDelete.headerspawn
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
	.mask	0x80030000, -152
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 152, $31
 # ["header/trailer":]
	cqip	HashDelete.headerspawn
 # ["header/trailer":]
HashDelete.headerspawn:
 # ["header/trailer":]
	pslice_entry	HashDelete.headerspawn
 # ["header/trailer":]
	la	$sp,-152($sp)
 # ["header/trailer":]
	pslice_exit	HashDelete.headerspawn
	move	$s0,$a0
	move	$s1,$a1
	# .loc	2, 145
 # ["exec_times": 0]
	li	$v0,4
 # ["exec_times": 0]
	addu	$v1,$s1,$v0
 # ["fields": "mapfunc"]
 # ["exec_times": 0]
	lw	$t0,0($v1)
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 146
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 0]
	addu	$t1,$s1,$t0
 # ["fields": "array"]
 # ["exec_times": 0]
	lw	$t2,0($t1)
 # ["exec_times": 0]
	li	$t3,4
 # ["exec_times": 0]
	mult	$v0,$t3
	mflo	$t4
 # ["exec_times": 0]
	addu	$t5,$t2,$t4
 # ["exec_times": 0]
	# .loc	2, 146
 # ["exec_times": 0]
	lw	$t6,0($t5)
 # ["exec_times": 0]
	la	$t7,0($zero)
 # ["exec_times": 0]
	sne	$a3,$t6,$t7
 # ["exec_times": 0]
	bnez	$a3,HashDelete.L1_1
 # ["exec_times": 0]
	nop	
HashDelete.L8:
	j	HashDelete.__done6
 # ["exec_times": 0]
	nop	
HashDelete.L1_1:
	spawn	HashDelete.L10
 # ["cqip_pos": <L:HashDelete.L10,0>]
	lw	$t8,0($t5)
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
	addu	$a0,$t8,$t9
 # ["fields": "key"]
 # ["exec_times": 0]
	lw	$a1,0($a0)
 # ["exec_times": 0]
	sne	$a3,$a1,$s0
 # ["exec_times": 0]
HashDelete.__done6:
	cqip	HashDelete.L10
 # ["cqip_pos": <L:HashDelete.L10,0>]
HashDelete.L10:
	pslice_entry	HashDelete.L10
 # ["pslice_entry_pos": <L:HashDelete.L10,0>]
	pslice_exit	HashDelete.L10
 # ["pslice_exit_pos": <L:HashDelete.L10,0>]
	beqz	$a3,HashDelete.L5
 # ["exec_times": 0]
	nop	
HashDelete.L4:
	# .loc	2, 146
 # ["exec_times": 0]
	# .loc	2, 146
 # ["exec_times": 0]
	lw	$a2,0($t5)
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	addu	$t5,$a2,$a3
 # ["fields": "next"]
 # ["exec_times": 0]
	# .loc	2, 146
 # ["exec_times": 0]
	lw	$v0,0($t5)
 # ["exec_times": 0]
	la	$v1,0($zero)
 # ["exec_times": 0]
	sne	$a3,$v0,$v1
 # ["exec_times": 0]
	bnez	$a3,HashDelete.L1
 # ["exec_times": 0]
	nop	
HashDelete.L9:
	j	HashDelete.__done7
 # ["exec_times": 0]
	nop	
HashDelete.L1:
	lw	$t0,0($t5)
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$t0,$t1
 # ["fields": "key"]
 # ["exec_times": 0]
	lw	$t3,0($t2)
 # ["exec_times": 0]
	sne	$a3,$t3,$s0
 # ["exec_times": 0]
HashDelete.__done7:
	bnez	$a3,HashDelete.L4
 # ["exec_times": 0]
	nop	
HashDelete.L5:
	# .loc	2, 148
 # ["exec_times": 0]
	lw	$t4,0($t5)
 # ["exec_times": 0]
	# .loc	2, 149
 # ["exec_times": 0]
	lw	$t6,0($t5)
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 0]
	addu	$t7,$t6,$t7
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t8,0($t7)
 # ["exec_times": 0]
	sw	$t8,0($t5)
 # ["exec_times": 0]
	# .loc	2, 151
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
	.end	HashDelete 
	.text	
	.align	2
	.align	2
	.globl	MakeGraph
	# .loc	2, 238
	.ent	MakeGraph 
MakeGraph:
	spawn	MakeGraph.headerspawn
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
	cqip	MakeGraph.headerspawn
 # ["header/trailer":]
MakeGraph.headerspawn:
 # ["header/trailer":]
	pslice_entry	MakeGraph.headerspawn
 # ["header/trailer":]
	la	$sp,-352($sp)
 # ["header/trailer":]
	pslice_exit	MakeGraph.headerspawn
	spawn	MakeGraph.L22
 # ["cqip_pos": <L:MakeGraph.L22,0>]
	move	$s2,$a0
	move	$s1,$a1
	# .loc	2, 239
 # ["exec_times": 0]
	div	$s3,$s2,$s1
 # ["exec_times": 1]
	# .loc	2, 248
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 1]
	li	$a0,4
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
 # ["exec_times": 1]
	# .loc	2, 249
 # ["exec_times": 0]
	move	$s7,$zero
 # ["exec_times": 1]
MakeGraph.L9:
	# .loc	2, 251
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 1]
	mult	$s7,$t9
	mflo	$a0
 # ["exec_times": 1]
	addu	$a1,$s0,$a0
 # ["exec_times": 1]
	la	$a2,0($zero)
 # ["exec_times": 1]
	sw	$a2,0($a1)
 # ["exec_times": 1]
	li	$a3,1
 # ["exec_times": 1]
	addu	$s7,$s7,$a3
 # ["exec_times": 1]
	li	$v0,1
 # ["exec_times": 1]
	sle	$v1,$v0,$s7
 # ["exec_times": 1]
	beqz	$v1,MakeGraph.L9
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	cqip	MakeGraph.L22
 # ["cqip_pos": <L:MakeGraph.L22,0>]
MakeGraph.L22:
	pslice_entry	MakeGraph.L22
 # ["pslice_entry_pos": <L:MakeGraph.L22,0>]
	pslice_exit	MakeGraph.L22
 # ["pslice_exit_pos": <L:MakeGraph.L22,0>]
	spawn	MakeGraph.L23
 # ["cqip_pos": <L:MakeGraph.L23,0>]
	# .loc	2, 253
 # ["exec_times": 0]
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
	# .loc	2, 254
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 1]
	li	$t1,1
 # ["exec_times": 1]
	subu	$t2,$s1,$t1
 # ["exec_times": 1]
	sle	$t3,$t0,$t2
 # ["exec_times": 1]
	beqz	$t3,MakeGraph.L13
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	li	$t4,1
 # ["exec_times": 1]
	subu	$s4,$s1,$t4
 # ["exec_times": 1]
MakeGraph.L14:
	# .loc	2, 256
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 1]
	li	$t5,12
 # ["exec_times": 1]
	multu	$s3,$t5
	mflo	$a0
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,316($sp)
	# .loc	2, 257
 # ["exec_times": 0]
	la	$s5,0($zero)
 # ["exec_times": 1]
	# .loc	2, 258
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 1]
	slt	$t7,$t6,$s3
 # ["exec_times": 1]
	beqz	$t7,MakeGraph.L10
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	move	$s7,$zero
 # ["exec_times": 1]
MakeGraph.L11:
	# .loc	2, 261
 # ["exec_times": 0]
	li	$t8,12
 # ["exec_times": 8]
	subu	$t9,$s3,$s7
 # ["exec_times": 8]
	li	$a0,1
 # ["exec_times": 8]
	subu	$a1,$t9,$a0
 # ["exec_times": 8]
	mult	$t8,$a1
	mflo	$a2
 # ["exec_times": 8]
	lw	$a0,316($sp)
	addu	$s6,$a2,$a0
 # ["exec_times": 8]
	# .loc	2, 262
 # ["exec_times": 0]
	li	$a3,4
 # ["exec_times": 8]
	div	$v0,$s2,$a3
 # ["exec_times": 8]
	sw	$v0,HashRange
	# .loc	2, 263
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 8]
	addu	$t0,$s6,$v1
 # ["fields": "mindist"]
 # ["exec_times": 8]
	li	$t1,9999999
 # ["exec_times": 8]
	sw	$t1,0($t0)
 # ["exec_times": 8]
	# .loc	2, 264
 # ["exec_times": 0]
	li	$t2,8
 # ["exec_times": 8]
	addu	$t9,$s6,$t2
 # ["fields": "edgehash"]
 # ["exec_times": 8]
	sw	$t9,156($sp)
	la	$t0,MakeHash
 # ["exec_times": 8]
	li	$t3,4
 # ["exec_times": 8]
	div	$a0,$s2,$t3
 # ["exec_times": 8]
	la	$a1,hashfunc
 # ["exec_times": 8]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 8]
 # ["proc_name": "MakeHash"]
 # ["call_overhead": 62]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	lw	$t8,156($sp)
	sw	$v0,0($t8)
 # ["exec_times": 8]
	# .loc	2, 265
 # ["exec_times": 0]
	li	$t4,4
 # ["exec_times": 8]
	addu	$t5,$s6,$t4
 # ["fields": "next"]
 # ["exec_times": 8]
	sw	$s5,0($t5)
 # ["exec_times": 8]
	# .loc	2, 266
 # ["exec_times": 0]
	move	$s5,$s6
 # ["exec_times": 8]
	li	$t6,1
 # ["exec_times": 8]
	addu	$s7,$s7,$t6
 # ["exec_times": 8]
	sle	$t7,$s3,$s7
 # ["exec_times": 8]
	beqz	$t7,MakeGraph.L11
 # ["exec_times": 8]
 # ["instr_profile": 8 7]
	nop	
MakeGraph.L19:
	j	MakeGraph.__done12
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
MakeGraph.L10:
	move	$s7,$zero
 # ["exec_times": 0]
MakeGraph.__done12:
	# .loc	2, 269
 # ["exec_times": 0]
	li	$t8,4
 # ["exec_times": 1]
	mult	$s4,$t8
	mflo	$t9
 # ["exec_times": 1]
	addu	$a0,$s0,$t9
 # ["exec_times": 1]
	sw	$s5,0($a0)
 # ["exec_times": 1]
	li	$a1,-1
 # ["exec_times": 1]
	addu	$s4,$s4,$a1
 # ["exec_times": 1]
	move	$a2,$zero
 # ["exec_times": 1]
	slt	$a3,$s4,$a2
 # ["exec_times": 1]
	beqz	$a3,MakeGraph.L14
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
MakeGraph.L20:
	j	MakeGraph.__done15
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
MakeGraph.L13:
	li	$v0,1
 # ["exec_times": 0]
	subu	$s4,$s1,$v0
 # ["exec_times": 0]
MakeGraph.__done15:
	cqip	MakeGraph.L23
 # ["cqip_pos": <L:MakeGraph.L23,0>]
MakeGraph.L23:
	pslice_entry	MakeGraph.L23
 # ["pslice_entry_pos": <L:MakeGraph.L23,0>]
	pslice_exit	MakeGraph.L23
 # ["pslice_exit_pos": <L:MakeGraph.L23,0>]
	spawn	MakeGraph.L24
 # ["cqip_pos": <L:MakeGraph.L24,0>]
	# .loc	2, 272
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
	# .loc	2, 273
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 1]
	li	$t0,1
 # ["exec_times": 1]
	subu	$t1,$s1,$t0
 # ["exec_times": 1]
	sle	$t2,$v1,$t1
 # ["exec_times": 1]
	beqz	$t2,MakeGraph.L16
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	li	$t3,1
 # ["exec_times": 1]
	subu	$s4,$s1,$t3
 # ["exec_times": 1]
MakeGraph.L17:
	# .loc	2, 275
 # ["exec_times": 0]
	mult	$s4,$s3
	mflo	$a0
 # ["exec_times": 1]
	# .loc	2, 278
 # ["exec_times": 0]
	la	$t0,AddEdges
 # ["exec_times": 1]
	move	$a1,$s0
	move	$a2,$s1
	move	$a3,$s3
	move	$fp,$sp
	fst	$sp
	sw	$s2,-20($sp)
	sw	$s4,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "AddEdges"]
 # ["call_overhead": 5710]
 # ["regs_used": 5 6 7 8]
	nop	
	li	$t4,-1
 # ["exec_times": 1]
	addu	$s4,$s4,$t4
 # ["exec_times": 1]
	move	$t5,$zero
 # ["exec_times": 1]
	slt	$t6,$s4,$t5
 # ["exec_times": 1]
	beqz	$t6,MakeGraph.L17
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
MakeGraph.L21:
	j	MakeGraph.__done18
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
MakeGraph.L16:
	li	$t7,1
 # ["exec_times": 0]
	subu	$s4,$s1,$t7
 # ["exec_times": 0]
MakeGraph.__done18:
	cqip	MakeGraph.L24
 # ["cqip_pos": <L:MakeGraph.L24,0>]
MakeGraph.L24:
	pslice_entry	MakeGraph.L24
 # ["pslice_entry_pos": <L:MakeGraph.L24,0>]
	pslice_exit	MakeGraph.L24
 # ["pslice_exit_pos": <L:MakeGraph.L24,0>]
	# .loc	2, 283
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
	# .loc	2, 291
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
	# .loc	2, 292
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
 # ["exec_times": 1]
 # ["instr_ret": t:g56]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	MakeGraph 
	.text	
	.align	2
	.align	2
	.globl	dealwithargs
	# .loc	2, 36
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
	# .loc	2, 40
 # ["exec_times": 0]
	li	$a1,2
 # ["exec_times": 1]
	slt	$a2,$a1,$a0
 # ["exec_times": 1]
	bnez	$a2,dealwithargs.__done3
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 43
 # ["exec_times": 0]
	li	$a3,1
 # ["exec_times": 1]
	sw	$a3,NumNodes
dealwithargs.__done3:
	# .loc	2, 53
 # ["exec_times": 0]
	li	$v1,1
 # ["exec_times": 1]
	slt	$v1,$v1,$a0
 # ["exec_times": 1]
	bnez	$v1,dealwithargs.__done4
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 56
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 1]
dealwithargs.__done4:
	# .loc	2, 59
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
	.globl	entry
	# .loc	2, 469
	.ent	entry 
entry:
	spawn	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -96
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 96, $31
 # ["header/trailer":]
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L1
 # ["cqip_pos": <L:entry.L1,0>]
	# .loc	2, 482
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
	# .loc	2, 483
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_8
 # ["exec_times": 1]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
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
	# .loc	2, 486
 # ["exec_times": 0]
	la	$t0,MakeGraph
 # ["exec_times": 1]
	move	$a0,$s0
	lw	$a1,NumNodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "MakeGraph"]
 # ["call_overhead": 6514]
 # ["regs_used": 5 6]
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
	move	$s1,$v0
	# .loc	2, 490
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_9
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 498
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_10
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 501
 # ["exec_times": 0]
	la	$t0,ComputeMst
 # ["exec_times": 1]
	move	$a0,$s1
	lw	$a1,NumNodes
	move	$a2,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "ComputeMst"]
 # ["call_overhead": 2560]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L3
 # ["cqip_pos": <L:entry.L3,0>]
entry.L3:
	pslice_entry	entry.L3
 # ["pslice_entry_pos": <L:entry.L3,0>]
	pslice_exit	entry.L3
 # ["pslice_exit_pos": <L:entry.L3,0>]
	# .loc	2, 510
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_11
 # ["exec_times": 1]
	move	$a1,$v0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 519
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
	# .loc	2, 520
 # ["exec_times": 0]
	move	$v0,$zero
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
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	entry 
