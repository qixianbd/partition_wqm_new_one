	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc12376_0.i /home/keyming/Prophet/testcase/em3d/em3d.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/em3d/em3d.snt /home/keyming/Prophet/testcase/em3d/em3d.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/em3d/em3d.temp1 /home/keyming/Prophet/testcase/em3d/em3d.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/em3d/em3d.temp2 /home/keyming/Prophet/testcase/em3d/em3d.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/em3d/em3d.temp3 /home/keyming/Prophet/testcase/em3d/em3d.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/em3d/em3d.temp4 /home/keyming/Prophet/testcase/em3d/em3d.snp
	# history:  transform_print /home/keyming/Prophet/testcase/em3d/em3d.snp /home/keyming/Prophet/testcase/em3d/em3d.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/em3d/em3d.tp /home/keyming/Prophet/testcase/em3d/em3d.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/em3d/em3d.iocal /home/keyming/Prophet/testcase/em3d/em3d.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/em3d/em3d.bore /home/keyming/Prophet/testcase/em3d/em3d.porky
	# history:  suifvm /home/keyming/Prophet/testcase/em3d/em3d.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/em3d/em3d.pf /home/keyming/Prophet/testcase/em3d/em3d.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/em3d/em3d.swig /home/keyming/Prophet/testcase/em3d/em3d.mgen
	# history:  raga /home/keyming/Prophet/testcase/em3d/em3d.mgen /home/keyming/Prophet/testcase/em3d/em3d.raga
	# history:  partition /home/keyming/Prophet/testcase/em3d/em3d.sche /home/keyming/Prophet/testcase/em3d/em3d.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/em3d/em3d.par /home/keyming/Prophet/testcase/em3d/em3d.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/em3d/em3d.mfin /home/keyming/Prophet/testcase/em3d/em3d.nop
	# history:  transform_main /home/keyming/Prophet/testcase/em3d/em3d.nop /home/keyming/Prophet/testcase/em3d/em3d.entry
	# history:  printmachine /home/keyming/Prophet/testcase/em3d/em3d.entry /home/keyming/Prophet/testcase/em3d/em3d.s
	.set	noreorder
	.comm	n_nodes, 4
	.comm	d_nodes, 4
	.comm	iters, 4
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"initializing graph ...\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"dealwithargs ...\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"print graph ...\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_3:
	.ascii	"E: value %f, from_count %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_4:
	.ascii	"H: value %f, from_count %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_5:
	.ascii	"Completed a computation phase: %d\012\000"
	.file	2 "/home/keyming/Prophet/testcase/em3d/em3d.c"
	.text	
	.align	2
	.align	2
	.globl	compute_nodes
	# .loc	2, 4
	.ent	compute_nodes 
compute_nodes:
	spawn	compute_nodes.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 200, $31
 # ["header/trailer":]
	cqip	compute_nodes.headerspawn
 # ["header/trailer":]
compute_nodes.headerspawn:
 # ["header/trailer":]
	pslice_entry	compute_nodes.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	pslice_exit	compute_nodes.headerspawn
	# .loc	2, 7
 # ["exec_times": 0]
	# .loc	2, 7
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 60]
	sne	$t1,$a0,$t0
 # ["exec_times": 60]
	beqz	$t1,compute_nodes.L4
 # ["exec_times": 60]
 # ["instr_profile": 60 0]
	nop	
compute_nodes.L3:
	# .loc	2, 8
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 600]
	li	$t3,24
 # ["exec_times": 600]
	addu	$t4,$a0,$t3
 # ["fields": "from_count"]
 # ["exec_times": 600]
	lw	$t5,0($t4)
 # ["exec_times": 600]
	slt	$t6,$t2,$t5
 # ["exec_times": 600]
	beqz	$t6,compute_nodes.L7
 # ["exec_times": 600]
 # ["instr_profile": 600 0]
	nop	
	move	$t7,$zero
 # ["exec_times": 600]
compute_nodes.L8:
	# .loc	2, 8
 # ["exec_times": 0]
	# .loc	2, 9
 # ["exec_times": 0]
	li	$t8,16
 # ["exec_times": 1800]
	addu	$t9,$a0,$t8
 # ["fields": "from_nodes"]
 # ["exec_times": 1800]
	lw	$a1,0($t9)
 # ["exec_times": 1800]
	li	$a2,4
 # ["exec_times": 1800]
	mult	$t7,$a2
	mflo	$a2
 # ["exec_times": 1800]
	addu	$a3,$a1,$a2
 # ["exec_times": 1800]
	lw	$v0,0($a3)
 # ["exec_times": 1800]
	# .loc	2, 10
 # ["exec_times": 0]
	li	$v1,20
 # ["exec_times": 1800]
	addu	$t0,$a0,$v1
 # ["fields": "coeffs"]
 # ["exec_times": 1800]
	lw	$t1,0($t0)
 # ["exec_times": 1800]
	li	$t2,8
 # ["exec_times": 1800]
	mult	$t7,$t2
	mflo	$t3
 # ["exec_times": 1800]
	addu	$t4,$t1,$t3
 # ["exec_times": 1800]
	l.d	$f8,0($t4)
 # ["exec_times": 1800]
	# .loc	2, 11
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 1800]
	addu	$t6,$v0,$t5
 # ["fields": "value"]
 # ["exec_times": 1800]
	l.d	$f10,0($t6)
 # ["exec_times": 1800]
	# .loc	2, 13
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 1800]
	addu	$t8,$a0,$t8
 # ["fields": "value"]
 # ["exec_times": 1800]
	l.d	$f16,0($t8)
 # ["exec_times": 1800]
	mul.d	$f18,$f8,$f10
 # ["exec_times": 1800]
	sub.d	$f12,$f16,$f18
 # ["exec_times": 1800]
	s.d	$f12,0($t8)
 # ["exec_times": 1800]
	li	$t9,1
 # ["exec_times": 1800]
	addu	$t7,$t7,$t9
 # ["exec_times": 1800]
	li	$a1,24
 # ["exec_times": 1800]
	addu	$a1,$a0,$a1
 # ["fields": "from_count"]
 # ["exec_times": 1800]
	lw	$a2,0($a1)
 # ["exec_times": 1800]
	sle	$a3,$a2,$t7
 # ["exec_times": 1800]
	beqz	$a3,compute_nodes.L8
 # ["exec_times": 1800]
 # ["instr_profile": 1800 1200]
	nop	
compute_nodes.L10:
	j	compute_nodes.__done9
 # ["exec_times": 600]
 # ["instr_profile": 600 600]
	nop	
compute_nodes.L7:
	move	$t7,$zero
 # ["exec_times": 0]
compute_nodes.__done9:
	# .loc	2, 8
 # ["exec_times": 0]
	# .loc	2, 7
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 600]
	addu	$v1,$a0,$v0
 # ["fields": "next"]
 # ["exec_times": 600]
	lw	$a0,0($v1)
 # ["exec_times": 600]
	# .loc	2, 7
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 600]
	sne	$t1,$a0,$t0
 # ["exec_times": 600]
	bnez	$t1,compute_nodes.L3
 # ["exec_times": 600]
 # ["instr_profile": 600 540]
	nop	
compute_nodes.L4:
	# .loc	2, 15
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 60]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	compute_nodes 
	.text	
	.align	2
	.align	2
	.globl	initialize_graph
	# .loc	2, 230
	.ent	initialize_graph 
initialize_graph:
	spawn	initialize_graph.headerspawn
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
	cqip	initialize_graph.headerspawn
 # ["header/trailer":]
initialize_graph.headerspawn:
 # ["header/trailer":]
	pslice_entry	initialize_graph.headerspawn
 # ["header/trailer":]
	la	$sp,-152($sp)
 # ["header/trailer":]
	pslice_exit	initialize_graph.headerspawn
	spawn	initialize_graph.L1
 # ["cqip_pos": <L:initialize_graph.L1,0>]
	move	$s2,$a0
	# .loc	2, 235
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
	# .loc	2, 237
 # ["exec_times": 0]
	la	$t0,make_table
 # ["exec_times": 1]
	lw	$a0,n_nodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "make_table"]
 # ["call_overhead": 7]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	cqip	initialize_graph.L1
 # ["cqip_pos": <L:initialize_graph.L1,0>]
initialize_graph.L1:
	pslice_entry	initialize_graph.L1
 # ["pslice_entry_pos": <L:initialize_graph.L1,0>]
	pslice_exit	initialize_graph.L1
 # ["pslice_exit_pos": <L:initialize_graph.L1,0>]
	spawn	initialize_graph.L2
 # ["cqip_pos": <L:initialize_graph.L2,0>]
	move	$s1,$v0
	# .loc	2, 238
 # ["exec_times": 0]
	la	$t0,fill_table
 # ["exec_times": 1]
	move	$a0,$s1
	lw	$a1,n_nodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "fill_table"]
 # ["call_overhead": 543]
 # ["regs_used": 5 6]
	nop	
	cqip	initialize_graph.L2
 # ["cqip_pos": <L:initialize_graph.L2,0>]
initialize_graph.L2:
	pslice_entry	initialize_graph.L2
 # ["pslice_entry_pos": <L:initialize_graph.L2,0>]
	pslice_exit	initialize_graph.L2
 # ["pslice_exit_pos": <L:initialize_graph.L2,0>]
	spawn	initialize_graph.L3
 # ["cqip_pos": <L:initialize_graph.L3,0>]
	# .loc	2, 241
 # ["exec_times": 0]
	la	$t0,make_table
 # ["exec_times": 1]
	lw	$a0,n_nodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "make_table"]
 # ["call_overhead": 7]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
	# .loc	2, 242
 # ["exec_times": 0]
	la	$t0,fill_table
 # ["exec_times": 1]
	move	$a0,$s0
	lw	$a1,n_nodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "fill_table"]
 # ["call_overhead": 543]
 # ["regs_used": 5 6]
	nop	
	cqip	initialize_graph.L3
 # ["cqip_pos": <L:initialize_graph.L3,0>]
initialize_graph.L3:
	pslice_entry	initialize_graph.L3
 # ["pslice_entry_pos": <L:initialize_graph.L3,0>]
	pslice_exit	initialize_graph.L3
 # ["pslice_exit_pos": <L:initialize_graph.L3,0>]
	spawn	initialize_graph.L4
 # ["cqip_pos": <L:initialize_graph.L4,0>]
	# .loc	2, 246
 # ["exec_times": 0]
	la	$t0,make_neighbors
 # ["exec_times": 1]
	lw	$a0,0($s1)
 # ["exec_times": 1]
	move	$a1,$s0
	lw	$a2,n_nodes
	lw	$a3,d_nodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "make_neighbors"]
 # ["call_overhead": 1695]
 # ["regs_used": 5 6 7 8]
	nop	
	cqip	initialize_graph.L4
 # ["cqip_pos": <L:initialize_graph.L4,0>]
initialize_graph.L4:
	pslice_entry	initialize_graph.L4
 # ["pslice_entry_pos": <L:initialize_graph.L4,0>]
	pslice_exit	initialize_graph.L4
 # ["pslice_exit_pos": <L:initialize_graph.L4,0>]
	spawn	initialize_graph.L5
 # ["cqip_pos": <L:initialize_graph.L5,0>]
	# .loc	2, 247
 # ["exec_times": 0]
	la	$t0,make_neighbors
 # ["exec_times": 1]
	lw	$a0,0($s0)
 # ["exec_times": 1]
	move	$a1,$s1
	lw	$a2,n_nodes
	lw	$a3,d_nodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "make_neighbors"]
 # ["call_overhead": 1777]
 # ["regs_used": 5 6 7 8]
	nop	
	cqip	initialize_graph.L5
 # ["cqip_pos": <L:initialize_graph.L5,0>]
initialize_graph.L5:
	pslice_entry	initialize_graph.L5
 # ["pslice_entry_pos": <L:initialize_graph.L5,0>]
	pslice_exit	initialize_graph.L5
 # ["pslice_exit_pos": <L:initialize_graph.L5,0>]
	spawn	initialize_graph.L6
 # ["cqip_pos": <L:initialize_graph.L6,0>]
	# .loc	2, 250
 # ["exec_times": 0]
	la	$t0,update_from_coeffs
 # ["exec_times": 1]
	lw	$a0,0($s1)
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "update_from_coeffs"]
 # ["call_overhead": 1025]
 # ["regs_used": 5]
	nop	
	cqip	initialize_graph.L6
 # ["cqip_pos": <L:initialize_graph.L6,0>]
initialize_graph.L6:
	pslice_entry	initialize_graph.L6
 # ["pslice_entry_pos": <L:initialize_graph.L6,0>]
	pslice_exit	initialize_graph.L6
 # ["pslice_exit_pos": <L:initialize_graph.L6,0>]
	spawn	initialize_graph.L7
 # ["cqip_pos": <L:initialize_graph.L7,0>]
	# .loc	2, 251
 # ["exec_times": 0]
	la	$t0,update_from_coeffs
 # ["exec_times": 1]
	lw	$a0,0($s0)
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "update_from_coeffs"]
 # ["call_overhead": 1025]
 # ["regs_used": 5]
	nop	
	cqip	initialize_graph.L7
 # ["cqip_pos": <L:initialize_graph.L7,0>]
initialize_graph.L7:
	pslice_entry	initialize_graph.L7
 # ["pslice_entry_pos": <L:initialize_graph.L7,0>]
	pslice_exit	initialize_graph.L7
 # ["pslice_exit_pos": <L:initialize_graph.L7,0>]
	spawn	initialize_graph.L8
 # ["cqip_pos": <L:initialize_graph.L8,0>]
	# .loc	2, 254
 # ["exec_times": 0]
	la	$t0,fill_from_fields
 # ["exec_times": 1]
	lw	$a0,0($s1)
 # ["exec_times": 1]
	lw	$a1,d_nodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "fill_from_fields"]
 # ["call_overhead": 925]
 # ["regs_used": 5 6]
	nop	
	cqip	initialize_graph.L8
 # ["cqip_pos": <L:initialize_graph.L8,0>]
initialize_graph.L8:
	pslice_entry	initialize_graph.L8
 # ["pslice_entry_pos": <L:initialize_graph.L8,0>]
	pslice_exit	initialize_graph.L8
 # ["pslice_exit_pos": <L:initialize_graph.L8,0>]
	spawn	initialize_graph.L9
 # ["cqip_pos": <L:initialize_graph.L9,0>]
	# .loc	2, 255
 # ["exec_times": 0]
	la	$t0,fill_from_fields
 # ["exec_times": 1]
	lw	$a0,0($s0)
 # ["exec_times": 1]
	lw	$a1,d_nodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "fill_from_fields"]
 # ["call_overhead": 925]
 # ["regs_used": 5 6]
	nop	
	cqip	initialize_graph.L9
 # ["cqip_pos": <L:initialize_graph.L9,0>]
initialize_graph.L9:
	pslice_entry	initialize_graph.L9
 # ["pslice_entry_pos": <L:initialize_graph.L9,0>]
	pslice_exit	initialize_graph.L9
 # ["pslice_exit_pos": <L:initialize_graph.L9,0>]
	# .loc	2, 257
 # ["exec_times": 0]
	la	$t7,128($sp)
 # ["fields": "e_nodes"]
 # ["exec_times": 1]
	lw	$t8,0($s0)
 # ["exec_times": 1]
	sw	$t8,0($t7)
 # ["exec_times": 1]
	# .loc	2, 258
 # ["exec_times": 0]
	la	$t9,132($sp)
 # ["exec_times": 1]
	lw	$a0,0($s1)
 # ["exec_times": 1]
	sw	$a0,0($t9)
 # ["exec_times": 1]
	# .loc	2, 260
 # ["exec_times": 0]
	la	$t0,free
 # ["exec_times": 1]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "free"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 261
 # ["exec_times": 0]
	la	$t0,free
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "free"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 263
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$a1,128($sp)
 # ["struct alignment": 32]
	la	$a2,0($s2)
	lw	$a3,0($a1)
	lw	$v0,4($a1)
	sw	$a3,0($a2)
	sw	$v0,4($a2)
	# END structure move
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
 # ["exec_times": 1]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	initialize_graph 
	.text	
	.align	2
	.align	2
	.globl	lrand48
	# .loc	2, 82
	.ent	lrand48 
lrand48:
	spawn	lrand48.headerspawn
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
	cqip	lrand48.headerspawn
 # ["header/trailer":]
lrand48.headerspawn:
 # ["header/trailer":]
	pslice_entry	lrand48.headerspawn
 # ["header/trailer":]
	la	$sp,-24($sp)
 # ["header/trailer":]
	pslice_exit	lrand48.headerspawn
	# .loc	2, 83
 # ["exec_times": 0]
	la	$t0,rand
 # ["exec_times": 62]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 62]
 # ["proc_name": "rand"]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 84
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 62]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	lrand48 
	.text	
	.align	2
	.align	2
	.globl	drand48
	# .loc	2, 73
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
	# .loc	2, 76
 # ["exec_times": 0]
	la	$t0,rand
 # ["exec_times": 80]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 80]
 # ["proc_name": "rand"]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	mtc1	$v0,$f4
	cvt.d.w	$f6,$f4
 # ["exec_times": 80]
	li.d	$f8,3.276700000000000000e+04
 # ["exec_times": 80]
	div.d	$f0,$f6,$f8
 # ["exec_times": 80]
	# .loc	2, 77
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 80]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	drand48 
	.text	
	.align	2
	.align	2
	.globl	srand48
	# .loc	2, 88
	.ent	srand48 
srand48:
	spawn	srand48.headerspawn
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
	cqip	srand48.headerspawn
 # ["header/trailer":]
srand48.headerspawn:
 # ["header/trailer":]
	pslice_entry	srand48.headerspawn
 # ["header/trailer":]
	la	$sp,-24($sp)
 # ["header/trailer":]
	pslice_exit	srand48.headerspawn
	# .loc	2, 89
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
	# .loc	2, 90
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
	.end	srand48 
	.text	
	.align	2
	.align	2
	.globl	init_random
	# .loc	2, 21
	.ent	init_random 
init_random:
	spawn	init_random.headerspawn
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
	cqip	init_random.headerspawn
 # ["header/trailer":]
init_random.headerspawn:
 # ["header/trailer":]
	pslice_entry	init_random.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	pslice_exit	init_random.headerspawn
	# .loc	2, 22
 # ["exec_times": 0]
	la	$t0,srand48
 # ["exec_times": 0]
	li	$t3,45
 # ["exec_times": 0]
	mult	$a0,$t3
	mflo	$a0
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "srand48"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 23
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
	.end	init_random 
	.text	
	.align	2
	.align	2
	.globl	gen_number
	# .loc	2, 27
	.ent	gen_number 
gen_number:
	spawn	gen_number.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -32
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 32, $31
 # ["header/trailer":]
	cqip	gen_number.headerspawn
 # ["header/trailer":]
gen_number.headerspawn:
 # ["header/trailer":]
	pslice_entry	gen_number.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	pslice_exit	gen_number.headerspawn
	move	$s0,$a0
	# .loc	2, 28
 # ["exec_times": 0]
	la	$t0,lrand48
 # ["exec_times": 62]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 62]
 # ["proc_name": "lrand48"]
 # ["call_overhead": 3]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	rem	$v0,$v0,$s0
 # ["exec_times": 62]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 62]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	gen_number 
	.text	
	.align	2
	.align	2
	.globl	gen_signed_number
	# .loc	2, 33
	.ent	gen_signed_number 
gen_signed_number:
	spawn	gen_signed_number.headerspawn
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
	cqip	gen_signed_number.headerspawn
 # ["header/trailer":]
gen_signed_number.headerspawn:
 # ["header/trailer":]
	pslice_entry	gen_signed_number.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	gen_signed_number.headerspawn
	move	$s0,$a0
	# .loc	2, 36
 # ["exec_times": 0]
	la	$t0,lrand48
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "lrand48"]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	li	$t4,2
 # ["exec_times": 0]
	mult	$t4,$s0
	mflo	$t5
 # ["exec_times": 0]
	li	$t6,1
 # ["exec_times": 0]
	subu	$t7,$t5,$t6
 # ["exec_times": 0]
	rem	$t8,$v0,$t7
 # ["exec_times": 0]
	# .loc	2, 37
 # ["exec_times": 0]
	li	$t9,1
 # ["exec_times": 0]
	subu	$a0,$s0,$t9
 # ["exec_times": 0]
	subu	$v0,$t8,$a0
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
	.end	gen_signed_number 
	.text	
	.align	2
	.align	2
	.globl	gen_uniform_double
	# .loc	2, 42
	.ent	gen_uniform_double 
gen_uniform_double:
	spawn	gen_uniform_double.headerspawn
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
	cqip	gen_uniform_double.headerspawn
 # ["header/trailer":]
gen_uniform_double.headerspawn:
 # ["header/trailer":]
	pslice_entry	gen_uniform_double.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	pslice_exit	gen_uniform_double.headerspawn
	# .loc	2, 43
 # ["exec_times": 0]
	la	$t0,drand48
 # ["exec_times": 80]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 80]
 # ["proc_name": "drand48"]
 # ["call_overhead": 6]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 80]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	gen_uniform_double 
	.text	
	.align	2
	.align	2
	.globl	check_percent
	# .loc	2, 47
	.ent	check_percent 
check_percent:
	spawn	check_percent.headerspawn
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
	cqip	check_percent.headerspawn
 # ["header/trailer":]
check_percent.headerspawn:
 # ["header/trailer":]
	pslice_entry	check_percent.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	check_percent.headerspawn
	move	$s0,$a0
	# .loc	2, 48
 # ["exec_times": 0]
	la	$t0,drand48
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "drand48"]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	mtc1	$s0,$f4
	cvt.d.w	$f6,$f4
 # ["exec_times": 0]
	li.d	$f8,1.000000000000000000e+02
 # ["exec_times": 0]
	div.d	$f10,$f6,$f8
 # ["exec_times": 0]
	li	$v0,1
	c.lt.d	$f0,$f10
 # ["exec_times": 0]
	bc1t	check_percent.L1
	nop	
	move	$v0,$zero
check_percent.L1:
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
	.end	check_percent 
	.text	
	.align	2
	.align	2
	.globl	make_table
	# .loc	2, 146
	.ent	make_table 
make_table:
	spawn	make_table.headerspawn
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
	cqip	make_table.headerspawn
 # ["header/trailer":]
make_table.headerspawn:
 # ["header/trailer":]
	pslice_entry	make_table.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	pslice_exit	make_table.headerspawn
	# .loc	2, 149
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 2]
	li	$t4,4
 # ["exec_times": 2]
	multu	$a0,$t4
	mflo	$a0
 # ["exec_times": 2]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 2]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 151
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 2]
 # ["instr_ret": t:g44]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	make_table 
	.text	
	.align	2
	.align	2
	.globl	fill_table
	# .loc	2, 155
	.ent	fill_table 
fill_table:
	spawn	fill_table.headerspawn
 # ["header/trailer":]
	la	$sp,-248($sp)
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
	.mask	0x800f0000, -248
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 248, $31
 # ["header/trailer":]
	cqip	fill_table.headerspawn
 # ["header/trailer":]
fill_table.headerspawn:
 # ["header/trailer":]
	pslice_entry	fill_table.headerspawn
 # ["header/trailer":]
	la	$sp,-248($sp)
 # ["header/trailer":]
	pslice_exit	fill_table.headerspawn
	spawn	fill_table.spawntail0
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 159
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 2]
	slt	$t6,$t5,$s0
 # ["exec_times": 2]
	beqz	$t6,fill_table.L4
 # ["exec_times": 2]
 # ["instr_profile": 2 0]
	nop	
	move	$s2,$zero
 # ["exec_times": 2]
fill_table.L5:
	# .loc	2, 160
 # ["exec_times": 0]
	li	$t7,4
 # ["exec_times": 20]
	mult	$s2,$t7
	mflo	$t8
 # ["exec_times": 20]
	addu	$s3,$s1,$t8
 # ["exec_times": 20]
	la	$t0,malloc
 # ["exec_times": 20]
	li	$a0,32
 # ["exec_times": 20]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 20]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s3)
 # ["exec_times": 20]
	# .loc	2, 161
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 20]
	mult	$s2,$t9
	mflo	$a0
 # ["exec_times": 20]
	addu	$a1,$s1,$a0
 # ["exec_times": 20]
	lw	$a2,0($a1)
 # ["exec_times": 20]
	move	$a3,$zero
 # ["exec_times": 20]
	addu	$s3,$a2,$a3
 # ["fields": "value"]
 # ["exec_times": 20]
	la	$t0,gen_uniform_double
 # ["exec_times": 20]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 20]
 # ["proc_name": "gen_uniform_double"]
 # ["call_overhead": 9]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	s.d	$f0,0($s3)
 # ["exec_times": 20]
	# .loc	2, 162
 # ["exec_times": 0]
	li	$v0,4
 # ["exec_times": 20]
	mult	$s2,$v0
	mflo	$v1
 # ["exec_times": 20]
	addu	$t0,$s1,$v1
 # ["exec_times": 20]
	lw	$t1,0($t0)
 # ["exec_times": 20]
	li	$t2,24
 # ["exec_times": 20]
	addu	$t3,$t1,$t2
 # ["fields": "from_count"]
 # ["exec_times": 20]
	move	$t4,$zero
 # ["exec_times": 20]
	sw	$t4,0($t3)
 # ["exec_times": 20]
	# .loc	2, 164
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 20]
	slt	$t6,$t5,$s2
 # ["exec_times": 20]
	beqz	$t6,fill_table.L3
 # ["exec_times": 20]
 # ["instr_profile": 20 2]
	nop	
	# .loc	2, 165
 # ["exec_times": 0]
	li	$t7,4
 # ["exec_times": 18]
	mult	$s2,$t7
	mflo	$t8
 # ["exec_times": 18]
	li	$t9,4
 # ["exec_times": 18]
	subu	$a0,$t8,$t9
 # ["exec_times": 18]
	addu	$a1,$s1,$a0
 # ["exec_times": 18]
	lw	$a2,0($a1)
 # ["exec_times": 18]
	li	$a3,8
 # ["exec_times": 18]
	addu	$v0,$a2,$a3
 # ["fields": "next"]
 # ["exec_times": 18]
	li	$v1,4
 # ["exec_times": 18]
	mult	$s2,$v1
	mflo	$t0
 # ["exec_times": 18]
	addu	$t1,$s1,$t0
 # ["exec_times": 18]
	lw	$t2,0($t1)
 # ["exec_times": 18]
	sw	$t2,0($v0)
 # ["exec_times": 18]
fill_table.L3:
	li	$t3,1
 # ["exec_times": 20]
	addu	$s2,$s2,$t3
 # ["exec_times": 20]
	sle	$t4,$s0,$s2
 # ["exec_times": 20]
	beqz	$t4,fill_table.L5
 # ["exec_times": 20]
 # ["instr_profile": 20 18]
	nop	
fill_table.L7:
	j	fill_table.__done6
 # ["exec_times": 2]
 # ["instr_profile": 2 2]
	nop	
fill_table.L4:
	move	$s2,$zero
 # ["exec_times": 0]
fill_table.__done6:
	# .loc	2, 167
 # ["exec_times": 0]
	li	$t5,4
 # ["exec_times": 2]
	mult	$s0,$t5
	mflo	$t6
 # ["exec_times": 2]
	li	$t7,4
 # ["exec_times": 2]
	subu	$t8,$t6,$t7
 # ["exec_times": 2]
	addu	$t9,$s1,$t8
 # ["exec_times": 2]
	lw	$a0,0($t9)
 # ["exec_times": 2]
	li	$a1,8
 # ["exec_times": 2]
	addu	$a2,$a0,$a1
 # ["fields": "next"]
 # ["exec_times": 2]
	la	$a3,0($zero)
 # ["exec_times": 2]
	sw	$a3,0($a2)
 # ["exec_times": 2]
	# .loc	2, 168
 # ["exec_times": 0]
	cqip	fill_table.spawntail0
fill_table.spawntail0:
	pslice_entry	fill_table.spawntail0
	pslice_exit	fill_table.spawntail0
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
 # ["exec_times": 2]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	fill_table 
	.text	
	.align	2
	.align	2
	.globl	make_neighbors
	# .loc	2, 172
	.ent	make_neighbors 
make_neighbors:
	spawn	make_neighbors.headerspawn
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
	sw	$s2,16($sp)
 # ["header/trailer":]
	sw	$s3,20($sp)
 # ["header/trailer":]
	sw	$s4,24($sp)
 # ["header/trailer":]
	sw	$s5,28($sp)
 # ["header/trailer":]
	.mask	0x803f0000, -256
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 256, $31
 # ["header/trailer":]
	cqip	make_neighbors.headerspawn
 # ["header/trailer":]
make_neighbors.headerspawn:
 # ["header/trailer":]
	pslice_entry	make_neighbors.headerspawn
 # ["header/trailer":]
	la	$sp,-256($sp)
 # ["header/trailer":]
	pslice_exit	make_neighbors.headerspawn
	spawn	make_neighbors.spawntail1
	move	$s3,$a1
	move	$s2,$a2
	move	$s1,$a3
	# .loc	2, 175
 # ["exec_times": 0]
	move	$s0,$a0
 # ["exec_times": 2]
	# .loc	2, 175
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 2]
	sne	$t1,$s0,$t0
 # ["exec_times": 2]
	beqz	$t1,make_neighbors.L4
 # ["exec_times": 2]
 # ["instr_profile": 2 0]
	nop	
make_neighbors.L3:
	# .loc	2, 179
 # ["exec_times": 0]
	li	$t2,12
 # ["exec_times": 20]
	addu	$s4,$s0,$t2
 # ["fields": "to_nodes"]
 # ["exec_times": 20]
	la	$t0,malloc
 # ["exec_times": 20]
	li	$t3,4
 # ["exec_times": 20]
	multu	$s1,$t3
	mflo	$a0
 # ["exec_times": 20]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 20]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s4)
 # ["exec_times": 20]
	# .loc	2, 181
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 20]
	slt	$t5,$t4,$s1
 # ["exec_times": 20]
	beqz	$t5,make_neighbors.L15
 # ["exec_times": 20]
 # ["instr_profile": 20 0]
	nop	
	move	$s4,$zero
 # ["exec_times": 20]
	# .loc	2, 181
 # ["exec_times": 0]
make_neighbors.L9:
	# .loc	2, 184
 # ["exec_times": 0]
	la	$t0,gen_number
 # ["exec_times": 62]
	move	$a0,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 62]
 # ["proc_name": "gen_number"]
 # ["call_overhead": 7]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	li	$t6,4
 # ["exec_times": 62]
	mult	$v0,$t6
	mflo	$t7
 # ["exec_times": 62]
	addu	$t8,$s3,$t7
 # ["exec_times": 62]
	lw	$s5,0($t8)
 # ["exec_times": 62]
	# .loc	2, 185
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 62]
	slt	$a0,$t9,$s4
 # ["exec_times": 62]
	beqz	$a0,make_neighbors.L13
 # ["exec_times": 62]
 # ["instr_profile": 62 20]
	nop	
	move	$a1,$zero
 # ["exec_times": 42]
make_neighbors.L14:
	# .loc	2, 186
 # ["exec_times": 0]
	li	$a2,12
 # ["exec_times": 64]
	addu	$a3,$s0,$a2
 # ["fields": "to_nodes"]
 # ["exec_times": 64]
	lw	$v0,0($a3)
 # ["exec_times": 64]
	li	$v1,4
 # ["exec_times": 64]
	mult	$a1,$v1
	mflo	$t0
 # ["exec_times": 64]
	addu	$t1,$v0,$t0
 # ["exec_times": 64]
	lw	$t2,0($t1)
 # ["exec_times": 64]
	seq	$t3,$s5,$t2
 # ["exec_times": 64]
	bnez	$t3,make_neighbors.__done15
 # ["exec_times": 64]
 # ["instr_profile": 64 2]
	nop	
	# .loc	2, 187
 # ["exec_times": 0]
	li	$t4,1
 # ["exec_times": 62]
	addu	$a1,$a1,$t4
 # ["exec_times": 62]
	sle	$t5,$s4,$a1
 # ["exec_times": 62]
	beqz	$t5,make_neighbors.L14
 # ["exec_times": 62]
 # ["instr_profile": 62 22]
	nop	
make_neighbors.L16:
	j	make_neighbors.__done15
 # ["exec_times": 40]
 # ["instr_profile": 40 40]
	nop	
make_neighbors.L13:
	move	$a1,$zero
 # ["exec_times": 20]
make_neighbors.__done15:
	# .loc	2, 185
 # ["exec_times": 0]
	slt	$t6,$a1,$s4
 # ["exec_times": 62]
	bnez	$t6,make_neighbors.L9
 # ["exec_times": 62]
 # ["instr_profile": 62 2]
	nop	
	# .loc	2, 190
 # ["exec_times": 0]
	li	$t7,12
 # ["exec_times": 60]
	addu	$t8,$s0,$t7
 # ["fields": "to_nodes"]
 # ["exec_times": 60]
	lw	$t9,0($t8)
 # ["exec_times": 60]
	li	$a0,4
 # ["exec_times": 60]
	mult	$s4,$a0
	mflo	$a1
 # ["exec_times": 60]
	addu	$a2,$t9,$a1
 # ["exec_times": 60]
	sw	$s5,0($a2)
 # ["exec_times": 60]
	# .loc	2, 191
 # ["exec_times": 0]
	li	$a3,24
 # ["exec_times": 60]
	addu	$v0,$s5,$a3
 # ["fields": "from_count"]
 # ["exec_times": 60]
	lw	$v1,0($v0)
 # ["exec_times": 60]
	li	$t0,1
 # ["exec_times": 60]
	addu	$t1,$v1,$t0
 # ["exec_times": 60]
	sw	$t1,0($v0)
 # ["exec_times": 60]
	li	$t2,1
 # ["exec_times": 60]
	addu	$s4,$s4,$t2
 # ["exec_times": 60]
	sle	$t3,$s1,$s4
 # ["exec_times": 60]
	beqz	$t3,make_neighbors.L9
 # ["exec_times": 60]
 # ["instr_profile": 60 40]
	nop	
make_neighbors.L17:
	j	make_neighbors.__done17
 # ["exec_times": 20]
 # ["instr_profile": 20 20]
	nop	
make_neighbors.L15:
	move	$s4,$zero
 # ["exec_times": 0]
make_neighbors.__done17:
	# .loc	2, 181
 # ["exec_times": 0]
	# .loc	2, 175
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 20]
	addu	$t5,$s0,$t4
 # ["fields": "next"]
 # ["exec_times": 20]
	lw	$s0,0($t5)
 # ["exec_times": 20]
	# .loc	2, 175
 # ["exec_times": 0]
	la	$t6,0($zero)
 # ["exec_times": 20]
	sne	$t7,$s0,$t6
 # ["exec_times": 20]
	bnez	$t7,make_neighbors.L3
 # ["exec_times": 20]
 # ["instr_profile": 20 18]
	nop	
make_neighbors.L4:
	# .loc	2, 194
 # ["exec_times": 0]
	cqip	make_neighbors.spawntail1
make_neighbors.spawntail1:
	pslice_entry	make_neighbors.spawntail1
	pslice_exit	make_neighbors.spawntail1
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
 # ["exec_times": 2]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	make_neighbors 
	.text	
	.align	2
	.align	2
	.globl	update_from_coeffs
	# .loc	2, 197
	.ent	update_from_coeffs 
update_from_coeffs:
	spawn	update_from_coeffs.headerspawn
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
	.mask	0x800f0000, -208
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 208, $31
 # ["header/trailer":]
	cqip	update_from_coeffs.headerspawn
 # ["header/trailer":]
update_from_coeffs.headerspawn:
 # ["header/trailer":]
	pslice_entry	update_from_coeffs.headerspawn
 # ["header/trailer":]
	la	$sp,-208($sp)
 # ["header/trailer":]
	pslice_exit	update_from_coeffs.headerspawn
	spawn	update_from_coeffs.spawntail2
	# .loc	2, 201
 # ["exec_times": 0]
	move	$s0,$a0
 # ["exec_times": 2]
	# .loc	2, 201
 # ["exec_times": 0]
	la	$t8,0($zero)
 # ["exec_times": 2]
	sne	$t9,$s0,$t8
 # ["exec_times": 2]
	beqz	$t9,update_from_coeffs.L4
 # ["exec_times": 2]
 # ["instr_profile": 2 0]
	nop	
update_from_coeffs.L3:
	# .loc	2, 202
 # ["exec_times": 0]
	li	$a0,24
 # ["exec_times": 20]
	addu	$a1,$s0,$a0
 # ["fields": "from_count"]
 # ["exec_times": 20]
	lw	$s1,0($a1)
 # ["exec_times": 20]
	# .loc	2, 205
 # ["exec_times": 0]
	li	$a2,16
 # ["exec_times": 20]
	addu	$s2,$s0,$a2
 # ["fields": "from_nodes"]
 # ["exec_times": 20]
	la	$t0,malloc
 # ["exec_times": 20]
	li	$a3,4
 # ["exec_times": 20]
	multu	$s1,$a3
	mflo	$a0
 # ["exec_times": 20]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 20]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s2)
 # ["exec_times": 20]
	# .loc	2, 207
 # ["exec_times": 0]
	li	$v0,20
 # ["exec_times": 20]
	addu	$s2,$s0,$v0
 # ["fields": "coeffs"]
 # ["exec_times": 20]
	la	$t0,malloc
 # ["exec_times": 20]
	li	$v1,8
 # ["exec_times": 20]
	multu	$s1,$v1
	mflo	$a0
 # ["exec_times": 20]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 20]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s2)
 # ["exec_times": 20]
	# .loc	2, 208
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 20]
	slt	$t1,$t0,$s1
 # ["exec_times": 20]
	beqz	$t1,update_from_coeffs.L7
 # ["exec_times": 20]
 # ["instr_profile": 20 0]
	nop	
	move	$s2,$zero
 # ["exec_times": 20]
update_from_coeffs.L8:
	# .loc	2, 209
 # ["exec_times": 0]
	li	$t2,20
 # ["exec_times": 60]
	addu	$t3,$s0,$t2
 # ["fields": "coeffs"]
 # ["exec_times": 60]
	lw	$t4,0($t3)
 # ["exec_times": 60]
	li	$t5,8
 # ["exec_times": 60]
	mult	$s2,$t5
	mflo	$t6
 # ["exec_times": 60]
	addu	$s3,$t4,$t6
 # ["exec_times": 60]
	la	$t0,gen_uniform_double
 # ["exec_times": 60]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 60]
 # ["proc_name": "gen_uniform_double"]
 # ["call_overhead": 9]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	s.d	$f0,0($s3)
 # ["exec_times": 60]
	li	$t7,1
 # ["exec_times": 60]
	addu	$s2,$s2,$t7
 # ["exec_times": 60]
	sle	$t8,$s1,$s2
 # ["exec_times": 60]
	beqz	$t8,update_from_coeffs.L8
 # ["exec_times": 60]
 # ["instr_profile": 60 40]
	nop	
update_from_coeffs.L9:
	j	update_from_coeffs.__done9
 # ["exec_times": 20]
 # ["instr_profile": 20 20]
	nop	
update_from_coeffs.L7:
	move	$s2,$zero
 # ["exec_times": 0]
update_from_coeffs.__done9:
	# .loc	2, 211
 # ["exec_times": 0]
	li	$t9,24
 # ["exec_times": 20]
	addu	$a0,$s0,$t9
 # ["fields": "from_count"]
 # ["exec_times": 20]
	move	$a1,$zero
 # ["exec_times": 20]
	sw	$a1,0($a0)
 # ["exec_times": 20]
	# .loc	2, 201
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 20]
	addu	$a3,$s0,$a2
 # ["fields": "next"]
 # ["exec_times": 20]
	lw	$s0,0($a3)
 # ["exec_times": 20]
	# .loc	2, 201
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 20]
	sne	$v1,$s0,$v0
 # ["exec_times": 20]
	bnez	$v1,update_from_coeffs.L3
 # ["exec_times": 20]
 # ["instr_profile": 20 18]
	nop	
update_from_coeffs.L4:
	# .loc	2, 213
 # ["exec_times": 0]
	cqip	update_from_coeffs.spawntail2
update_from_coeffs.spawntail2:
	pslice_entry	update_from_coeffs.spawntail2
	pslice_exit	update_from_coeffs.spawntail2
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
 # ["exec_times": 2]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	update_from_coeffs 
	.text	
	.align	2
	.align	2
	.globl	fill_from_fields
	# .loc	2, 216
	.ent	fill_from_fields 
fill_from_fields:
	spawn	fill_from_fields.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -160
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 160, $31
 # ["header/trailer":]
	cqip	fill_from_fields.headerspawn
 # ["header/trailer":]
fill_from_fields.headerspawn:
 # ["header/trailer":]
	pslice_entry	fill_from_fields.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
 # ["header/trailer":]
	pslice_exit	fill_from_fields.headerspawn
	# .loc	2, 218
 # ["exec_times": 0]
	# .loc	2, 218
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 2]
	sne	$t1,$a0,$t0
 # ["exec_times": 2]
	beqz	$t1,fill_from_fields.L4
 # ["exec_times": 2]
 # ["instr_profile": 2 0]
	nop	
fill_from_fields.L3:
	# .loc	2, 221
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 20]
	slt	$t3,$t2,$a1
 # ["exec_times": 20]
	beqz	$t3,fill_from_fields.L7
 # ["exec_times": 20]
 # ["instr_profile": 20 0]
	nop	
	move	$s0,$zero
 # ["exec_times": 20]
fill_from_fields.L8:
	# .loc	2, 221
 # ["exec_times": 0]
	# .loc	2, 222
 # ["exec_times": 0]
	li	$t4,12
 # ["exec_times": 60]
	addu	$t5,$a0,$t4
 # ["fields": "to_nodes"]
 # ["exec_times": 60]
	lw	$t6,0($t5)
 # ["exec_times": 60]
	li	$t7,4
 # ["exec_times": 60]
	mult	$s0,$t7
	mflo	$t8
 # ["exec_times": 60]
	addu	$t9,$t6,$t8
 # ["exec_times": 60]
	lw	$a2,0($t9)
 # ["exec_times": 60]
	# .loc	2, 223
 # ["exec_times": 0]
	li	$a3,16
 # ["exec_times": 60]
	addu	$a3,$a2,$a3
 # ["fields": "from_nodes"]
 # ["exec_times": 60]
	lw	$a3,0($a3)
 # ["exec_times": 60]
	li	$v0,24
 # ["exec_times": 60]
	addu	$v1,$a2,$v0
 # ["fields": "from_count"]
 # ["exec_times": 60]
	lw	$t0,0($v1)
 # ["exec_times": 60]
	li	$t1,4
 # ["exec_times": 60]
	mult	$t0,$t1
	mflo	$t2
 # ["exec_times": 60]
	addu	$t3,$a3,$t2
 # ["exec_times": 60]
	sw	$a0,0($t3)
 # ["exec_times": 60]
	# .loc	2, 224
 # ["exec_times": 0]
	li	$t4,24
 # ["exec_times": 60]
	addu	$t5,$a2,$t4
 # ["fields": "from_count"]
 # ["exec_times": 60]
	lw	$t6,0($t5)
 # ["exec_times": 60]
	li	$t7,1
 # ["exec_times": 60]
	addu	$t8,$t6,$t7
 # ["exec_times": 60]
	sw	$t8,0($t5)
 # ["exec_times": 60]
	li	$t9,1
 # ["exec_times": 60]
	addu	$s0,$s0,$t9
 # ["exec_times": 60]
	sle	$a2,$a1,$s0
 # ["exec_times": 60]
	beqz	$a2,fill_from_fields.L8
 # ["exec_times": 60]
 # ["instr_profile": 60 40]
	nop	
fill_from_fields.L9:
	j	fill_from_fields.__done9
 # ["exec_times": 20]
 # ["instr_profile": 20 20]
	nop	
fill_from_fields.L7:
	move	$s0,$zero
 # ["exec_times": 0]
fill_from_fields.__done9:
	# .loc	2, 221
 # ["exec_times": 0]
	# .loc	2, 218
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 20]
	addu	$a2,$a0,$a2
 # ["fields": "next"]
 # ["exec_times": 20]
	lw	$a0,0($a2)
 # ["exec_times": 20]
	# .loc	2, 218
 # ["exec_times": 0]
	la	$a3,0($zero)
 # ["exec_times": 20]
	sne	$v0,$a0,$a3
 # ["exec_times": 20]
	bnez	$v0,fill_from_fields.L3
 # ["exec_times": 20]
 # ["instr_profile": 20 18]
	nop	
fill_from_fields.L4:
	# .loc	2, 227
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 2]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	fill_from_fields 
	.text	
	.align	2
	.align	2
	.globl	dealwithargs
	# .loc	2, 269
	.ent	dealwithargs 
dealwithargs:
	spawn	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-56($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -56
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 56, $31
 # ["header/trailer":]
	cqip	dealwithargs.headerspawn
 # ["header/trailer":]
dealwithargs.headerspawn:
 # ["header/trailer":]
	pslice_entry	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-56($sp)
 # ["header/trailer":]
	pslice_exit	dealwithargs.headerspawn
	move	$s0,$a0
	# .loc	2, 270
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
	# .loc	2, 271
 # ["exec_times": 0]
	li	$v1,1
 # ["exec_times": 1]
	slt	$t0,$v1,$s0
 # ["exec_times": 1]
	bnez	$t0,dealwithargs.__done4
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 274
 # ["exec_times": 0]
	li	$t1,10
 # ["exec_times": 1]
	sw	$t1,n_nodes
dealwithargs.__done4:
	# .loc	2, 277
 # ["exec_times": 0]
	li	$t2,2
 # ["exec_times": 1]
	slt	$t3,$t2,$s0
 # ["exec_times": 1]
	bnez	$t3,dealwithargs.__done5
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 280
 # ["exec_times": 0]
	li	$t4,3
 # ["exec_times": 1]
	sw	$t4,d_nodes
dealwithargs.__done5:
	# .loc	2, 283
 # ["exec_times": 0]
	li	$t5,3
 # ["exec_times": 1]
	slt	$t6,$t5,$s0
 # ["exec_times": 1]
	bnez	$t6,dealwithargs.__done6
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 286
 # ["exec_times": 0]
	li	$t7,30
 # ["exec_times": 1]
	sw	$t7,iters
dealwithargs.__done6:
	# .loc	2, 288
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	dealwithargs 
	.text	
	.align	2
	.align	2
	.globl	print_graph
	# .loc	2, 295
	.ent	print_graph 
print_graph:
	spawn	print_graph.headerspawn
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
	cqip	print_graph.headerspawn
 # ["header/trailer":]
print_graph.headerspawn:
 # ["header/trailer":]
	pslice_entry	print_graph.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	pslice_exit	print_graph.headerspawn
	spawn	print_graph.L9
 # ["cqip_pos": <L:print_graph.L9,0>]
	sw	$a0,160($sp)
	sw	$a1,164($sp)
	# .loc	2, 297
 # ["exec_times": 0]
	la	$t8,160($sp)
 # ["fields": "e_nodes"]
 # ["exec_times": 31]
	lw	$s0,0($t8)
 # ["exec_times": 31]
	# .loc	2, 298
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 31]
	la	$a0,__tmp_string_2
 # ["exec_times": 31]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 31]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 299
 # ["exec_times": 0]
	# .loc	2, 299
 # ["exec_times": 0]
	la	$t9,0($zero)
 # ["exec_times": 31]
	sne	$a0,$s0,$t9
 # ["exec_times": 31]
	beqz	$a0,print_graph.L4
 # ["exec_times": 31]
 # ["instr_profile": 31 0]
	nop	
print_graph.L3:
	# .loc	2, 300
 # ["exec_times": 0]
	la	$t0,myprintf6
 # ["exec_times": 310]
	la	$a0,__tmp_string_3
 # ["exec_times": 310]
	move	$a1,$zero
 # ["exec_times": 310]
	addu	$a2,$s0,$a1
 # ["fields": "value"]
 # ["exec_times": 310]
	l.d	$f14,0($a2)
 # ["exec_times": 310]
	li	$a3,24
 # ["exec_times": 310]
	addu	$v0,$s0,$a3
 # ["fields": "from_count"]
 # ["exec_times": 310]
	lw	$v1,0($v0)
 # ["exec_times": 310]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	sw	$v1,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 310]
 # ["proc_name": "myprintf6"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 299
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 310]
	addu	$t1,$s0,$t0
 # ["fields": "next"]
 # ["exec_times": 310]
	lw	$s0,0($t1)
 # ["exec_times": 310]
	# .loc	2, 299
 # ["exec_times": 0]
	la	$t2,0($zero)
 # ["exec_times": 310]
	sne	$t3,$s0,$t2
 # ["exec_times": 310]
	bnez	$t3,print_graph.L3
 # ["exec_times": 310]
 # ["instr_profile": 310 279]
	nop	
print_graph.L4:
	cqip	print_graph.L9
 # ["cqip_pos": <L:print_graph.L9,0>]
print_graph.L9:
	pslice_entry	print_graph.L9
 # ["pslice_entry_pos": <L:print_graph.L9,0>]
	pslice_exit	print_graph.L9
 # ["pslice_exit_pos": <L:print_graph.L9,0>]
	# .loc	2, 303
 # ["exec_times": 0]
	la	$t4,164($sp)
 # ["exec_times": 31]
	lw	$s0,0($t4)
 # ["exec_times": 31]
	# .loc	2, 304
 # ["exec_times": 0]
	# .loc	2, 304
 # ["exec_times": 0]
	la	$t5,0($zero)
 # ["exec_times": 31]
	sne	$t6,$s0,$t5
 # ["exec_times": 31]
	beqz	$t6,print_graph.L8
 # ["exec_times": 31]
 # ["instr_profile": 31 0]
	nop	
print_graph.L7:
	# .loc	2, 305
 # ["exec_times": 0]
	la	$t0,myprintf6
 # ["exec_times": 310]
	la	$a0,__tmp_string_4
 # ["exec_times": 310]
	move	$t7,$zero
 # ["exec_times": 310]
	addu	$t8,$s0,$t7
 # ["fields": "value"]
 # ["exec_times": 310]
	l.d	$f14,0($t8)
 # ["exec_times": 310]
	li	$t9,24
 # ["exec_times": 310]
	addu	$a1,$s0,$t9
 # ["fields": "from_count"]
 # ["exec_times": 310]
	lw	$a1,0($a1)
 # ["exec_times": 310]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	sw	$a1,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 310]
 # ["proc_name": "myprintf6"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 304
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 310]
	addu	$a3,$s0,$a2
 # ["fields": "next"]
 # ["exec_times": 310]
	lw	$s0,0($a3)
 # ["exec_times": 310]
	# .loc	2, 304
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 310]
	sne	$v1,$s0,$v0
 # ["exec_times": 310]
	bnez	$v1,print_graph.L7
 # ["exec_times": 310]
 # ["instr_profile": 310 279]
	nop	
print_graph.L8:
	# .loc	2, 308
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 31]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	print_graph 
	.text	
	.align	2
	.align	2
	.globl	entry
	# .loc	2, 313
	.ent	entry 
entry:
	spawn	entry.headerspawn
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
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L7
 # ["cqip_pos": <L:entry.L7,0>]
	# .loc	2, 317
 # ["exec_times": 0]
	la	$t0,dealwithargs
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "dealwithargs"]
 # ["call_overhead": 16]
 # ["regs_used": 5 6]
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
	# .loc	2, 318
 # ["exec_times": 0]
	la	$t0,initialize_graph
 # ["exec_times": 1]
	la	$a0,88($sp)
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "initialize_graph"]
 # ["call_overhead": 8514]
 # ["regs_used": 5]
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
	# .loc	2, 319
 # ["exec_times": 0]
	la	$t0,print_graph
 # ["exec_times": 1]
	# BEGIN structure move in genCall
	la	$t1,88($sp)
	lw	$a0,0($t1)
	lw	$a1,4($t1)
	# END structure move in genCall
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "print_graph"]
 # ["call_overhead": 314]
 # ["struct alignment": 0 32]
 # ["regs_used": 5 6]
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
	# .loc	2, 321
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 1]
	lw	$t2,iters
	slt	$t3,$t1,$t2
 # ["exec_times": 1]
	beqz	$t3,entry.L3
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	move	$s0,$zero
 # ["exec_times": 1]
entry.L4:
	# .loc	2, 322
 # ["exec_times": 0]
	la	$t0,compute_nodes
 # ["exec_times": 30]
	la	$t4,88($sp)
 # ["fields": "e_nodes"]
 # ["exec_times": 30]
	lw	$a0,0($t4)
 # ["exec_times": 30]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 30]
 # ["proc_name": "compute_nodes"]
 # ["call_overhead": 1044]
 # ["regs_used": 5]
	nop	
	# .loc	2, 323
 # ["exec_times": 0]
	la	$t0,compute_nodes
 # ["exec_times": 30]
	la	$t5,92($sp)
 # ["exec_times": 30]
	lw	$a0,0($t5)
 # ["exec_times": 30]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 30]
 # ["proc_name": "compute_nodes"]
 # ["call_overhead": 1044]
 # ["regs_used": 5]
	nop	
	# .loc	2, 324
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 30]
	la	$a0,__tmp_string_5
 # ["exec_times": 30]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 30]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 325
 # ["exec_times": 0]
	la	$t0,print_graph
 # ["exec_times": 30]
	# BEGIN structure move in genCall
	la	$t6,88($sp)
	lw	$a0,0($t6)
	lw	$a1,4($t6)
	# END structure move in genCall
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 30]
 # ["proc_name": "print_graph"]
 # ["call_overhead": 314]
 # ["struct alignment": 0 32]
 # ["regs_used": 5 6]
	nop	
	li	$t7,1
 # ["exec_times": 30]
	addu	$s0,$s0,$t7
 # ["exec_times": 30]
	lw	$t8,iters
	sle	$t9,$t8,$s0
 # ["exec_times": 30]
	beqz	$t9,entry.L4
 # ["exec_times": 30]
 # ["instr_profile": 30 29]
	nop	
entry.L6:
	j	entry.__done5
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
entry.L3:
	move	$s0,$zero
 # ["exec_times": 0]
entry.__done5:
	cqip	entry.L10
 # ["cqip_pos": <L:entry.L10,0>]
entry.L10:
	pslice_entry	entry.L10
 # ["pslice_entry_pos": <L:entry.L10,0>]
	pslice_exit	entry.L10
 # ["pslice_exit_pos": <L:entry.L10,0>]
	# .loc	2, 327
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
