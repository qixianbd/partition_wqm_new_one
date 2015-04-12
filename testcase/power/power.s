	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc12533_0.i /home/keyming/Prophet/testcase/power/power.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/power/power.snt /home/keyming/Prophet/testcase/power/power.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/power/power.temp1 /home/keyming/Prophet/testcase/power/power.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/power/power.temp2 /home/keyming/Prophet/testcase/power/power.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/power/power.temp3 /home/keyming/Prophet/testcase/power/power.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/power/power.temp4 /home/keyming/Prophet/testcase/power/power.snp
	# history:  transform_print /home/keyming/Prophet/testcase/power/power.snp /home/keyming/Prophet/testcase/power/power.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/power/power.tp /home/keyming/Prophet/testcase/power/power.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/power/power.iocal /home/keyming/Prophet/testcase/power/power.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/power/power.bore /home/keyming/Prophet/testcase/power/power.porky
	# history:  suifvm /home/keyming/Prophet/testcase/power/power.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/power/power.pf /home/keyming/Prophet/testcase/power/power.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/power/power.swig /home/keyming/Prophet/testcase/power/power.mgen
	# history:  raga /home/keyming/Prophet/testcase/power/power.mgen /home/keyming/Prophet/testcase/power/power.raga
	# history:  partition /home/keyming/Prophet/testcase/power/power.sche /home/keyming/Prophet/testcase/power/power.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/power/power.par /home/keyming/Prophet/testcase/power/power.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/power/power.mfin /home/keyming/Prophet/testcase/power/power.nop
	# history:  transform_main /home/keyming/Prophet/testcase/power/power.nop /home/keyming/Prophet/testcase/power/power.entry
	# history:  printmachine /home/keyming/Prophet/testcase/power/power.entry /home/keyming/Prophet/testcase/power/power.s
	.set	noreorder
	.sdata	
	.globl	map_P
	.align	3
	.align	0	# disable automatic alignment
map_P:
	.double	8.752218091048000133e+03
	.double	8.446106670416000270e+03
	.double	8.107990680283000074e+03
	.double	7.776191574284999660e+03
	.double	7.455920518777000325e+03
	.double	7.146602181352000116e+03
	.double	6.847709026812999582e+03
	.double	6.558734204024000064e+03
	.double	6.279213382291000016e+03
	.double	6.008702199985999869e+03
	.double	5.746786181028999636e+03
	.double	5.493078256494999550e+03
	.double	5.247206333097000424e+03
	.double	5.008828069357999993e+03
	.double	4.777615815166000175e+03
	.double	4.553258735899999920e+03
	.double	4.335470002316000318e+03
	.double	4.123971545694000270e+03
	.double	3.918501939674999903e+03
	.double	3.718817618537999806e+03
	.double	3.524683625799999845e+03
	.double	3.335876573043999997e+03
	.double	3.152188635673000135e+03
	.double	2.973421417102999840e+03
	.double	2.799382330485999773e+03
	.double	2.629892542616999890e+03
	.double	2.464782829705000040e+03
	.double	2.303889031417999831e+03
	.double	2.147054385394999827e+03
	.double	1.994132771398999921e+03
	.double	1.844985347312999920e+03
	.double	1.699475053320999905e+03
	.double	1.557474019598000041e+03
	.double	1.418860479042999941e+03
	.double	1.283520126656000002e+03
	.double	1.151338004215999945e+03
	.sdata	
	.globl	map_Q
	.align	3
	.align	0	# disable automatic alignment
map_Q:
	.double	1.768846590189999915e+03
	.double	1.706229490045999910e+03
	.double	1.637253873078999959e+03
	.double	1.569637451623000061e+03
	.double	1.504419525241999963e+03
	.double	1.441477913810000018e+03
	.double	1.380700660446000029e+03
	.double	1.321980440476000012e+03
	.double	1.265218982201000017e+03
	.double	1.210322424636000051e+03
	.double	1.157203306182999995e+03
	.double	1.105780028162999997e+03
	.double	1.055974296745999936e+03
	.double	1.007714103979000015e+03
	.double	9.609306438749999870e+02
	.double	9.155587227820000180e+02
	.double	8.715382001780000110e+02
	.double	8.288108820060000426e+02
	.double	7.873220983400000250e+02
	.double	7.470209413339999855e+02
	.double	7.078583762140000317e+02
	.double	6.697878297409999959e+02
	.double	6.327659877559999586e+02
	.double	5.967515456329999779e+02
	.double	5.617044666089999509e+02
	.double	5.275875805849999551e+02
	.double	4.943657390509999914e+02
	.double	4.620048906910000142e+02
	.double	4.304725466859999869e+02
	.double	3.997384291960000269e+02
	.double	3.697737875949999875e+02
	.double	3.405502871369999980e+02
	.double	3.120414960950000136e+02
	.double	2.842222606600000177e+02
	.double	2.570689730739999845e+02
	.double	2.305579382829999986e+02
	.sdata	
	.align	3
	.align	0	# disable automatic alignment
P:
	.double	1.000000000000000000e+00
	.sdata	
	.align	3
	.align	0	# disable automatic alignment
Q:
	.double	1.000000000000000000e+00
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"Past initialization\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"Built tree\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"TR=%f, TI=%f,\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_3:
	.ascii	"P0=%f, Q0=%f\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_4:
	.ascii	"D TR=%f, TI=%f\012\000"
	.file	2 "/home/keyming/Prophet/testcase/power/power.c"
	.text	
	.align	2
	.align	2
	.globl	build_tree
	# .loc	2, 58
	.ent	build_tree 
build_tree:
	spawn	build_tree.headerspawn
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
	cqip	build_tree.headerspawn
 # ["header/trailer":]
build_tree.headerspawn:
 # ["header/trailer":]
	pslice_entry	build_tree.headerspawn
 # ["header/trailer":]
	la	$sp,-136($sp)
 # ["header/trailer":]
	pslice_exit	build_tree.headerspawn
	# .loc	2, 68
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 1]
	li	$a0,72
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
	# .loc	3, 41
 # ["exec_times": 0]
	move	$s1,$zero
 # ["exec_times": 1]
build_tree.L3:
	# .loc	3, 43
 # ["exec_times": 0]
	la	$t0,build_lateral
 # ["exec_times": 2]
	li	$t1,4
 # ["exec_times": 2]
	mult	$s1,$t1
	mflo	$a0
 # ["exec_times": 2]
	li	$a1,4
 # ["exec_times": 2]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 2]
 # ["proc_name": "build_lateral"]
 # ["call_overhead": 525]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	# .loc	3, 44
 # ["exec_times": 0]
	li	$t2,64
 # ["exec_times": 2]
	addu	$t0,$s0,$t2
 # ["fields": "feeders"]
 # ["exec_times": 2]
	li	$t3,4
 # ["exec_times": 2]
	mult	$s1,$t3
	mflo	$t4
 # ["exec_times": 2]
	addu	$t5,$t0,$t4
 # ["exec_times": 2]
	sw	$v0,0($t5)
 # ["exec_times": 2]
	li	$t6,1
 # ["exec_times": 2]
	addu	$s1,$s1,$t6
 # ["exec_times": 2]
	li	$t7,2
 # ["exec_times": 2]
	sle	$t8,$t7,$s1
 # ["exec_times": 2]
	beqz	$t8,build_tree.L3
 # ["exec_times": 2]
 # ["instr_profile": 2 1]
	nop	
	# .loc	3, 47
 # ["exec_times": 0]
	li	$t9,16
 # ["exec_times": 1]
	addu	$a0,$s0,$t9
 # ["fields": "theta_R"]
 # ["exec_times": 1]
	li.d	$f4,8.000000000000000444e-01
 # ["exec_times": 1]
	s.d	$f4,0($a0)
 # ["exec_times": 1]
	# .loc	3, 48
 # ["exec_times": 0]
	li	$a1,24
 # ["exec_times": 1]
	addu	$a2,$s0,$a1
 # ["fields": "theta_I"]
 # ["exec_times": 1]
	li.d	$f6,1.600000000000000033e-01
 # ["exec_times": 1]
	s.d	$f6,0($a2)
 # ["exec_times": 1]
	# .loc	3, 49
 # ["exec_times": 0]
	move	$v0,$s0
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
 # ["instr_ret": t:g50]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	build_tree 
	.file	3 "power2.c"
	.text	
	.align	2
	.align	2
	.globl	build_lateral
	# .loc	3, 53
	.ent	build_lateral 
build_lateral:
	spawn	build_lateral.headerspawn
 # ["header/trailer":]
	la	$sp,-184($sp)
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
	.mask	0x800f0000, -184
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 184, $31
 # ["header/trailer":]
	cqip	build_lateral.headerspawn
 # ["header/trailer":]
build_lateral.headerspawn:
 # ["header/trailer":]
	pslice_entry	build_lateral.headerspawn
 # ["header/trailer":]
	la	$sp,-184($sp)
 # ["header/trailer":]
	pslice_exit	build_lateral.headerspawn
	spawn	build_lateral.spawntail0
	spawn	build_lateral.spawntail1
	move	$s1,$a0
	move	$s0,$a1
	# .loc	3, 63
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 10]
	seq	$t3,$s0,$t2
 # ["exec_times": 10]
	beqz	$t3,build_lateral.L1
 # ["exec_times": 10]
 # ["instr_profile": 10 8]
	nop	
	# .loc	3, 64
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 2]
	cqip	build_lateral.spawntail0
build_lateral.spawntail0:
	pslice_entry	build_lateral.spawntail0
	pslice_exit	build_lateral.spawntail0
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
 # ["instr_ret": t:g48]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
build_lateral.L1:
	# .loc	3, 75
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 8]
	li	$a0,56
 # ["exec_times": 8]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 8]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s2,$v0
 # ["exec_times": 8]
	# .loc	3, 83
 # ["exec_times": 0]
	la	$t0,build_lateral
 # ["exec_times": 8]
	li	$t4,1
 # ["exec_times": 8]
	subu	$a1,$s0,$t4
 # ["exec_times": 8]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 8]
 # ["proc_name": "build_lateral"]
 # ["call_overhead": 298]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
	# .loc	3, 84
 # ["exec_times": 0]
	la	$t0,build_branch
 # ["exec_times": 8]
	li	$t5,1
 # ["exec_times": 8]
	subu	$a1,$s0,$t5
 # ["exec_times": 8]
	li	$a2,1
 # ["exec_times": 8]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 8]
 # ["proc_name": "build_branch"]
 # ["call_overhead": 91]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	# .loc	3, 91
 # ["exec_times": 0]
	li	$t6,48
 # ["exec_times": 8]
	addu	$t7,$s2,$t6
 # ["fields": "next_lateral"]
 # ["exec_times": 8]
	sw	$s3,0($t7)
 # ["exec_times": 8]
	# .loc	3, 93
 # ["exec_times": 0]
	li	$t8,52
 # ["exec_times": 8]
	addu	$t9,$s2,$t8
 # ["fields": "branch"]
 # ["exec_times": 8]
	sw	$v0,0($t9)
 # ["exec_times": 8]
	# .loc	3, 94
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 8]
	addu	$a1,$s2,$a0
 # ["fields": "R"]
 # ["exec_times": 8]
	li.d	$f8,3.333333333333333324e-06
 # ["exec_times": 8]
	s.d	$f8,0($a1)
 # ["exec_times": 8]
	# .loc	3, 95
 # ["exec_times": 0]
	li	$a2,40
 # ["exec_times": 8]
	addu	$a3,$s2,$a2
 # ["fields": "X"]
 # ["exec_times": 8]
	li.d	$f10,9.999999999999999547e-07
 # ["exec_times": 8]
	s.d	$f10,0($a3)
 # ["exec_times": 8]
	# .loc	3, 96
 # ["exec_times": 0]
	li	$v0,16
 # ["exec_times": 8]
	addu	$v1,$s2,$v0
 # ["fields": "alpha"]
 # ["exec_times": 8]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 8]
	s.d	$f16,0($v1)
 # ["exec_times": 8]
	# .loc	3, 97
 # ["exec_times": 0]
	li	$t0,24
 # ["exec_times": 8]
	addu	$t1,$s2,$t0
 # ["fields": "beta"]
 # ["exec_times": 8]
	li.d	$f18,0.000000000000000000e+00
 # ["exec_times": 8]
	s.d	$f18,0($t1)
 # ["exec_times": 8]
	# .loc	3, 98
 # ["exec_times": 0]
	move	$v0,$s2
	cqip	build_lateral.spawntail1
build_lateral.spawntail1:
	pslice_entry	build_lateral.spawntail1
	pslice_exit	build_lateral.spawntail1
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
 # ["instr_ret": t:g48]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	build_lateral 
	.text	
	.align	2
	.align	2
	.globl	build_branch
	# .loc	3, 102
	.ent	build_branch 
build_branch:
	spawn	build_branch.headerspawn
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
	cqip	build_branch.headerspawn
 # ["header/trailer":]
build_branch.headerspawn:
 # ["header/trailer":]
	pslice_entry	build_branch.headerspawn
 # ["header/trailer":]
	la	$sp,-208($sp)
 # ["header/trailer":]
	pslice_exit	build_branch.headerspawn
	spawn	build_branch.spawntail2
	spawn	build_branch.spawntail3
	move	$s2,$a0
	move	$s1,$a1
	move	$s0,$a2
	# .loc	3, 105
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 16]
	seq	$t8,$s0,$t7
 # ["exec_times": 16]
	beqz	$t8,build_branch.L1
 # ["exec_times": 16]
 # ["instr_profile": 16 8]
	nop	
	# .loc	3, 106
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 8]
	cqip	build_branch.spawntail2
build_branch.spawntail2:
	pslice_entry	build_branch.spawntail2
	pslice_exit	build_branch.spawntail2
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
 # ["exec_times": 8]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
build_branch.L1:
	# .loc	3, 107
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 8]
	li	$a0,64
 # ["exec_times": 8]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 8]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
 # ["exec_times": 8]
	# .loc	3, 108
 # ["exec_times": 0]
	li	$t9,48
 # ["exec_times": 8]
	addu	$s4,$s3,$t9
 # ["fields": "next_branch"]
 # ["exec_times": 8]
	la	$t0,build_branch
 # ["exec_times": 8]
	li	$a0,1
 # ["exec_times": 8]
	subu	$a2,$s0,$a0
 # ["exec_times": 8]
	move	$a0,$s2
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 8]
 # ["proc_name": "build_branch"]
 # ["call_overhead": 5]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s4)
 # ["exec_times": 8]
	# .loc	3, 109
 # ["exec_times": 0]
	move	$s2,$zero
 # ["exec_times": 8]
build_branch.L4:
	# .loc	3, 110
 # ["exec_times": 0]
	la	$t0,build_leaf
 # ["exec_times": 16]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 16]
 # ["proc_name": "build_leaf"]
 # ["call_overhead": 13]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	# .loc	3, 111
 # ["exec_times": 0]
	li	$a1,52
 # ["exec_times": 16]
	addu	$t6,$s3,$a1
 # ["fields": "leaves"]
 # ["exec_times": 16]
	li	$a2,4
 # ["exec_times": 16]
	mult	$s2,$a2
	mflo	$a3
 # ["exec_times": 16]
	addu	$v1,$t6,$a3
 # ["exec_times": 16]
	sw	$v0,0($v1)
 # ["exec_times": 16]
	li	$v1,1
 # ["exec_times": 16]
	addu	$s2,$s2,$v1
 # ["exec_times": 16]
	li	$t0,2
 # ["exec_times": 16]
	sle	$t1,$t0,$s2
 # ["exec_times": 16]
	beqz	$t1,build_branch.L4
 # ["exec_times": 16]
 # ["instr_profile": 16 8]
	nop	
	# .loc	3, 113
 # ["exec_times": 0]
	li	$t2,32
 # ["exec_times": 8]
	addu	$t3,$s3,$t2
 # ["fields": "R"]
 # ["exec_times": 8]
	li.d	$f4,1.000000000000000048e-04
 # ["exec_times": 8]
	s.d	$f4,0($t3)
 # ["exec_times": 8]
	# .loc	3, 114
 # ["exec_times": 0]
	li	$t4,40
 # ["exec_times": 8]
	addu	$t5,$s3,$t4
 # ["fields": "X"]
 # ["exec_times": 8]
	li.d	$f4,2.000000000000000164e-05
 # ["exec_times": 8]
	s.d	$f4,0($t5)
 # ["exec_times": 8]
	# .loc	3, 115
 # ["exec_times": 0]
	li	$t6,16
 # ["exec_times": 8]
	addu	$t7,$s3,$t6
 # ["fields": "alpha"]
 # ["exec_times": 8]
	li.d	$f6,0.000000000000000000e+00
 # ["exec_times": 8]
	s.d	$f6,0($t7)
 # ["exec_times": 8]
	# .loc	3, 116
 # ["exec_times": 0]
	li	$t8,24
 # ["exec_times": 8]
	addu	$t9,$s3,$t8
 # ["fields": "beta"]
 # ["exec_times": 8]
	li.d	$f8,0.000000000000000000e+00
 # ["exec_times": 8]
	s.d	$f8,0($t9)
 # ["exec_times": 8]
	# .loc	3, 117
 # ["exec_times": 0]
	move	$v0,$s3
	cqip	build_branch.spawntail3
build_branch.spawntail3:
	pslice_entry	build_branch.spawntail3
	pslice_exit	build_branch.spawntail3
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
 # ["exec_times": 8]
 # ["instr_ret": t:g52]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	build_branch 
	.text	
	.align	2
	.align	2
	.globl	build_leaf
	# .loc	3, 121
	.ent	build_leaf 
build_leaf:
	spawn	build_leaf.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -64
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 64, $31
 # ["header/trailer":]
	cqip	build_leaf.headerspawn
 # ["header/trailer":]
build_leaf.headerspawn:
 # ["header/trailer":]
	pslice_entry	build_leaf.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	build_leaf.headerspawn
	# .loc	3, 124
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 16]
	li	$a0,32
 # ["exec_times": 16]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 16]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	3, 125
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 16]
	addu	$t4,$v0,$t3
 # ["fields": "D" "P"]
 # ["exec_times": 16]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 16]
	s.d	$f14,0($t4)
 # ["exec_times": 16]
	# .loc	3, 126
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 16]
	addu	$t6,$v0,$t5
 # ["fields": "D" "Q"]
 # ["exec_times": 16]
	li.d	$f0,1.000000000000000000e+00
 # ["exec_times": 16]
	s.d	$f0,0($t6)
 # ["exec_times": 16]
	# .loc	3, 127
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 16]
 # ["instr_ret": t:g54]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	build_leaf 
	.text	
	.align	2
	.align	2
	.globl	Compute_Tree
	# .loc	3, 196
	.ent	Compute_Tree 
Compute_Tree:
	spawn	Compute_Tree.headerspawn
 # ["header/trailer":]
	la	$sp,-304($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -304
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 304, $31
 # ["header/trailer":]
	cqip	Compute_Tree.headerspawn
 # ["header/trailer":]
Compute_Tree.headerspawn:
 # ["header/trailer":]
	pslice_entry	Compute_Tree.headerspawn
 # ["header/trailer":]
	la	$sp,-304($sp)
 # ["header/trailer":]
	pslice_exit	Compute_Tree.headerspawn
	move	$s0,$a0
	# .loc	3, 207
 # ["exec_times": 0]
	la	$a0,256($sp)
 # ["fields": "P"]
 # ["exec_times": 18]
	li.d	$f10,0.000000000000000000e+00
 # ["exec_times": 18]
	s.d	$f10,0($a0)
 # ["exec_times": 18]
	# .loc	3, 208
 # ["exec_times": 0]
	la	$a1,264($sp)
 # ["exec_times": 18]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 18]
	s.d	$f16,0($a1)
 # ["exec_times": 18]
	# .loc	3, 210
 # ["exec_times": 0]
	move	$s1,$zero
 # ["exec_times": 18]
Compute_Tree.L3:
	# .loc	3, 211
 # ["exec_times": 0]
	li	$a2,64
 # ["exec_times": 36]
	addu	$t9,$s0,$a2
 # ["fields": "feeders"]
 # ["exec_times": 36]
	li	$a3,4
 # ["exec_times": 36]
	mult	$s1,$a3
	mflo	$v0
 # ["exec_times": 36]
	addu	$v1,$t9,$v0
 # ["exec_times": 36]
	lw	$a1,0($v1)
 # ["exec_times": 36]
	# .loc	3, 212
 # ["exec_times": 0]
	li	$t0,16
 # ["exec_times": 36]
	addu	$t1,$s0,$t0
 # ["fields": "theta_R"]
 # ["exec_times": 36]
	l.d	$f14,0($t1)
 # ["exec_times": 36]
	# .loc	3, 213
 # ["exec_times": 0]
	li	$t2,24
 # ["exec_times": 36]
	addu	$t3,$s0,$t2
 # ["fields": "theta_I"]
 # ["exec_times": 36]
	l.d	$f18,0($t3)
 # ["exec_times": 36]
	# .loc	3, 214
 # ["exec_times": 0]
	la	$t0,Compute_Lateral
 # ["exec_times": 36]
	la	$a0,272($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f18,-24($sp)
	s.d	$f14,-32($sp)
	s.d	$f18,-40($sp)
	jalr	$t0,$ra
 # ["exec_times": 36]
 # ["proc_name": "Compute_Lateral"]
 # ["call_overhead": 7377]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
	# .loc	3, 215
 # ["exec_times": 0]
	la	$t4,256($sp)
 # ["fields": "P"]
 # ["exec_times": 36]
	la	$t5,256($sp)
 # ["fields": "P"]
 # ["exec_times": 36]
	l.d	$f12,0($t5)
 # ["exec_times": 36]
	la	$t6,272($sp)
 # ["fields": "P"]
 # ["exec_times": 36]
	l.d	$f14,0($t6)
 # ["exec_times": 36]
	add.d	$f0,$f12,$f14
 # ["exec_times": 36]
	s.d	$f0,0($t4)
 # ["exec_times": 36]
	# .loc	3, 216
 # ["exec_times": 0]
	la	$t7,264($sp)
 # ["exec_times": 36]
	la	$t8,264($sp)
 # ["exec_times": 36]
	l.d	$f2,0($t8)
 # ["exec_times": 36]
	la	$t9,280($sp)
 # ["exec_times": 36]
	l.d	$f4,0($t9)
 # ["exec_times": 36]
	add.d	$f6,$f2,$f4
 # ["exec_times": 36]
	s.d	$f6,0($t7)
 # ["exec_times": 36]
	li	$a0,1
 # ["exec_times": 36]
	addu	$s1,$s1,$a0
 # ["exec_times": 36]
	li	$a1,2
 # ["exec_times": 36]
	sle	$a2,$a1,$s1
 # ["exec_times": 36]
	beqz	$a2,Compute_Tree.L3
 # ["exec_times": 36]
 # ["instr_profile": 36 18]
	nop	
	# .loc	3, 231
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 18]
	addu	$v0,$s0,$a3
 # ["fields": "D" "P"]
 # ["exec_times": 18]
	la	$v1,256($sp)
 # ["fields": "P"]
 # ["exec_times": 18]
	l.d	$f8,0($v1)
 # ["exec_times": 18]
	s.d	$f8,0($v0)
 # ["exec_times": 18]
	# .loc	3, 232
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 18]
	addu	$t1,$s0,$t0
 # ["fields": "D" "Q"]
 # ["exec_times": 18]
	la	$t2,264($sp)
 # ["exec_times": 18]
	l.d	$f10,0($t2)
 # ["exec_times": 18]
	s.d	$f10,0($t1)
 # ["exec_times": 18]
	# .loc	3, 233
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
 # ["exec_times": 18]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	Compute_Tree 
	.text	
	.align	2
	.align	2
	.globl	Compute_Lateral
	# .loc	3, 237
	.ent	Compute_Lateral 
Compute_Lateral:
	spawn	Compute_Lateral.headerspawn
 # ["header/trailer":]
	la	$sp,-1344($sp)
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
	.mask	0x80070000, -1344
 # ["header/trailer":]
	s.d	$f20,24($sp)
 # ["header/trailer":]
	s.d	$f22,32($sp)
 # ["header/trailer":]
	s.d	$f24,40($sp)
 # ["header/trailer":]
	s.d	$f26,48($sp)
 # ["header/trailer":]
	.fmask	0x05500000, -1344
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 1344, $31
 # ["header/trailer":]
	cqip	Compute_Lateral.headerspawn
 # ["header/trailer":]
Compute_Lateral.headerspawn:
 # ["header/trailer":]
	pslice_entry	Compute_Lateral.headerspawn
 # ["header/trailer":]
	la	$sp,-1344($sp)
 # ["header/trailer":]
	pslice_exit	Compute_Lateral.headerspawn
	l.d	$f26,1304($sp)
	l.d	$f0,1312($sp)
	l.d	$f22,1320($sp)
	move	$s1,$a0
	move	$s0,$a1
	mtc1	$a2,$f14
	mtc1	$a3,$f15
	mov.d	$f20,$f14
	# .loc	3, 249
 # ["exec_times": 0]
	li	$t4,16
 # ["exec_times": 144]
	addu	$t5,$s0,$t4
 # ["fields": "alpha"]
 # ["exec_times": 144]
	l.d	$f4,0($t5)
 # ["exec_times": 144]
	li	$t6,40
 # ["exec_times": 144]
	addu	$t7,$s0,$t6
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f6,0($t7)
 # ["exec_times": 144]
	mul.d	$f8,$f22,$f6
 # ["exec_times": 144]
	li	$t8,32
 # ["exec_times": 144]
	addu	$t9,$s0,$t8
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f10,0($t9)
 # ["exec_times": 144]
	div.d	$f16,$f8,$f10
 # ["exec_times": 144]
	add.d	$f18,$f20,$f16
 # ["exec_times": 144]
	mul.d	$f12,$f4,$f18
 # ["exec_times": 144]
	add.d	$f24,$f0,$f12
 # ["exec_times": 144]
	# .loc	3, 250
 # ["exec_times": 0]
	spawn	Compute_Lateral.L4
 # ["cqip_pos": <L:Compute_Lateral.L4,0>]
	li	$a0,24
 # ["exec_times": 144]
	addu	$a1,$s0,$a0
 # ["fields": "beta"]
 # ["exec_times": 144]
	l.d	$f0,0($a1)
 # ["exec_times": 144]
	li	$a2,32
 # ["exec_times": 144]
	addu	$a3,$s0,$a2
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f2,0($a3)
 # ["exec_times": 144]
	mul.d	$f4,$f20,$f2
 # ["exec_times": 144]
	li	$v0,40
 # ["exec_times": 144]
	addu	$v1,$s0,$v0
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f6,0($v1)
 # ["exec_times": 144]
	div.d	$f8,$f4,$f6
 # ["exec_times": 144]
	add.d	$f10,$f22,$f8
 # ["exec_times": 144]
	mul.d	$f16,$f0,$f10
 # ["exec_times": 144]
	add.d	$f26,$f26,$f16
 # ["exec_times": 144]
	# .loc	3, 252
 # ["exec_times": 0]
	li	$t0,48
 # ["exec_times": 144]
	addu	$t1,$s0,$t0
 # ["fields": "next_lateral"]
 # ["exec_times": 144]
	lw	$s2,0($t1)
 # ["exec_times": 144]
	# .loc	3, 253
 # ["exec_times": 0]
	la	$t2,0($zero)
 # ["exec_times": 144]
	sne	$t3,$s2,$t2
 # ["exec_times": 144]
	beqz	$t3,Compute_Lateral.L1
 # ["exec_times": 144]
 # ["instr_profile": 144 36]
	nop	
	# .loc	3, 255
 # ["exec_times": 0]
	spawn	Compute_Lateral.L5
 # ["cqip_pos": <L:Compute_Lateral.L5,0>]
	la	$t0,Compute_Lateral
 # ["exec_times": 108]
	la	$a0,1288($sp)
	move	$a1,$s2
	mov.d	$f14,$f20
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	s.d	$f24,-32($sp)
	s.d	$f26,-40($sp)
	jalr	$t0,$ra
 # ["exec_times": 108]
 # ["proc_name": "Compute_Lateral"]
 # ["call_overhead": 4476]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
Compute_Lateral.L1:
	cqip	Compute_Lateral.L5
 # ["cqip_pos": <L:Compute_Lateral.L5,0>]
Compute_Lateral.L5:
	pslice_entry	Compute_Lateral.L5
 # ["pslice_entry_pos": <L:Compute_Lateral.L5,0>]
	pslice_exit	Compute_Lateral.L5
 # ["pslice_exit_pos": <L:Compute_Lateral.L5,0>]
	cqip	Compute_Lateral.L4
 # ["cqip_pos": <L:Compute_Lateral.L4,0>]
Compute_Lateral.L4:
	pslice_entry	Compute_Lateral.L4
 # ["pslice_entry_pos": <L:Compute_Lateral.L4,0>]
	pslice_exit	Compute_Lateral.L4
 # ["pslice_exit_pos": <L:Compute_Lateral.L4,0>]
	# .loc	3, 260
 # ["exec_times": 0]
	li	$t4,52
 # ["exec_times": 144]
	addu	$t5,$s0,$t4
 # ["fields": "branch"]
 # ["exec_times": 144]
	lw	$a1,0($t5)
 # ["exec_times": 144]
	# .loc	3, 261
 # ["exec_times": 0]
	la	$t0,Compute_Branch
 # ["exec_times": 144]
	la	$a0,1272($sp)
	mov.d	$f14,$f20
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	s.d	$f24,-32($sp)
	s.d	$f26,-40($sp)
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "Compute_Branch"]
 # ["call_overhead": 1645]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
	# .loc	3, 263
 # ["exec_times": 0]
	la	$t6,0($zero)
 # ["exec_times": 144]
	sne	$t7,$s2,$t6
 # ["exec_times": 144]
	beqz	$t7,Compute_Lateral.L2
 # ["exec_times": 144]
 # ["instr_profile": 144 36]
	nop	
	# .loc	3, 265
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 108]
	addu	$t9,$s0,$t8
 # ["fields": "D" "P"]
 # ["exec_times": 108]
	la	$a0,1288($sp)
 # ["fields": "P"]
 # ["exec_times": 108]
	l.d	$f18,0($a0)
 # ["exec_times": 108]
	la	$a1,1272($sp)
 # ["fields": "P"]
 # ["exec_times": 108]
	l.d	$f12,0($a1)
 # ["exec_times": 108]
	add.d	$f14,$f18,$f12
 # ["exec_times": 108]
	s.d	$f14,0($t9)
 # ["exec_times": 108]
	# .loc	3, 266
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 108]
	addu	$a3,$s0,$a2
 # ["fields": "D" "Q"]
 # ["exec_times": 108]
	la	$v0,1296($sp)
 # ["exec_times": 108]
	l.d	$f0,0($v0)
 # ["exec_times": 108]
	la	$v1,1280($sp)
 # ["exec_times": 108]
	l.d	$f2,0($v1)
 # ["exec_times": 108]
	add.d	$f4,$f0,$f2
 # ["exec_times": 108]
	s.d	$f4,0($a3)
 # ["exec_times": 108]
	j	Compute_Lateral.__done3
 # ["exec_times": 108]
 # ["instr_profile": 108 108]
	nop	
Compute_Lateral.L2:
	# .loc	3, 273
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 36]
	addu	$t1,$s0,$t0
 # ["fields": "D" "P"]
 # ["exec_times": 36]
	la	$t2,1272($sp)
 # ["fields": "P"]
 # ["exec_times": 36]
	l.d	$f6,0($t2)
 # ["exec_times": 36]
	s.d	$f6,0($t1)
 # ["exec_times": 36]
	# .loc	3, 274
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 36]
	addu	$t4,$s0,$t3
 # ["fields": "D" "Q"]
 # ["exec_times": 36]
	la	$t5,1280($sp)
 # ["exec_times": 36]
	l.d	$f8,0($t5)
 # ["exec_times": 36]
	s.d	$f8,0($t4)
 # ["exec_times": 36]
Compute_Lateral.__done3:
	# .loc	3, 278
 # ["exec_times": 0]
	li	$t6,32
 # ["exec_times": 144]
	addu	$t7,$s0,$t6
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f10,0($t7)
 # ["exec_times": 144]
	li	$t8,32
 # ["exec_times": 144]
	addu	$t9,$s0,$t8
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f16,0($t9)
 # ["exec_times": 144]
	mul.d	$f18,$f10,$f16
 # ["exec_times": 144]
	li	$a0,40
 # ["exec_times": 144]
	addu	$a1,$s0,$a0
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f12,0($a1)
 # ["exec_times": 144]
	li	$a2,40
 # ["exec_times": 144]
	addu	$a3,$s0,$a2
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f14,0($a3)
 # ["exec_times": 144]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 144]
	add.d	$f20,$f18,$f0
 # ["exec_times": 144]
	# .loc	3, 279
 # ["exec_times": 0]
	li.d	$f2,2.000000000000000000e+00
 # ["exec_times": 144]
	li	$v0,32
 # ["exec_times": 144]
	addu	$v1,$s0,$v0
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f4,0($v1)
 # ["exec_times": 144]
	mul.d	$f6,$f2,$f4
 # ["exec_times": 144]
	li	$t0,40
 # ["exec_times": 144]
	addu	$t1,$s0,$t0
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f8,0($t1)
 # ["exec_times": 144]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 144]
	li	$t2,8
 # ["exec_times": 144]
	addu	$t3,$s0,$t2
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	l.d	$f16,0($t3)
 # ["exec_times": 144]
	mul.d	$f18,$f10,$f16
 # ["exec_times": 144]
	li.d	$f12,2.000000000000000000e+00
 # ["exec_times": 144]
	li	$t4,40
 # ["exec_times": 144]
	addu	$t5,$s0,$t4
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f14,0($t5)
 # ["exec_times": 144]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 144]
	li	$t6,40
 # ["exec_times": 144]
	addu	$t7,$s0,$t6
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f2,0($t7)
 # ["exec_times": 144]
	mul.d	$f4,$f0,$f2
 # ["exec_times": 144]
	move	$t8,$zero
 # ["exec_times": 144]
	addu	$t9,$s0,$t8
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f6,0($t9)
 # ["exec_times": 144]
	mul.d	$f8,$f4,$f6
 # ["exec_times": 144]
	sub.d	$f10,$f18,$f8
 # ["exec_times": 144]
	li	$a0,32
 # ["exec_times": 144]
	addu	$a1,$s0,$a0
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f16,0($a1)
 # ["exec_times": 144]
	sub.d	$f24,$f10,$f16
 # ["exec_times": 144]
	# .loc	3, 280
 # ["exec_times": 0]
	li	$a2,32
 # ["exec_times": 144]
	addu	$a3,$s0,$a2
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f18,0($a3)
 # ["exec_times": 144]
	li	$v0,8
 # ["exec_times": 144]
	addu	$v1,$s0,$v0
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	l.d	$f12,0($v1)
 # ["exec_times": 144]
	mul.d	$f14,$f18,$f12
 # ["exec_times": 144]
	li	$t0,40
 # ["exec_times": 144]
	addu	$t1,$s0,$t0
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f0,0($t1)
 # ["exec_times": 144]
	move	$t2,$zero
 # ["exec_times": 144]
	addu	$t3,$s0,$t2
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f2,0($t3)
 # ["exec_times": 144]
	mul.d	$f4,$f0,$f2
 # ["exec_times": 144]
	sub.d	$f6,$f14,$f4
 # ["exec_times": 144]
	# .loc	3, 281
 # ["exec_times": 0]
	mul.d	$f8,$f6,$f6
 # ["exec_times": 144]
	li	$t4,32
 # ["exec_times": 144]
	addu	$t5,$s0,$t4
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f10,0($t5)
 # ["exec_times": 144]
	move	$t6,$zero
 # ["exec_times": 144]
	addu	$t7,$s0,$t6
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f16,0($t7)
 # ["exec_times": 144]
	mul.d	$f18,$f10,$f16
 # ["exec_times": 144]
	add.d	$f6,$f8,$f18
 # ["exec_times": 144]
	# .loc	3, 282
 # ["exec_times": 0]
	neg.d	$f22,$f24
 # ["exec_times": 144]
	la	$t0,sqrt
 # ["exec_times": 144]
	mul.d	$f12,$f24,$f24
 # ["exec_times": 144]
	li.d	$f14,4.000000000000000000e+00
 # ["exec_times": 144]
	mul.d	$f0,$f14,$f20
 # ["exec_times": 144]
	mul.d	$f2,$f0,$f6
 # ["exec_times": 144]
	sub.d	$f12,$f12,$f2
 # ["exec_times": 144]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	sub.d	$f4,$f22,$f0
 # ["exec_times": 144]
	li.d	$f6,2.000000000000000000e+00
 # ["exec_times": 144]
	mul.d	$f8,$f6,$f20
 # ["exec_times": 144]
	div.d	$f10,$f4,$f8
 # ["exec_times": 144]
	# .loc	3, 283
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 144]
	addu	$t9,$s0,$t8
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	li	$a0,8
 # ["exec_times": 144]
	addu	$a1,$s0,$a0
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	l.d	$f16,0($a1)
 # ["exec_times": 144]
	move	$a2,$zero
 # ["exec_times": 144]
	addu	$a3,$s0,$a2
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f18,0($a3)
 # ["exec_times": 144]
	sub.d	$f12,$f10,$f18
 # ["exec_times": 144]
	li	$v0,40
 # ["exec_times": 144]
	addu	$v1,$s0,$v0
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f14,0($v1)
 # ["exec_times": 144]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 144]
	li	$t0,32
 # ["exec_times": 144]
	addu	$t1,$s0,$t0
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f2,0($t1)
 # ["exec_times": 144]
	div.d	$f4,$f0,$f2
 # ["exec_times": 144]
	add.d	$f6,$f16,$f4
 # ["exec_times": 144]
	s.d	$f6,0($t9)
 # ["exec_times": 144]
	# .loc	3, 284
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 144]
	addu	$t3,$s0,$t2
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	s.d	$f10,0($t3)
 # ["exec_times": 144]
	# .loc	3, 287
 # ["exec_times": 0]
	li.d	$f8,2.000000000000000000e+00
 # ["exec_times": 144]
	li	$t4,32
 # ["exec_times": 144]
	addu	$t5,$s0,$t4
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f10,0($t5)
 # ["exec_times": 144]
	mul.d	$f16,$f8,$f10
 # ["exec_times": 144]
	move	$t6,$zero
 # ["exec_times": 144]
	addu	$t7,$s0,$t6
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f18,0($t7)
 # ["exec_times": 144]
	mul.d	$f20,$f16,$f18
 # ["exec_times": 144]
	# .loc	3, 288
 # ["exec_times": 0]
	li.d	$f12,2.000000000000000000e+00
 # ["exec_times": 144]
	li	$t8,40
 # ["exec_times": 144]
	addu	$t9,$s0,$t8
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f14,0($t9)
 # ["exec_times": 144]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 144]
	li	$a0,8
 # ["exec_times": 144]
	addu	$a1,$s0,$a0
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	l.d	$f2,0($a1)
 # ["exec_times": 144]
	mul.d	$f24,$f0,$f2
 # ["exec_times": 144]
	# .loc	3, 289
 # ["exec_times": 0]
	li	$a2,16
 # ["exec_times": 144]
	addu	$a3,$s0,$a2
 # ["fields": "alpha"]
 # ["exec_times": 144]
	li.d	$f4,1.000000000000000000e+00
 # ["exec_times": 144]
	sub.d	$f6,$f4,$f20
 # ["exec_times": 144]
	sub.d	$f8,$f6,$f24
 # ["exec_times": 144]
	div.d	$f10,$f20,$f8
 # ["exec_times": 144]
	s.d	$f10,0($a3)
 # ["exec_times": 144]
	# .loc	3, 290
 # ["exec_times": 0]
	li	$v0,24
 # ["exec_times": 144]
	addu	$v1,$s0,$v0
 # ["fields": "beta"]
 # ["exec_times": 144]
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 144]
	sub.d	$f18,$f16,$f20
 # ["exec_times": 144]
	sub.d	$f12,$f18,$f24
 # ["exec_times": 144]
	div.d	$f14,$f24,$f12
 # ["exec_times": 144]
	s.d	$f14,0($v1)
 # ["exec_times": 144]
	# .loc	3, 291
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 144]
	addu	$t1,$s0,$t0
 # ["fields": "D"]
 # ["exec_times": 144]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t2,0($t1)
 # ["struct alignment": 64]
	la	$t3,56($sp)
	lw	$t4,0($t2)
	lw	$t5,4($t2)
	lw	$t6,8($t2)
	sw	$t4,0($t3)
	sw	$t5,4($t3)
	sw	$t6,8($t3)
	lw	$t7,12($t2)
	sw	$t7,12($t3)
	# END structure move
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t8,56($sp)
 # ["struct alignment": 64]
	la	$t9,0($s1)
	lw	$a0,0($t8)
	lw	$a1,4($t8)
	lw	$a2,8($t8)
	sw	$a0,0($t9)
	sw	$a1,4($t9)
	sw	$a2,8($t9)
	lw	$a3,12($t8)
	sw	$a3,12($t9)
	# END structure move
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
	l.d	$f24,40($sp)
 # ["header/trailer":]
	l.d	$f26,48($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 144]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	Compute_Lateral 
	.text	
	.align	2
	.align	2
	.globl	Compute_Branch
	# .loc	3, 296
	.ent	Compute_Branch 
Compute_Branch:
	spawn	Compute_Branch.headerspawn
 # ["header/trailer":]
	la	$sp,-1504($sp)
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
	.mask	0x800f0000, -1504
 # ["header/trailer":]
	s.d	$f20,24($sp)
 # ["header/trailer":]
	s.d	$f22,32($sp)
 # ["header/trailer":]
	s.d	$f24,40($sp)
 # ["header/trailer":]
	.fmask	0x01500000, -1504
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 1504, $31
 # ["header/trailer":]
	cqip	Compute_Branch.headerspawn
 # ["header/trailer":]
Compute_Branch.headerspawn:
 # ["header/trailer":]
	pslice_entry	Compute_Branch.headerspawn
 # ["header/trailer":]
	la	$sp,-1504($sp)
 # ["header/trailer":]
	pslice_exit	Compute_Branch.headerspawn
	l.d	$f22,1464($sp)
	l.d	$f0,1472($sp)
	l.d	$f24,1480($sp)
	move	$s1,$a0
	move	$s0,$a1
	mtc1	$a2,$f14
	mtc1	$a3,$f15
	# .loc	3, 309
 # ["exec_times": 0]
	li	$t9,16
 # ["exec_times": 144]
	addu	$a0,$s0,$t9
 # ["fields": "alpha"]
 # ["exec_times": 144]
	l.d	$f4,0($a0)
 # ["exec_times": 144]
	li	$a1,40
 # ["exec_times": 144]
	addu	$a2,$s0,$a1
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f6,0($a2)
 # ["exec_times": 144]
	mul.d	$f8,$f24,$f6
 # ["exec_times": 144]
	li	$a3,32
 # ["exec_times": 144]
	addu	$v0,$s0,$a3
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f10,0($v0)
 # ["exec_times": 144]
	div.d	$f16,$f8,$f10
 # ["exec_times": 144]
	add.d	$f18,$f14,$f16
 # ["exec_times": 144]
	mul.d	$f12,$f4,$f18
 # ["exec_times": 144]
	add.d	$f20,$f0,$f12
 # ["exec_times": 144]
	# .loc	3, 310
 # ["exec_times": 0]
	spawn	Compute_Branch.L7
 # ["cqip_pos": <L:Compute_Branch.L7,0>]
	li	$v1,24
 # ["exec_times": 144]
	addu	$t0,$s0,$v1
 # ["fields": "beta"]
 # ["exec_times": 144]
	l.d	$f0,0($t0)
 # ["exec_times": 144]
	li	$t1,32
 # ["exec_times": 144]
	addu	$t2,$s0,$t1
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f2,0($t2)
 # ["exec_times": 144]
	mul.d	$f4,$f14,$f2
 # ["exec_times": 144]
	li	$t3,40
 # ["exec_times": 144]
	addu	$t4,$s0,$t3
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f6,0($t4)
 # ["exec_times": 144]
	div.d	$f8,$f4,$f6
 # ["exec_times": 144]
	add.d	$f10,$f24,$f8
 # ["exec_times": 144]
	mul.d	$f16,$f0,$f10
 # ["exec_times": 144]
	add.d	$f22,$f22,$f16
 # ["exec_times": 144]
	# .loc	3, 312
 # ["exec_times": 0]
	li	$t5,48
 # ["exec_times": 144]
	addu	$t6,$s0,$t5
 # ["fields": "next_branch"]
 # ["exec_times": 144]
	lw	$s2,0($t6)
 # ["exec_times": 144]
	# .loc	3, 313
 # ["exec_times": 0]
	la	$t7,0($zero)
 # ["exec_times": 144]
	sne	$t8,$s2,$t7
 # ["exec_times": 144]
	beqz	$t8,Compute_Branch.L1
 # ["exec_times": 144]
 # ["instr_profile": 144 144]
	nop	
	# .loc	3, 315
 # ["exec_times": 0]
	spawn	Compute_Branch.L8
 # ["cqip_pos": <L:Compute_Branch.L8,0>]
	la	$t0,Compute_Branch
 # ["exec_times": 0]
	la	$a0,1352($sp)
	move	$a1,$s2
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f24,-24($sp)
	s.d	$f20,-32($sp)
	s.d	$f22,-40($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "Compute_Branch"]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
Compute_Branch.L1:
	cqip	Compute_Branch.L8
 # ["cqip_pos": <L:Compute_Branch.L8,0>]
Compute_Branch.L8:
	pslice_entry	Compute_Branch.L8
 # ["pslice_entry_pos": <L:Compute_Branch.L8,0>]
	pslice_exit	Compute_Branch.L8
 # ["pslice_exit_pos": <L:Compute_Branch.L8,0>]
	spawn	Compute_Branch.L9
 # ["cqip_pos": <L:Compute_Branch.L9,0>]
	cqip	Compute_Branch.L7
 # ["cqip_pos": <L:Compute_Branch.L7,0>]
Compute_Branch.L7:
	pslice_entry	Compute_Branch.L7
 # ["pslice_entry_pos": <L:Compute_Branch.L7,0>]
	pslice_exit	Compute_Branch.L7
 # ["pslice_exit_pos": <L:Compute_Branch.L7,0>]
	# .loc	3, 322
 # ["exec_times": 0]
	la	$t9,1432($sp)
 # ["fields": "P"]
 # ["exec_times": 144]
	li.d	$f18,0.000000000000000000e+00
 # ["exec_times": 144]
	s.d	$f18,0($t9)
 # ["exec_times": 144]
	# .loc	3, 323
 # ["exec_times": 0]
	la	$a0,1440($sp)
 # ["exec_times": 144]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 144]
	s.d	$f12,0($a0)
 # ["exec_times": 144]
	# .loc	3, 325
 # ["exec_times": 0]
	move	$s3,$zero
 # ["exec_times": 144]
Compute_Branch.L5:
	# .loc	3, 326
 # ["exec_times": 0]
	li	$a1,52
 # ["exec_times": 288]
	addu	$t8,$s0,$a1
 # ["fields": "leaves"]
 # ["exec_times": 288]
	li	$a2,4
 # ["exec_times": 288]
	mult	$s3,$a2
	mflo	$a3
 # ["exec_times": 288]
	addu	$v0,$t8,$a3
 # ["exec_times": 288]
	lw	$a1,0($v0)
 # ["exec_times": 288]
	# .loc	3, 327
 # ["exec_times": 0]
	la	$t0,Compute_Leaf
 # ["exec_times": 288]
	la	$a0,1448($sp)
	mov.d	$f14,$f20
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 288]
 # ["proc_name": "Compute_Leaf"]
 # ["call_overhead": 697]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
	# .loc	3, 328
 # ["exec_times": 0]
	la	$v1,1432($sp)
 # ["fields": "P"]
 # ["exec_times": 288]
	la	$t0,1432($sp)
 # ["fields": "P"]
 # ["exec_times": 288]
	l.d	$f14,0($t0)
 # ["exec_times": 288]
	la	$t1,1448($sp)
 # ["fields": "P"]
 # ["exec_times": 288]
	l.d	$f0,0($t1)
 # ["exec_times": 288]
	add.d	$f2,$f14,$f0
 # ["exec_times": 288]
	s.d	$f2,0($v1)
 # ["exec_times": 288]
	# .loc	3, 329
 # ["exec_times": 0]
	la	$t2,1440($sp)
 # ["exec_times": 288]
	la	$t3,1440($sp)
 # ["exec_times": 288]
	l.d	$f4,0($t3)
 # ["exec_times": 288]
	la	$t4,1456($sp)
 # ["exec_times": 288]
	l.d	$f6,0($t4)
 # ["exec_times": 288]
	add.d	$f8,$f4,$f6
 # ["exec_times": 288]
	s.d	$f8,0($t2)
 # ["exec_times": 288]
	li	$t5,1
 # ["exec_times": 288]
	addu	$s3,$s3,$t5
 # ["exec_times": 288]
	li	$t6,2
 # ["exec_times": 288]
	sle	$t7,$t6,$s3
 # ["exec_times": 288]
	beqz	$t7,Compute_Branch.L5
 # ["exec_times": 288]
 # ["instr_profile": 288 144]
	nop	
	cqip	Compute_Branch.L9
 # ["cqip_pos": <L:Compute_Branch.L9,0>]
Compute_Branch.L9:
	pslice_entry	Compute_Branch.L9
 # ["pslice_entry_pos": <L:Compute_Branch.L9,0>]
	pslice_exit	Compute_Branch.L9
 # ["pslice_exit_pos": <L:Compute_Branch.L9,0>]
	spawn	Compute_Branch.L10
 # ["cqip_pos": <L:Compute_Branch.L10,0>]
	# .loc	3, 331
 # ["exec_times": 0]
	la	$t8,0($zero)
 # ["exec_times": 144]
	sne	$t9,$s2,$t8
 # ["exec_times": 144]
	beqz	$t9,Compute_Branch.L4
 # ["exec_times": 144]
 # ["instr_profile": 144 144]
	nop	
	# .loc	3, 333
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	addu	$a1,$s0,$a0
 # ["fields": "D" "P"]
 # ["exec_times": 0]
	la	$a2,1352($sp)
 # ["fields": "P"]
 # ["exec_times": 0]
	l.d	$f10,0($a2)
 # ["exec_times": 0]
	la	$a3,1432($sp)
 # ["fields": "P"]
 # ["exec_times": 0]
	l.d	$f16,0($a3)
 # ["exec_times": 0]
	add.d	$f18,$f10,$f16
 # ["exec_times": 0]
	s.d	$f18,0($a1)
 # ["exec_times": 0]
	# .loc	3, 334
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 0]
	addu	$v1,$s0,$v0
 # ["fields": "D" "Q"]
 # ["exec_times": 0]
	la	$t0,1360($sp)
 # ["exec_times": 0]
	l.d	$f12,0($t0)
 # ["exec_times": 0]
	la	$t1,1440($sp)
 # ["exec_times": 0]
	l.d	$f14,0($t1)
 # ["exec_times": 0]
	add.d	$f0,$f12,$f14
 # ["exec_times": 0]
	s.d	$f0,0($v1)
 # ["exec_times": 0]
	j	Compute_Branch.__done6
 # ["exec_times": 0]
	nop	
Compute_Branch.L4:
	# .loc	3, 341
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 144]
	addu	$t3,$s0,$t2
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	la	$t4,1432($sp)
 # ["fields": "P"]
 # ["exec_times": 144]
	l.d	$f2,0($t4)
 # ["exec_times": 144]
	s.d	$f2,0($t3)
 # ["exec_times": 144]
	# .loc	3, 342
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 144]
	addu	$t6,$s0,$t5
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	la	$t7,1440($sp)
 # ["exec_times": 144]
	l.d	$f4,0($t7)
 # ["exec_times": 144]
	s.d	$f4,0($t6)
 # ["exec_times": 144]
Compute_Branch.__done6:
	# .loc	3, 346
 # ["exec_times": 0]
	li	$t8,32
 # ["exec_times": 144]
	addu	$t9,$s0,$t8
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f6,0($t9)
 # ["exec_times": 144]
	li	$a0,32
 # ["exec_times": 144]
	addu	$a1,$s0,$a0
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f8,0($a1)
 # ["exec_times": 144]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 144]
	li	$a2,40
 # ["exec_times": 144]
	addu	$a3,$s0,$a2
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f16,0($a3)
 # ["exec_times": 144]
	li	$v0,40
 # ["exec_times": 144]
	addu	$v1,$s0,$v0
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f18,0($v1)
 # ["exec_times": 144]
	mul.d	$f12,$f16,$f18
 # ["exec_times": 144]
	add.d	$f20,$f10,$f12
 # ["exec_times": 144]
	# .loc	3, 347
 # ["exec_times": 0]
	li.d	$f14,2.000000000000000000e+00
 # ["exec_times": 144]
	li	$t0,32
 # ["exec_times": 144]
	addu	$t1,$s0,$t0
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f0,0($t1)
 # ["exec_times": 144]
	mul.d	$f2,$f14,$f0
 # ["exec_times": 144]
	li	$t2,40
 # ["exec_times": 144]
	addu	$t3,$s0,$t2
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f4,0($t3)
 # ["exec_times": 144]
	mul.d	$f6,$f2,$f4
 # ["exec_times": 144]
	li	$t4,8
 # ["exec_times": 144]
	addu	$t5,$s0,$t4
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	l.d	$f8,0($t5)
 # ["exec_times": 144]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 144]
	li.d	$f16,2.000000000000000000e+00
 # ["exec_times": 144]
	li	$t6,40
 # ["exec_times": 144]
	addu	$t7,$s0,$t6
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f18,0($t7)
 # ["exec_times": 144]
	mul.d	$f12,$f16,$f18
 # ["exec_times": 144]
	li	$t8,40
 # ["exec_times": 144]
	addu	$t9,$s0,$t8
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f14,0($t9)
 # ["exec_times": 144]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 144]
	move	$a0,$zero
 # ["exec_times": 144]
	addu	$a1,$s0,$a0
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f2,0($a1)
 # ["exec_times": 144]
	mul.d	$f4,$f0,$f2
 # ["exec_times": 144]
	sub.d	$f6,$f10,$f4
 # ["exec_times": 144]
	li	$a2,32
 # ["exec_times": 144]
	addu	$a3,$s0,$a2
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f8,0($a3)
 # ["exec_times": 144]
	sub.d	$f24,$f6,$f8
 # ["exec_times": 144]
	# .loc	3, 348
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 144]
	addu	$v1,$s0,$v0
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f10,0($v1)
 # ["exec_times": 144]
	li	$t0,8
 # ["exec_times": 144]
	addu	$t1,$s0,$t0
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	l.d	$f16,0($t1)
 # ["exec_times": 144]
	mul.d	$f18,$f10,$f16
 # ["exec_times": 144]
	li	$t2,40
 # ["exec_times": 144]
	addu	$t3,$s0,$t2
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f12,0($t3)
 # ["exec_times": 144]
	move	$t4,$zero
 # ["exec_times": 144]
	addu	$t5,$s0,$t4
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f14,0($t5)
 # ["exec_times": 144]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 144]
	sub.d	$f2,$f18,$f0
 # ["exec_times": 144]
	# .loc	3, 349
 # ["exec_times": 0]
	mul.d	$f4,$f2,$f2
 # ["exec_times": 144]
	li	$t6,32
 # ["exec_times": 144]
	addu	$t7,$s0,$t6
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f6,0($t7)
 # ["exec_times": 144]
	move	$t8,$zero
 # ["exec_times": 144]
	addu	$t9,$s0,$t8
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f8,0($t9)
 # ["exec_times": 144]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 144]
	add.d	$f2,$f4,$f10
 # ["exec_times": 144]
	# .loc	3, 350
 # ["exec_times": 0]
	neg.d	$f22,$f24
 # ["exec_times": 144]
	la	$t0,sqrt
 # ["exec_times": 144]
	mul.d	$f16,$f24,$f24
 # ["exec_times": 144]
	li.d	$f18,4.000000000000000000e+00
 # ["exec_times": 144]
	mul.d	$f12,$f18,$f20
 # ["exec_times": 144]
	mul.d	$f14,$f12,$f2
 # ["exec_times": 144]
	sub.d	$f12,$f16,$f14
 # ["exec_times": 144]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 144]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	cqip	Compute_Branch.L10
 # ["cqip_pos": <L:Compute_Branch.L10,0>]
Compute_Branch.L10:
	pslice_entry	Compute_Branch.L10
 # ["pslice_entry_pos": <L:Compute_Branch.L10,0>]
	pslice_exit	Compute_Branch.L10
 # ["pslice_exit_pos": <L:Compute_Branch.L10,0>]
	sub.d	$f0,$f22,$f0
 # ["exec_times": 144]
	li.d	$f2,2.000000000000000000e+00
 # ["exec_times": 144]
	mul.d	$f4,$f2,$f20
 # ["exec_times": 144]
	div.d	$f6,$f0,$f4
 # ["exec_times": 144]
	# .loc	3, 351
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 144]
	addu	$a1,$s0,$a0
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	li	$a2,8
 # ["exec_times": 144]
	addu	$a3,$s0,$a2
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	l.d	$f8,0($a3)
 # ["exec_times": 144]
	move	$v0,$zero
 # ["exec_times": 144]
	addu	$v1,$s0,$v0
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f10,0($v1)
 # ["exec_times": 144]
	sub.d	$f16,$f6,$f10
 # ["exec_times": 144]
	li	$t0,40
 # ["exec_times": 144]
	addu	$t1,$s0,$t0
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f18,0($t1)
 # ["exec_times": 144]
	mul.d	$f12,$f16,$f18
 # ["exec_times": 144]
	li	$t2,32
 # ["exec_times": 144]
	addu	$t3,$s0,$t2
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f14,0($t3)
 # ["exec_times": 144]
	div.d	$f0,$f12,$f14
 # ["exec_times": 144]
	add.d	$f2,$f8,$f0
 # ["exec_times": 144]
	s.d	$f2,0($a1)
 # ["exec_times": 144]
	# .loc	3, 352
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 144]
	addu	$t5,$s0,$t4
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	s.d	$f6,0($t5)
 # ["exec_times": 144]
	# .loc	3, 354
 # ["exec_times": 0]
	li.d	$f4,2.000000000000000000e+00
 # ["exec_times": 144]
	li	$t6,32
 # ["exec_times": 144]
	addu	$t7,$s0,$t6
 # ["fields": "R"]
 # ["exec_times": 144]
	l.d	$f6,0($t7)
 # ["exec_times": 144]
	mul.d	$f8,$f4,$f6
 # ["exec_times": 144]
	move	$t8,$zero
 # ["exec_times": 144]
	addu	$t9,$s0,$t8
 # ["fields": "D" "P"]
 # ["exec_times": 144]
	l.d	$f10,0($t9)
 # ["exec_times": 144]
	mul.d	$f20,$f8,$f10
 # ["exec_times": 144]
	# .loc	3, 355
 # ["exec_times": 0]
	li.d	$f16,2.000000000000000000e+00
 # ["exec_times": 144]
	li	$a0,40
 # ["exec_times": 144]
	addu	$a1,$s0,$a0
 # ["fields": "X"]
 # ["exec_times": 144]
	l.d	$f18,0($a1)
 # ["exec_times": 144]
	mul.d	$f12,$f16,$f18
 # ["exec_times": 144]
	li	$a2,8
 # ["exec_times": 144]
	addu	$a3,$s0,$a2
 # ["fields": "D" "Q"]
 # ["exec_times": 144]
	l.d	$f14,0($a3)
 # ["exec_times": 144]
	mul.d	$f24,$f12,$f14
 # ["exec_times": 144]
	# .loc	3, 356
 # ["exec_times": 0]
	li	$v0,16
 # ["exec_times": 144]
	addu	$v1,$s0,$v0
 # ["fields": "alpha"]
 # ["exec_times": 144]
	li.d	$f0,1.000000000000000000e+00
 # ["exec_times": 144]
	sub.d	$f2,$f0,$f20
 # ["exec_times": 144]
	sub.d	$f4,$f2,$f24
 # ["exec_times": 144]
	div.d	$f6,$f20,$f4
 # ["exec_times": 144]
	s.d	$f6,0($v1)
 # ["exec_times": 144]
	# .loc	3, 357
 # ["exec_times": 0]
	li	$t0,24
 # ["exec_times": 144]
	addu	$t1,$s0,$t0
 # ["fields": "beta"]
 # ["exec_times": 144]
	li.d	$f8,1.000000000000000000e+00
 # ["exec_times": 144]
	sub.d	$f10,$f8,$f20
 # ["exec_times": 144]
	sub.d	$f16,$f10,$f24
 # ["exec_times": 144]
	div.d	$f18,$f24,$f16
 # ["exec_times": 144]
	s.d	$f18,0($t1)
 # ["exec_times": 144]
	# .loc	3, 359
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 144]
	addu	$t3,$s0,$t2
 # ["fields": "D"]
 # ["exec_times": 144]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t4,0($t3)
 # ["struct alignment": 64]
	la	$t5,56($sp)
	lw	$t6,0($t4)
	lw	$t7,4($t4)
	lw	$t8,8($t4)
	sw	$t6,0($t5)
	sw	$t7,4($t5)
	sw	$t8,8($t5)
	lw	$t9,12($t4)
	sw	$t9,12($t5)
	# END structure move
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$a0,56($sp)
 # ["struct alignment": 64]
	la	$a1,0($s1)
	lw	$a2,0($a0)
	lw	$a3,4($a0)
	lw	$v0,8($a0)
	sw	$a2,0($a1)
	sw	$a3,4($a1)
	sw	$v0,8($a1)
	lw	$v1,12($a0)
	sw	$v1,12($a1)
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
	l.d	$f20,24($sp)
 # ["header/trailer":]
	l.d	$f22,32($sp)
 # ["header/trailer":]
	l.d	$f24,40($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 144]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	Compute_Branch 
	.text	
	.align	2
	.align	2
	.globl	Compute_Leaf
	# .loc	3, 363
	.ent	Compute_Leaf 
Compute_Leaf:
	spawn	Compute_Leaf.headerspawn
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
	.mask	0x80030000, -128
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	Compute_Leaf.headerspawn
 # ["header/trailer":]
Compute_Leaf.headerspawn:
 # ["header/trailer":]
	pslice_entry	Compute_Leaf.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	Compute_Leaf.headerspawn
	spawn	Compute_Leaf.L3
 # ["cqip_pos": <L:Compute_Leaf.L3,0>]
	l.d	$f4,104($sp)
	move	$s1,$a0
	move	$s0,$a1
	mtc1	$a2,$f14
	mtc1	$a3,$f15
	# .loc	3, 364
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 288]
	addu	$t7,$s0,$t6
 # ["fields": "D" "P"]
 # ["exec_times": 288]
	l.d	$f6,0($t7)
 # ["exec_times": 288]
	s.d	$f6,P
	# .loc	3, 365
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 288]
	addu	$t9,$s0,$t8
 # ["fields": "D" "Q"]
 # ["exec_times": 288]
	l.d	$f8,0($t9)
 # ["exec_times": 288]
	s.d	$f8,Q
	# .loc	3, 366
 # ["exec_times": 0]
	la	$t0,optimize_node
 # ["exec_times": 288]
	mov.d	$f12,$f14
	mov.d	$f14,$f4
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 288]
 # ["proc_name": "optimize_node"]
 # ["call_overhead": 676]
 # ["regs_used": 32 34]
	nop	
	cqip	Compute_Leaf.L3
 # ["cqip_pos": <L:Compute_Leaf.L3,0>]
Compute_Leaf.L3:
	pslice_entry	Compute_Leaf.L3
 # ["pslice_entry_pos": <L:Compute_Leaf.L3,0>]
	pslice_exit	Compute_Leaf.L3
 # ["pslice_exit_pos": <L:Compute_Leaf.L3,0>]
	# .loc	3, 367
 # ["exec_times": 0]
	li.d	$f10,0.000000000000000000e+00
 # ["exec_times": 288]
	li	$a0,1
	l.d	$f16,P
	c.lt.d	$f16,$f10
 # ["exec_times": 288]
	bc1t	Compute_Leaf.L2
	nop	
	move	$a0,$zero
Compute_Leaf.L2:
	beqz	$a0,Compute_Leaf.L1
 # ["exec_times": 288]
 # ["instr_profile": 288 288]
	nop	
	# .loc	3, 368
 # ["exec_times": 0]
	li.d	$f18,0.000000000000000000e+00
 # ["exec_times": 0]
	s.d	$f18,P
	# .loc	3, 369
 # ["exec_times": 0]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 0]
	s.d	$f12,Q
Compute_Leaf.L1:
	# .loc	3, 371
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 288]
	addu	$a2,$s0,$a1
 # ["fields": "D" "P"]
 # ["exec_times": 288]
	l.d	$f14,P
	s.d	$f14,0($a2)
 # ["exec_times": 288]
	# .loc	3, 372
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 288]
	addu	$v0,$s0,$a3
 # ["fields": "D" "Q"]
 # ["exec_times": 288]
	l.d	$f0,Q
	s.d	$f0,0($v0)
 # ["exec_times": 288]
	# .loc	3, 373
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 288]
	addu	$t0,$s0,$v1
 # ["fields": "D"]
 # ["exec_times": 288]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t1,0($t0)
 # ["struct alignment": 64]
	la	$t2,24($sp)
	lw	$t3,0($t1)
	lw	$t4,4($t1)
	lw	$t5,8($t1)
	sw	$t3,0($t2)
	sw	$t4,4($t2)
	sw	$t5,8($t2)
	lw	$t6,12($t1)
	sw	$t6,12($t2)
	# END structure move
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t7,24($sp)
 # ["struct alignment": 64]
	la	$t8,0($s1)
	lw	$t9,0($t7)
	lw	$a0,4($t7)
	lw	$a1,8($t7)
	sw	$t9,0($t8)
	sw	$a0,4($t8)
	sw	$a1,8($t8)
	lw	$a2,12($t7)
	sw	$a2,12($t8)
	# END structure move
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 288]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	Compute_Leaf 
	.text	
	.align	2
	.align	2
	.globl	optimize_node
	# .loc	3, 379
	.ent	optimize_node 
optimize_node:
	spawn	optimize_node.headerspawn
 # ["header/trailer":]
	la	$sp,-1040($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -1040
 # ["header/trailer":]
	s.d	$f20,8($sp)
 # ["header/trailer":]
	s.d	$f22,16($sp)
 # ["header/trailer":]
	s.d	$f24,24($sp)
 # ["header/trailer":]
	s.d	$f26,32($sp)
 # ["header/trailer":]
	s.d	$f28,40($sp)
 # ["header/trailer":]
	.fmask	0x15500000, -1040
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 1040, $31
 # ["header/trailer":]
	cqip	optimize_node.headerspawn
 # ["header/trailer":]
optimize_node.headerspawn:
 # ["header/trailer":]
	pslice_entry	optimize_node.headerspawn
 # ["header/trailer":]
	la	$sp,-1040($sp)
 # ["header/trailer":]
	pslice_exit	optimize_node.headerspawn
	spawn	optimize_node.spawntail4
	mov.d	$f22,$f12
	mov.d	$f20,$f14
optimize_node.L3:
	# .loc	3, 394
 # ["exec_times": 0]
	la	$t0,find_h
 # ["exec_times": 544]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_h"]
 # ["call_overhead": 4]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	3, 395
 # ["exec_times": 0]
	li.d	$f8,0.000000000000000000e+00
 # ["exec_times": 544]
	li	$a0,1
	c.lt.d	$f8,$f24
 # ["exec_times": 544]
	bc1t	optimize_node.L27
	nop	
	move	$a0,$zero
optimize_node.L27:
	beqz	$a0,optimize_node.L4
 # ["exec_times": 544]
 # ["instr_profile": 544 16]
	nop	
	mov.d	$f4,$f24
 # ["exec_times": 528]
	j	optimize_node.__done1
 # ["exec_times": 528]
 # ["instr_profile": 528 528]
	nop	
optimize_node.L4:
	neg.d	$f4,$f24
 # ["exec_times": 16]
optimize_node.__done1:
	li.d	$f10,1.000000000000000021e-03
 # ["exec_times": 544]
	li	$a1,1
	c.lt.d	$f10,$f4
 # ["exec_times": 544]
	bc1t	optimize_node.L28
	nop	
	move	$a1,$zero
optimize_node.L28:
	beqz	$a1,optimize_node.L5
 # ["exec_times": 544]
 # ["instr_profile": 544 528]
	nop	
	# .loc	3, 396
 # ["exec_times": 0]
	la	$t0,find_gradient_h
 # ["exec_times": 16]
	la	$a0,960($sp)
 # ["exec_times": 16]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 16]
 # ["proc_name": "find_gradient_h"]
 # ["call_overhead": 64]
 # ["regs_used": 5]
 # ["regs_defd": 36]
	nop	
	mov.d	$f26,$f0
	# .loc	3, 397
 # ["exec_times": 0]
	div.d	$f24,$f24,$f26
 # ["exec_times": 16]
	# .loc	3, 398
 # ["exec_times": 0]
	la	$a2,960($sp)
 # ["exec_times": 16]
	l.d	$f16,0($a2)
 # ["exec_times": 16]
	mul.d	$f18,$f24,$f16
 # ["exec_times": 16]
	l.d	$f12,P
	sub.d	$f14,$f12,$f18
 # ["exec_times": 16]
	s.d	$f14,P
	# .loc	3, 399
 # ["exec_times": 0]
	la	$a3,968($sp)
 # ["exec_times": 16]
	l.d	$f0,0($a3)
 # ["exec_times": 16]
	mul.d	$f2,$f24,$f0
 # ["exec_times": 16]
	l.d	$f4,Q
	sub.d	$f6,$f4,$f2
 # ["exec_times": 16]
	s.d	$f6,Q
optimize_node.L5:
	# .loc	3, 403
 # ["exec_times": 0]
	la	$t0,find_g
 # ["exec_times": 544]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_g"]
 # ["call_overhead": 6]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	mov.d	$f28,$f0
	# .loc	3, 404
 # ["exec_times": 0]
	li.d	$f8,1.000000000000000021e-03
 # ["exec_times": 544]
	li	$v0,1
	c.lt.d	$f8,$f28
 # ["exec_times": 544]
	bc1t	optimize_node.L29
	nop	
	move	$v0,$zero
optimize_node.L29:
	beqz	$v0,optimize_node.L6
 # ["exec_times": 544]
 # ["instr_profile": 544 496]
	nop	
	# .loc	3, 405
 # ["exec_times": 0]
	la	$t0,find_gradient_g
 # ["exec_times": 48]
	la	$a0,976($sp)
 # ["exec_times": 48]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 48]
 # ["proc_name": "find_gradient_g"]
 # ["call_overhead": 66]
 # ["regs_used": 5]
 # ["regs_defd": 36]
	nop	
	mov.d	$f26,$f0
	# .loc	3, 406
 # ["exec_times": 0]
	la	$t0,find_gradient_h
 # ["exec_times": 48]
	la	$a0,960($sp)
 # ["exec_times": 48]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 48]
 # ["proc_name": "find_gradient_h"]
 # ["call_overhead": 64]
 # ["regs_used": 5]
	nop	
	# .loc	3, 407
 # ["exec_times": 0]
	la	$t0,make_orthogonal
 # ["exec_times": 48]
	la	$a0,976($sp)
 # ["exec_times": 48]
	la	$a1,960($sp)
 # ["exec_times": 48]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 48]
 # ["proc_name": "make_orthogonal"]
 # ["call_overhead": 123]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mul.d	$f26,$f26,$f0
 # ["exec_times": 48]
	# .loc	3, 408
 # ["exec_times": 0]
	div.d	$f24,$f28,$f26
 # ["exec_times": 48]
	# .loc	3, 409
 # ["exec_times": 0]
	la	$v1,976($sp)
 # ["exec_times": 48]
	l.d	$f10,0($v1)
 # ["exec_times": 48]
	mul.d	$f16,$f24,$f10
 # ["exec_times": 48]
	l.d	$f18,P
	sub.d	$f12,$f18,$f16
 # ["exec_times": 48]
	s.d	$f12,P
	# .loc	3, 410
 # ["exec_times": 0]
	la	$t0,984($sp)
 # ["exec_times": 48]
	l.d	$f14,0($t0)
 # ["exec_times": 48]
	mul.d	$f0,$f24,$f14
 # ["exec_times": 48]
	l.d	$f2,Q
	sub.d	$f4,$f2,$f0
 # ["exec_times": 48]
	s.d	$f4,Q
optimize_node.L6:
	# .loc	3, 414
 # ["exec_times": 0]
	la	$t0,find_gradient_f
 # ["exec_times": 544]
	la	$t1,992($sp)
 # ["exec_times": 544]
	mov.d	$f12,$f22
	mov.d	$f14,$f20
	move	$fp,$sp
	fst	$sp
	sw	$t1,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_gradient_f"]
 # ["call_overhead": 72]
 # ["regs_used": 32 34]
 # ["regs_defd": 36]
	nop	
	mov.d	$f26,$f0
	# .loc	3, 415
 # ["exec_times": 0]
	la	$t0,find_dd_grad_f
 # ["exec_times": 544]
	la	$t2,944($sp)
 # ["exec_times": 544]
	mov.d	$f12,$f22
	mov.d	$f14,$f20
	move	$fp,$sp
	fst	$sp
	sw	$t2,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_dd_grad_f"]
 # ["call_overhead": 28]
 # ["regs_used": 32 34]
	nop	
	# .loc	3, 416
 # ["exec_times": 0]
	li.d	$f24,0.000000000000000000e+00
 # ["exec_times": 544]
	# .loc	3, 417
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 544]
optimize_node.L20:
	# .loc	3, 418
 # ["exec_times": 0]
	la	$t4,992($sp)
 # ["exec_times": 1088]
	li	$t5,8
 # ["exec_times": 1088]
	mult	$t3,$t5
	mflo	$t6
 # ["exec_times": 1088]
	addu	$t7,$t4,$t6
 # ["exec_times": 1088]
	l.d	$f6,0($t7)
 # ["exec_times": 1088]
	la	$t8,944($sp)
 # ["exec_times": 1088]
	li	$t9,8
 # ["exec_times": 1088]
	mult	$t3,$t9
	mflo	$a0
 # ["exec_times": 1088]
	addu	$a1,$t8,$a0
 # ["exec_times": 1088]
	l.d	$f8,0($a1)
 # ["exec_times": 1088]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 1088]
	add.d	$f24,$f24,$f10
 # ["exec_times": 1088]
	li	$a2,1
 # ["exec_times": 1088]
	addu	$t3,$t3,$a2
 # ["exec_times": 1088]
	li	$a3,2
 # ["exec_times": 1088]
	sle	$v0,$a3,$t3
 # ["exec_times": 1088]
	beqz	$v0,optimize_node.L20
 # ["exec_times": 1088]
 # ["instr_profile": 1088 544]
	nop	
	# .loc	3, 419
 # ["exec_times": 0]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 544]
	li	$v1,1
	c.lt.d	$f16,$f24
 # ["exec_times": 544]
	bc1t	optimize_node.L30
	nop	
	move	$v1,$zero
optimize_node.L30:
	beqz	$v1,optimize_node.L9
 # ["exec_times": 544]
 # ["instr_profile": 544 544]
	nop	
optimize_node.L40:
	j	optimize_node.__done21
 # ["exec_times": 0]
	nop	
optimize_node.L9:
	neg.d	$f24,$f24
 # ["exec_times": 544]
optimize_node.__done21:
	div.d	$f26,$f26,$f24
 # ["exec_times": 544]
	# .loc	3, 420
 # ["exec_times": 0]
	la	$t0,find_gradient_h
 # ["exec_times": 544]
	la	$a0,960($sp)
 # ["exec_times": 544]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_gradient_h"]
 # ["call_overhead": 64]
 # ["regs_used": 5]
	nop	
	# .loc	3, 421
 # ["exec_times": 0]
	la	$t0,make_orthogonal
 # ["exec_times": 544]
	la	$a0,992($sp)
 # ["exec_times": 544]
	la	$a1,960($sp)
 # ["exec_times": 544]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "make_orthogonal"]
 # ["call_overhead": 123]
 # ["regs_used": 5 6]
 # ["regs_defd": 36]
	nop	
	mul.d	$f26,$f26,$f0
 # ["exec_times": 544]
	# .loc	3, 422
 # ["exec_times": 0]
	la	$t0,find_gradient_g
 # ["exec_times": 544]
	la	$a0,976($sp)
 # ["exec_times": 544]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_gradient_g"]
 # ["call_overhead": 66]
 # ["regs_used": 5]
	nop	
	# .loc	3, 423
 # ["exec_times": 0]
	li.d	$f24,0.000000000000000000e+00
 # ["exec_times": 544]
	# .loc	3, 424
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 544]
optimize_node.L22:
	# .loc	3, 425
 # ["exec_times": 0]
	la	$t0,992($sp)
 # ["exec_times": 1088]
	li	$t1,8
 # ["exec_times": 1088]
	mult	$t3,$t1
	mflo	$t2
 # ["exec_times": 1088]
	addu	$t4,$t0,$t2
 # ["exec_times": 1088]
	l.d	$f18,0($t4)
 # ["exec_times": 1088]
	la	$t4,976($sp)
 # ["exec_times": 1088]
	li	$t5,8
 # ["exec_times": 1088]
	mult	$t3,$t5
	mflo	$t6
 # ["exec_times": 1088]
	addu	$t7,$t4,$t6
 # ["exec_times": 1088]
	l.d	$f12,0($t7)
 # ["exec_times": 1088]
	mul.d	$f14,$f18,$f12
 # ["exec_times": 1088]
	add.d	$f24,$f24,$f14
 # ["exec_times": 1088]
	li	$t8,1
 # ["exec_times": 1088]
	addu	$t3,$t3,$t8
 # ["exec_times": 1088]
	li	$t9,2
 # ["exec_times": 1088]
	sle	$a0,$t9,$t3
 # ["exec_times": 1088]
	beqz	$a0,optimize_node.L22
 # ["exec_times": 1088]
 # ["instr_profile": 1088 544]
	nop	
	# .loc	3, 426
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 544]
	li	$a1,1
	c.lt.d	$f0,$f24
 # ["exec_times": 544]
	bc1t	optimize_node.L31
	nop	
	move	$a1,$zero
optimize_node.L31:
	beqz	$a1,optimize_node.L12
 # ["exec_times": 544]
 # ["instr_profile": 544 112]
	nop	
	# .loc	3, 427
 # ["exec_times": 0]
	la	$t0,find_g
 # ["exec_times": 432]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 432]
 # ["proc_name": "find_g"]
 # ["call_overhead": 6]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	neg.d	$f2,$f0
 # ["exec_times": 432]
	div.d	$f6,$f2,$f24
 # ["exec_times": 432]
	# .loc	3, 428
 # ["exec_times": 0]
	li	$a2,1
	c.lt.d	$f6,$f26
 # ["exec_times": 432]
	bc1t	optimize_node.L32
	nop	
	move	$a2,$zero
optimize_node.L32:
	beqz	$a2,optimize_node.L12
 # ["exec_times": 432]
 # ["instr_profile": 432 128]
	nop	
	# .loc	3, 429
 # ["exec_times": 0]
	mov.d	$f26,$f6
 # ["exec_times": 304]
optimize_node.L12:
	# .loc	3, 431
 # ["exec_times": 0]
	la	$a3,992($sp)
 # ["exec_times": 544]
	l.d	$f4,0($a3)
 # ["exec_times": 544]
	mul.d	$f6,$f26,$f4
 # ["exec_times": 544]
	l.d	$f8,P
	add.d	$f10,$f8,$f6
 # ["exec_times": 544]
	s.d	$f10,P
	# .loc	3, 432
 # ["exec_times": 0]
	la	$v0,1000($sp)
 # ["exec_times": 544]
	l.d	$f16,0($v0)
 # ["exec_times": 544]
	mul.d	$f18,$f26,$f16
 # ["exec_times": 544]
	l.d	$f12,Q
	add.d	$f14,$f12,$f18
 # ["exec_times": 544]
	s.d	$f14,Q
	# .loc	3, 434
 # ["exec_times": 0]
	la	$t0,find_h
 # ["exec_times": 544]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_h"]
 # ["call_overhead": 4]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	mov.d	$f24,$f0
	# .loc	3, 435
 # ["exec_times": 0]
	la	$t0,find_g
 # ["exec_times": 544]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_g"]
 # ["call_overhead": 6]
 # ["regs_used":]
 # ["regs_defd": 36]
	nop	
	mov.d	$f28,$f0
	# .loc	3, 436
 # ["exec_times": 0]
	la	$t0,find_gradient_f
 # ["exec_times": 544]
	la	$v1,992($sp)
 # ["exec_times": 544]
	mov.d	$f12,$f22
	mov.d	$f14,$f20
	move	$fp,$sp
	fst	$sp
	sw	$v1,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_gradient_f"]
 # ["call_overhead": 72]
 # ["regs_used": 32 34]
	nop	
	# .loc	3, 437
 # ["exec_times": 0]
	la	$t0,find_gradient_h
 # ["exec_times": 544]
	la	$a0,960($sp)
 # ["exec_times": 544]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "find_gradient_h"]
 # ["call_overhead": 64]
 # ["regs_used": 5]
	nop	
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 544]
	li	$t0,1
	c.lt.d	$f0,$f24
 # ["exec_times": 544]
	bc1t	optimize_node.L33
	nop	
	move	$t0,$zero
optimize_node.L33:
	beqz	$t0,optimize_node.L14
 # ["exec_times": 544]
 # ["instr_profile": 544 0]
	nop	
optimize_node.L41:
	j	optimize_node.__done20
 # ["exec_times": 544]
 # ["instr_profile": 544 544]
	nop	
optimize_node.L14:
	neg.d	$f24,$f24
 # ["exec_times": 0]
optimize_node.__done20:
	li.d	$f2,1.000000000000000021e-03
 # ["exec_times": 544]
	li	$t9,1
	c.lt.d	$f2,$f24
 # ["exec_times": 544]
	bc1t	optimize_node.L34
	nop	
	move	$t9,$zero
optimize_node.L34:
	beqz	$t9,optimize_node.L19
 # ["exec_times": 544]
 # ["instr_profile": 544 544]
	nop	
optimize_node.L42:
	j	optimize_node.__done26
 # ["exec_times": 0]
	nop	
optimize_node.L19:
	li.d	$f4,1.000000000000000021e-03
 # ["exec_times": 544]
	li	$t9,1
	c.lt.d	$f4,$f28
 # ["exec_times": 544]
	bc1t	optimize_node.L35
	nop	
	move	$t9,$zero
optimize_node.L35:
	beqz	$t9,optimize_node.L18
 # ["exec_times": 544]
 # ["instr_profile": 544 512]
	nop	
optimize_node.L43:
	j	optimize_node.__done25
 # ["exec_times": 32]
 # ["instr_profile": 32 32]
	nop	
optimize_node.L18:
	li.d	$f6,0.000000000000000000e+00
 # ["exec_times": 512]
	li	$t1,1
	c.lt.d	$f6,$f28
 # ["exec_times": 512]
	bc1t	optimize_node.L36
	nop	
	move	$t1,$zero
optimize_node.L36:
	beqz	$t1,optimize_node.L15
 # ["exec_times": 512]
 # ["instr_profile": 512 384]
	nop	
optimize_node.L44:
	j	optimize_node.__done22
 # ["exec_times": 128]
 # ["instr_profile": 128 128]
	nop	
optimize_node.L15:
	neg.d	$f28,$f28
 # ["exec_times": 384]
optimize_node.__done22:
	li.d	$f8,1.000000000000000021e-03
 # ["exec_times": 512]
	li	$t9,1
	c.lt.d	$f8,$f28
 # ["exec_times": 512]
	bc1t	optimize_node.L37
	nop	
	move	$t9,$zero
optimize_node.L37:
	bnez	$t9,optimize_node.L17
 # ["exec_times": 512]
 # ["instr_profile": 512 256]
	nop	
optimize_node.L45:
	j	optimize_node.__done24
 # ["exec_times": 256]
 # ["instr_profile": 256 256]
	nop	
optimize_node.L17:
	li.d	$f10,0.000000000000000000e+00
 # ["exec_times": 256]
	la	$t2,992($sp)
 # ["exec_times": 256]
	l.d	$f16,0($t2)
 # ["exec_times": 256]
	la	$t3,968($sp)
 # ["exec_times": 256]
	l.d	$f18,0($t3)
 # ["exec_times": 256]
	mul.d	$f12,$f16,$f18
 # ["exec_times": 256]
	la	$t4,1000($sp)
 # ["exec_times": 256]
	l.d	$f14,0($t4)
 # ["exec_times": 256]
	la	$t5,960($sp)
 # ["exec_times": 256]
	l.d	$f0,0($t5)
 # ["exec_times": 256]
	mul.d	$f2,$f14,$f0
 # ["exec_times": 256]
	sub.d	$f4,$f12,$f2
 # ["exec_times": 256]
	li	$t6,1
	c.lt.d	$f10,$f4
 # ["exec_times": 256]
	bc1t	optimize_node.L38
	nop	
	move	$t6,$zero
optimize_node.L38:
	beqz	$t6,optimize_node.L16
 # ["exec_times": 256]
 # ["instr_profile": 256 144]
	nop	
	la	$t7,992($sp)
 # ["exec_times": 112]
	l.d	$f6,0($t7)
 # ["exec_times": 112]
	la	$t8,968($sp)
 # ["exec_times": 112]
	l.d	$f8,0($t8)
 # ["exec_times": 112]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 112]
	la	$t9,1000($sp)
 # ["exec_times": 112]
	l.d	$f16,0($t9)
 # ["exec_times": 112]
	la	$a0,960($sp)
 # ["exec_times": 112]
	l.d	$f18,0($a0)
 # ["exec_times": 112]
	mul.d	$f12,$f16,$f18
 # ["exec_times": 112]
	sub.d	$f14,$f10,$f12
 # ["exec_times": 112]
	j	optimize_node.__done23
 # ["exec_times": 112]
 # ["instr_profile": 112 112]
	nop	
optimize_node.L16:
	la	$a1,992($sp)
 # ["exec_times": 144]
	l.d	$f0,0($a1)
 # ["exec_times": 144]
	la	$a2,968($sp)
 # ["exec_times": 144]
	l.d	$f2,0($a2)
 # ["exec_times": 144]
	mul.d	$f4,$f0,$f2
 # ["exec_times": 144]
	la	$a3,1000($sp)
 # ["exec_times": 144]
	l.d	$f6,0($a3)
 # ["exec_times": 144]
	la	$v0,960($sp)
 # ["exec_times": 144]
	l.d	$f8,0($v0)
 # ["exec_times": 144]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 144]
	sub.d	$f16,$f4,$f10
 # ["exec_times": 144]
	neg.d	$f14,$f16
 # ["exec_times": 144]
optimize_node.__done23:
	li.d	$f18,1.000000000000000021e-03
 # ["exec_times": 256]
	li	$t9,1
	c.lt.d	$f18,$f14
 # ["exec_times": 256]
	bc1t	optimize_node.L39
	nop	
	move	$t9,$zero
optimize_node.L39:
optimize_node.__done24:
optimize_node.__done25:
optimize_node.__done26:
	bnez	$t9,optimize_node.L3
 # ["exec_times": 544]
 # ["instr_profile": 544 256]
	nop	
	# .loc	3, 446
 # ["exec_times": 0]
	cqip	optimize_node.spawntail4
optimize_node.spawntail4:
	pslice_entry	optimize_node.spawntail4
	pslice_exit	optimize_node.spawntail4
	lw	$ra,4($sp)
 # ["header/trailer":]
	l.d	$f20,8($sp)
 # ["header/trailer":]
	l.d	$f22,16($sp)
 # ["header/trailer":]
	l.d	$f24,24($sp)
 # ["header/trailer":]
	l.d	$f26,32($sp)
 # ["header/trailer":]
	l.d	$f28,40($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 288]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	optimize_node 
	.text	
	.align	2
	.align	2
	.globl	find_g
	# .loc	3, 449
	.ent	find_g 
find_g:
	spawn	find_g.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 48, $31
 # ["header/trailer":]
	cqip	find_g.headerspawn
 # ["header/trailer":]
find_g.headerspawn:
 # ["header/trailer":]
	pslice_entry	find_g.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	pslice_exit	find_g.headerspawn
	# .loc	3, 450
 # ["exec_times": 0]
	l.d	$f12,P
	l.d	$f14,P
	mul.d	$f0,$f12,$f14
 # ["exec_times": 1520]
	l.d	$f2,Q
	l.d	$f4,Q
	mul.d	$f6,$f2,$f4
 # ["exec_times": 1520]
	add.d	$f8,$f0,$f6
 # ["exec_times": 1520]
	li.d	$f10,8.000000000000000444e-01
 # ["exec_times": 1520]
	sub.d	$f0,$f8,$f10
 # ["exec_times": 1520]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1520]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	find_g 
	.text	
	.align	2
	.align	2
	.globl	find_h
	# .loc	3, 454
	.ent	find_h 
find_h:
	spawn	find_h.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 32, $31
 # ["header/trailer":]
	cqip	find_h.headerspawn
 # ["header/trailer":]
find_h.headerspawn:
 # ["header/trailer":]
	pslice_entry	find_h.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	pslice_exit	find_h.headerspawn
	# .loc	3, 455
 # ["exec_times": 0]
	li.d	$f16,5.000000000000000000e+00
 # ["exec_times": 1088]
	l.d	$f18,Q
	mul.d	$f12,$f16,$f18
 # ["exec_times": 1088]
	l.d	$f14,P
	sub.d	$f0,$f14,$f12
 # ["exec_times": 1088]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1088]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	find_h 
	.text	
	.align	2
	.align	2
	.globl	find_gradient_f
	# .loc	3, 459
	.ent	find_gradient_f 
find_gradient_f:
	spawn	find_gradient_f.headerspawn
 # ["header/trailer":]
	la	$sp,-256($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -256
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 256, $31
 # ["header/trailer":]
	cqip	find_gradient_f.headerspawn
 # ["header/trailer":]
find_gradient_f.headerspawn:
 # ["header/trailer":]
	pslice_entry	find_gradient_f.headerspawn
 # ["header/trailer":]
	la	$sp,-256($sp)
 # ["header/trailer":]
	pslice_exit	find_gradient_f.headerspawn
	spawn	find_gradient_f.L7
 # ["cqip_pos": <L:find_gradient_f.L7,0>]
	lw	$s0,236($sp)
	# .loc	3, 461
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 1088]
	# .loc	3, 463
 # ["exec_times": 0]
	li.d	$f4,1.000000000000000000e+00
 # ["exec_times": 1088]
	li.d	$f6,1.000000000000000000e+00
 # ["exec_times": 1088]
	l.d	$f8,P
	add.d	$f8,$f6,$f8
 # ["exec_times": 1088]
	div.d	$f10,$f4,$f8
 # ["exec_times": 1088]
	sub.d	$f16,$f10,$f12
 # ["exec_times": 1088]
	s.d	$f16,0($s0)
 # ["exec_times": 1088]
	# .loc	3, 464
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 1088]
	addu	$t9,$s0,$t8
 # ["exec_times": 1088]
	li.d	$f18,1.000000000000000000e+00
 # ["exec_times": 1088]
	li.d	$f12,1.000000000000000000e+00
 # ["exec_times": 1088]
	l.d	$f2,Q
	add.d	$f2,$f12,$f2
 # ["exec_times": 1088]
	div.d	$f2,$f18,$f2
 # ["exec_times": 1088]
	sub.d	$f4,$f2,$f14
 # ["exec_times": 1088]
	s.d	$f4,0($t9)
 # ["exec_times": 1088]
	# .loc	3, 465
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 1088]
find_gradient_f.L5:
	cqip	find_gradient_f.L7
 # ["cqip_pos": <L:find_gradient_f.L7,0>]
find_gradient_f.L7:
	pslice_entry	find_gradient_f.L7
 # ["pslice_entry_pos": <L:find_gradient_f.L7,0>]
	pslice_exit	find_gradient_f.L7
 # ["pslice_exit_pos": <L:find_gradient_f.L7,0>]
	spawn	find_gradient_f.L8
 # ["cqip_pos": <L:find_gradient_f.L8,0>]
	# .loc	3, 466
 # ["exec_times": 0]
	li	$a1,8
 # ["exec_times": 2176]
	mult	$a0,$a1
	mflo	$a2
 # ["exec_times": 2176]
	addu	$a3,$s0,$a2
 # ["exec_times": 2176]
	l.d	$f6,0($a3)
 # ["exec_times": 2176]
	li	$v0,8
 # ["exec_times": 2176]
	mult	$a0,$v0
	mflo	$v1
 # ["exec_times": 2176]
	addu	$t0,$s0,$v1
 # ["exec_times": 2176]
	l.d	$f8,0($t0)
 # ["exec_times": 2176]
	mul.d	$f10,$f6,$f8
 # ["exec_times": 2176]
	add.d	$f0,$f0,$f10
 # ["exec_times": 2176]
	li	$t1,1
 # ["exec_times": 2176]
	addu	$a0,$a0,$t1
 # ["exec_times": 2176]
	li	$t2,2
 # ["exec_times": 2176]
	sle	$t3,$t2,$a0
 # ["exec_times": 2176]
	beqz	$t3,find_gradient_f.L5
 # ["exec_times": 2176]
 # ["instr_profile": 2176 1088]
	nop	
	cqip	find_gradient_f.L8
 # ["cqip_pos": <L:find_gradient_f.L8,0>]
find_gradient_f.L8:
	pslice_entry	find_gradient_f.L8
 # ["pslice_entry_pos": <L:find_gradient_f.L8,0>]
	pslice_exit	find_gradient_f.L8
 # ["pslice_exit_pos": <L:find_gradient_f.L8,0>]
	# .loc	3, 467
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 1088]
	mov.d	$f12,$f0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1088]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	# .loc	3, 468
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 1088]
find_gradient_f.L6:
	# .loc	3, 468
 # ["exec_times": 0]
	# .loc	3, 469
 # ["exec_times": 0]
	li	$t4,8
 # ["exec_times": 2176]
	mult	$a0,$t4
	mflo	$t5
 # ["exec_times": 2176]
	addu	$t6,$s0,$t5
 # ["exec_times": 2176]
	l.d	$f16,0($t6)
 # ["exec_times": 2176]
	div.d	$f18,$f16,$f0
 # ["exec_times": 2176]
	s.d	$f18,0($t6)
 # ["exec_times": 2176]
	li	$t7,1
 # ["exec_times": 2176]
	addu	$a0,$a0,$t7
 # ["exec_times": 2176]
	li	$t8,2
 # ["exec_times": 2176]
	sle	$t9,$t8,$a0
 # ["exec_times": 2176]
	beqz	$t9,find_gradient_f.L6
 # ["exec_times": 2176]
 # ["instr_profile": 2176 1088]
	nop	
	# .loc	3, 471
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1088]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	find_gradient_f 
	.text	
	.align	2
	.align	2
	.globl	find_gradient_g
	# .loc	3, 475
	.ent	find_gradient_g 
find_gradient_g:
	spawn	find_gradient_g.headerspawn
 # ["header/trailer":]
	la	$sp,-192($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -192
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 192, $31
 # ["header/trailer":]
	cqip	find_gradient_g.headerspawn
 # ["header/trailer":]
find_gradient_g.headerspawn:
 # ["header/trailer":]
	pslice_entry	find_gradient_g.headerspawn
 # ["header/trailer":]
	la	$sp,-192($sp)
 # ["header/trailer":]
	pslice_exit	find_gradient_g.headerspawn
	spawn	find_gradient_g.L7
 # ["cqip_pos": <L:find_gradient_g.L7,0>]
	move	$s0,$a0
	# .loc	3, 477
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 592]
	# .loc	3, 479
 # ["exec_times": 0]
	li.d	$f2,2.000000000000000000e+00
 # ["exec_times": 592]
	l.d	$f4,P
	mul.d	$f4,$f2,$f4
 # ["exec_times": 592]
	s.d	$f4,0($s0)
 # ["exec_times": 592]
	# .loc	3, 480
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 592]
	addu	$t7,$s0,$t6
 # ["exec_times": 592]
	li.d	$f6,2.000000000000000000e+00
 # ["exec_times": 592]
	l.d	$f8,Q
	mul.d	$f10,$f6,$f8
 # ["exec_times": 592]
	s.d	$f10,0($t7)
 # ["exec_times": 592]
	# .loc	3, 481
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 592]
find_gradient_g.L5:
	# .loc	3, 482
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 1184]
	mult	$t8,$t9
	mflo	$a0
 # ["exec_times": 1184]
	addu	$a1,$s0,$a0
 # ["exec_times": 1184]
	l.d	$f16,0($a1)
 # ["exec_times": 1184]
	li	$a2,8
 # ["exec_times": 1184]
	mult	$t8,$a2
	mflo	$a3
 # ["exec_times": 1184]
	addu	$v0,$s0,$a3
 # ["exec_times": 1184]
	l.d	$f18,0($v0)
 # ["exec_times": 1184]
	mul.d	$f12,$f16,$f18
 # ["exec_times": 1184]
	add.d	$f0,$f0,$f12
 # ["exec_times": 1184]
	li	$v1,1
 # ["exec_times": 1184]
	addu	$t8,$t8,$v1
 # ["exec_times": 1184]
	li	$t0,2
 # ["exec_times": 1184]
	sle	$t1,$t0,$t8
 # ["exec_times": 1184]
	beqz	$t1,find_gradient_g.L5
 # ["exec_times": 1184]
 # ["instr_profile": 1184 592]
	nop	
	cqip	find_gradient_g.L7
 # ["cqip_pos": <L:find_gradient_g.L7,0>]
find_gradient_g.L7:
	pslice_entry	find_gradient_g.L7
 # ["pslice_entry_pos": <L:find_gradient_g.L7,0>]
	pslice_exit	find_gradient_g.L7
 # ["pslice_exit_pos": <L:find_gradient_g.L7,0>]
	# .loc	3, 483
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 592]
	mov.d	$f12,$f0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 592]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	# .loc	3, 484
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 592]
find_gradient_g.L6:
	# .loc	3, 485
 # ["exec_times": 0]
	li	$t2,8
 # ["exec_times": 1184]
	mult	$t8,$t2
	mflo	$t3
 # ["exec_times": 1184]
	addu	$t4,$s0,$t3
 # ["exec_times": 1184]
	l.d	$f14,0($t4)
 # ["exec_times": 1184]
	div.d	$f2,$f14,$f0
 # ["exec_times": 1184]
	s.d	$f2,0($t4)
 # ["exec_times": 1184]
	li	$t5,1
 # ["exec_times": 1184]
	addu	$t8,$t8,$t5
 # ["exec_times": 1184]
	li	$t6,2
 # ["exec_times": 1184]
	sle	$t7,$t6,$t8
 # ["exec_times": 1184]
	beqz	$t7,find_gradient_g.L6
 # ["exec_times": 1184]
 # ["instr_profile": 1184 592]
	nop	
	# .loc	3, 487
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 592]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	find_gradient_g 
	.text	
	.align	2
	.align	2
	.globl	find_gradient_h
	# .loc	3, 491
	.ent	find_gradient_h 
find_gradient_h:
	spawn	find_gradient_h.headerspawn
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
	cqip	find_gradient_h.headerspawn
 # ["header/trailer":]
find_gradient_h.headerspawn:
 # ["header/trailer":]
	pslice_entry	find_gradient_h.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	pslice_exit	find_gradient_h.headerspawn
	spawn	find_gradient_h.L7
 # ["cqip_pos": <L:find_gradient_h.L7,0>]
	move	$s0,$a0
	# .loc	3, 493
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 1152]
	# .loc	3, 495
 # ["exec_times": 0]
	li.d	$f4,1.000000000000000000e+00
 # ["exec_times": 1152]
	s.d	$f4,0($s0)
 # ["exec_times": 1152]
	# .loc	3, 496
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 1152]
	addu	$a0,$s0,$t9
 # ["exec_times": 1152]
	li.d	$f6,-5.000000000000000000e+00
 # ["exec_times": 1152]
	s.d	$f6,0($a0)
 # ["exec_times": 1152]
	# .loc	3, 497
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 1152]
find_gradient_h.L5:
	# .loc	3, 498
 # ["exec_times": 0]
	li	$a2,8
 # ["exec_times": 2304]
	mult	$a1,$a2
	mflo	$a3
 # ["exec_times": 2304]
	addu	$v0,$s0,$a3
 # ["exec_times": 2304]
	l.d	$f8,0($v0)
 # ["exec_times": 2304]
	li	$v1,8
 # ["exec_times": 2304]
	mult	$a1,$v1
	mflo	$t0
 # ["exec_times": 2304]
	addu	$t1,$s0,$t0
 # ["exec_times": 2304]
	l.d	$f10,0($t1)
 # ["exec_times": 2304]
	mul.d	$f16,$f8,$f10
 # ["exec_times": 2304]
	add.d	$f0,$f0,$f16
 # ["exec_times": 2304]
	li	$t2,1
 # ["exec_times": 2304]
	addu	$a1,$a1,$t2
 # ["exec_times": 2304]
	li	$t3,2
 # ["exec_times": 2304]
	sle	$t4,$t3,$a1
 # ["exec_times": 2304]
	beqz	$t4,find_gradient_h.L5
 # ["exec_times": 2304]
 # ["instr_profile": 2304 1152]
	nop	
	cqip	find_gradient_h.L7
 # ["cqip_pos": <L:find_gradient_h.L7,0>]
find_gradient_h.L7:
	pslice_entry	find_gradient_h.L7
 # ["pslice_entry_pos": <L:find_gradient_h.L7,0>]
	pslice_exit	find_gradient_h.L7
 # ["pslice_exit_pos": <L:find_gradient_h.L7,0>]
	# .loc	3, 499
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 1152]
	mov.d	$f12,$f0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1152]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	# .loc	3, 500
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 1152]
find_gradient_h.L6:
	# .loc	3, 501
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 2304]
	mult	$a1,$t5
	mflo	$t6
 # ["exec_times": 2304]
	addu	$t7,$s0,$t6
 # ["exec_times": 2304]
	l.d	$f18,0($t7)
 # ["exec_times": 2304]
	div.d	$f12,$f18,$f0
 # ["exec_times": 2304]
	s.d	$f12,0($t7)
 # ["exec_times": 2304]
	li	$t8,1
 # ["exec_times": 2304]
	addu	$a1,$a1,$t8
 # ["exec_times": 2304]
	li	$t9,2
 # ["exec_times": 2304]
	sle	$a0,$t9,$a1
 # ["exec_times": 2304]
	beqz	$a0,find_gradient_h.L6
 # ["exec_times": 2304]
 # ["instr_profile": 2304 1152]
	nop	
	# .loc	3, 503
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1152]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	find_gradient_h 
	.text	
	.align	2
	.align	2
	.globl	find_dd_grad_f
	# .loc	3, 507
	.ent	find_dd_grad_f 
find_dd_grad_f:
	spawn	find_dd_grad_f.headerspawn
 # ["header/trailer":]
	la	$sp,-272($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -272
 # ["header/trailer":]
	s.d	$f20,16($sp)
 # ["header/trailer":]
	s.d	$f22,24($sp)
 # ["header/trailer":]
	s.d	$f24,32($sp)
 # ["header/trailer":]
	s.d	$f26,40($sp)
 # ["header/trailer":]
	.fmask	0x05500000, -272
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 272, $31
 # ["header/trailer":]
	cqip	find_dd_grad_f.headerspawn
 # ["header/trailer":]
find_dd_grad_f.headerspawn:
 # ["header/trailer":]
	pslice_entry	find_dd_grad_f.headerspawn
 # ["header/trailer":]
	la	$sp,-272($sp)
 # ["header/trailer":]
	pslice_exit	find_dd_grad_f.headerspawn
	spawn	find_dd_grad_f.spawntail5
	lw	$s0,252($sp)
	# .loc	3, 508
 # ["exec_times": 0]
	li.d	$f2,1.000000000000000000e+00
 # ["exec_times": 544]
	li.d	$f4,1.000000000000000000e+00
 # ["exec_times": 544]
	l.d	$f6,P
	add.d	$f8,$f6,$f4
 # ["exec_times": 544]
	div.d	$f20,$f2,$f8
 # ["exec_times": 544]
	# .loc	3, 509
 # ["exec_times": 0]
	li.d	$f10,1.000000000000000000e+00
 # ["exec_times": 544]
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 544]
	l.d	$f18,Q
	add.d	$f0,$f18,$f16
 # ["exec_times": 544]
	div.d	$f22,$f10,$f0
 # ["exec_times": 544]
	# .loc	3, 510
 # ["exec_times": 0]
	sub.d	$f24,$f20,$f12
 # ["exec_times": 544]
	# .loc	3, 511
 # ["exec_times": 0]
	sub.d	$f26,$f22,$f14
 # ["exec_times": 544]
	# .loc	3, 514
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 544]
	mul.d	$f14,$f24,$f24
 # ["exec_times": 544]
	mul.d	$f0,$f26,$f26
 # ["exec_times": 544]
	add.d	$f12,$f14,$f0
 # ["exec_times": 544]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 544]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	# .loc	3, 516
 # ["exec_times": 0]
	neg.d	$f2,$f20
 # ["exec_times": 544]
	mul.d	$f4,$f2,$f20
 # ["exec_times": 544]
	mul.d	$f6,$f4,$f24
 # ["exec_times": 544]
	div.d	$f8,$f6,$f0
 # ["exec_times": 544]
	s.d	$f8,0($s0)
 # ["exec_times": 544]
	# .loc	3, 517
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 544]
	addu	$t8,$s0,$t7
 # ["exec_times": 544]
	neg.d	$f10,$f22
 # ["exec_times": 544]
	mul.d	$f16,$f10,$f22
 # ["exec_times": 544]
	mul.d	$f18,$f16,$f26
 # ["exec_times": 544]
	div.d	$f12,$f18,$f0
 # ["exec_times": 544]
	s.d	$f12,0($t8)
 # ["exec_times": 544]
	# .loc	3, 518
 # ["exec_times": 0]
	cqip	find_dd_grad_f.spawntail5
find_dd_grad_f.spawntail5:
	pslice_entry	find_dd_grad_f.spawntail5
	pslice_exit	find_dd_grad_f.spawntail5
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 544]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	find_dd_grad_f 
	.text	
	.align	2
	.align	2
	.globl	make_orthogonal
	# .loc	3, 521
	.ent	make_orthogonal 
make_orthogonal:
	spawn	make_orthogonal.headerspawn
 # ["header/trailer":]
	la	$sp,-376($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -376
 # ["header/trailer":]
	s.d	$f20,16($sp)
 # ["header/trailer":]
	.fmask	0x00100000, -376
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 376, $31
 # ["header/trailer":]
	cqip	make_orthogonal.headerspawn
 # ["header/trailer":]
make_orthogonal.headerspawn:
 # ["header/trailer":]
	pslice_entry	make_orthogonal.headerspawn
 # ["header/trailer":]
	la	$sp,-376($sp)
 # ["header/trailer":]
	pslice_exit	make_orthogonal.headerspawn
	move	$s0,$a0
	# .loc	3, 523
 # ["exec_times": 0]
	li.d	$f20,0.000000000000000000e+00
 # ["exec_times": 592]
	# .loc	3, 524
 # ["exec_times": 0]
	li.d	$f12,0.000000000000000000e+00
 # ["exec_times": 592]
	# .loc	3, 526
 # ["exec_times": 0]
	move	$s1,$zero
 # ["exec_times": 592]
make_orthogonal.L8:
	# .loc	3, 527
 # ["exec_times": 0]
	li	$t7,8
 # ["exec_times": 1184]
	mult	$s1,$t7
	mflo	$t8
 # ["exec_times": 1184]
	addu	$t9,$s0,$t8
 # ["exec_times": 1184]
	l.d	$f14,0($t9)
 # ["exec_times": 1184]
	li	$a0,8
 # ["exec_times": 1184]
	mult	$s1,$a0
	mflo	$a2
 # ["exec_times": 1184]
	addu	$a2,$a1,$a2
 # ["exec_times": 1184]
	l.d	$f0,0($a2)
 # ["exec_times": 1184]
	mul.d	$f0,$f14,$f0
 # ["exec_times": 1184]
	add.d	$f20,$f20,$f0
 # ["exec_times": 1184]
	li	$a3,1
 # ["exec_times": 1184]
	addu	$s1,$s1,$a3
 # ["exec_times": 1184]
	li	$v0,2
 # ["exec_times": 1184]
	sle	$v1,$v0,$s1
 # ["exec_times": 1184]
	beqz	$v1,make_orthogonal.L8
 # ["exec_times": 1184]
 # ["instr_profile": 1184 592]
	nop	
	# .loc	3, 528
 # ["exec_times": 0]
	move	$s1,$zero
 # ["exec_times": 592]
make_orthogonal.L9:
	# .loc	3, 528
 # ["exec_times": 0]
	# .loc	3, 529
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 1184]
	mult	$s1,$t0
	mflo	$t1
 # ["exec_times": 1184]
	addu	$t2,$s0,$t1
 # ["exec_times": 1184]
	l.d	$f2,0($t2)
 # ["exec_times": 1184]
	li	$t3,8
 # ["exec_times": 1184]
	mult	$s1,$t3
	mflo	$t4
 # ["exec_times": 1184]
	addu	$t5,$a1,$t4
 # ["exec_times": 1184]
	l.d	$f4,0($t5)
 # ["exec_times": 1184]
	mul.d	$f6,$f20,$f4
 # ["exec_times": 1184]
	sub.d	$f8,$f2,$f6
 # ["exec_times": 1184]
	s.d	$f8,0($t2)
 # ["exec_times": 1184]
	# .loc	3, 530
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 1184]
	mult	$s1,$t6
	mflo	$t7
 # ["exec_times": 1184]
	addu	$t8,$s0,$t7
 # ["exec_times": 1184]
	l.d	$f10,0($t8)
 # ["exec_times": 1184]
	li	$t9,8
 # ["exec_times": 1184]
	mult	$s1,$t9
	mflo	$a0
 # ["exec_times": 1184]
	addu	$a2,$s0,$a0
 # ["exec_times": 1184]
	l.d	$f16,0($a2)
 # ["exec_times": 1184]
	mul.d	$f18,$f10,$f16
 # ["exec_times": 1184]
	add.d	$f12,$f12,$f18
 # ["exec_times": 1184]
	li	$a2,1
 # ["exec_times": 1184]
	addu	$s1,$s1,$a2
 # ["exec_times": 1184]
	li	$a3,2
 # ["exec_times": 1184]
	sle	$v0,$a3,$s1
 # ["exec_times": 1184]
	beqz	$v0,make_orthogonal.L9
 # ["exec_times": 1184]
 # ["instr_profile": 1184 592]
	nop	
	# .loc	3, 532
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 592]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 592]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mov.d	$f12,$f0
	# .loc	3, 533
 # ["exec_times": 0]
	move	$s1,$zero
 # ["exec_times": 592]
make_orthogonal.L10:
	# .loc	3, 534
 # ["exec_times": 0]
	li	$v1,8
 # ["exec_times": 1184]
	mult	$s1,$v1
	mflo	$t0
 # ["exec_times": 1184]
	addu	$t1,$s0,$t0
 # ["exec_times": 1184]
	l.d	$f14,0($t1)
 # ["exec_times": 1184]
	div.d	$f14,$f14,$f12
 # ["exec_times": 1184]
	s.d	$f14,0($t1)
 # ["exec_times": 1184]
	li	$t2,1
 # ["exec_times": 1184]
	addu	$s1,$s1,$t2
 # ["exec_times": 1184]
	li	$t3,2
 # ["exec_times": 1184]
	sle	$t4,$t3,$s1
 # ["exec_times": 1184]
	beqz	$t4,make_orthogonal.L10
 # ["exec_times": 1184]
 # ["instr_profile": 1184 592]
	nop	
	# .loc	3, 536
 # ["exec_times": 0]
	li.d	$f0,1.000000000000000000e+00
 # ["exec_times": 592]
	mul.d	$f2,$f20,$f20
 # ["exec_times": 592]
	sub.d	$f4,$f0,$f2
 # ["exec_times": 592]
	li.d	$f6,0.000000000000000000e+00
 # ["exec_times": 592]
	li	$t5,1
	c.lt.d	$f4,$f6
 # ["exec_times": 592]
	bc1t	make_orthogonal.L11
	nop	
	move	$t5,$zero
make_orthogonal.L11:
	beqz	$t5,make_orthogonal.L7
 # ["exec_times": 592]
 # ["instr_profile": 592 592]
	nop	
	# .loc	3, 537
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 0]
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
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
make_orthogonal.L7:
	# .loc	3, 539
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 592]
	li.d	$f8,1.000000000000000000e+00
 # ["exec_times": 592]
	mul.d	$f10,$f20,$f20
 # ["exec_times": 592]
	sub.d	$f12,$f8,$f10
 # ["exec_times": 592]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 592]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
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
 # ["exec_times": 592]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	make_orthogonal 
	.text	
	.align	2
	.align	2
	.globl	entry
	# .loc	3, 596
	.ent	entry 
entry:
	spawn	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-1360($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -1360
 # ["header/trailer":]
	s.d	$f20,16($sp)
 # ["header/trailer":]
	s.d	$f22,24($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -1360
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 1360, $31
 # ["header/trailer":]
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-1360($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L18
 # ["cqip_pos": <L:entry.L18,0>]
	# .loc	3, 598
 # ["exec_times": 0]
	move	$s1,$zero
 # ["exec_times": 1]
	# .loc	3, 611
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
	# .loc	3, 619
 # ["exec_times": 0]
	la	$t0,build_tree
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "build_tree"]
 # ["call_overhead": 1098]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L18
 # ["cqip_pos": <L:entry.L18,0>]
entry.L18:
	pslice_entry	entry.L18
 # ["pslice_entry_pos": <L:entry.L18,0>]
	pslice_exit	entry.L18
 # ["pslice_exit_pos": <L:entry.L18,0>]
	spawn	entry.L19
 # ["cqip_pos": <L:entry.L19,0>]
	move	$s0,$v0
	# .loc	3, 620
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
	# .loc	3, 621
 # ["exec_times": 0]
	la	$t0,Compute_Tree
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "Compute_Tree"]
 # ["call_overhead": 86652]
 # ["regs_used": 5]
	nop	
	cqip	entry.L19
 # ["cqip_pos": <L:entry.L19,0>]
entry.L19:
	pslice_entry	entry.L19
 # ["pslice_entry_pos": <L:entry.L19,0>]
	pslice_exit	entry.L19
 # ["pslice_exit_pos": <L:entry.L19,0>]
	spawn	entry.L20
 # ["cqip_pos": <L:entry.L20,0>]
	# .loc	3, 622
 # ["exec_times": 0]
	li	$t5,32
 # ["exec_times": 1]
	addu	$t6,$s0,$t5
 # ["fields": "last" "P"]
 # ["exec_times": 1]
	move	$t7,$zero
 # ["exec_times": 1]
	addu	$t8,$s0,$t7
 # ["fields": "D" "P"]
 # ["exec_times": 1]
	l.d	$f4,0($t8)
 # ["exec_times": 1]
	s.d	$f4,0($t6)
 # ["exec_times": 1]
	# .loc	3, 623
 # ["exec_times": 0]
	li	$t9,40
 # ["exec_times": 1]
	addu	$a0,$s0,$t9
 # ["fields": "last" "Q"]
 # ["exec_times": 1]
	li	$a1,8
 # ["exec_times": 1]
	addu	$a2,$s0,$a1
 # ["fields": "D" "Q"]
 # ["exec_times": 1]
	l.d	$f6,0($a2)
 # ["exec_times": 1]
	s.d	$f6,0($a0)
 # ["exec_times": 1]
	# .loc	3, 624
 # ["exec_times": 0]
	li	$a3,48
 # ["exec_times": 1]
	addu	$v0,$s0,$a3
 # ["fields": "last_theta_R"]
 # ["exec_times": 1]
	li	$v1,16
 # ["exec_times": 1]
	addu	$t0,$s0,$v1
 # ["fields": "theta_R"]
 # ["exec_times": 1]
	l.d	$f8,0($t0)
 # ["exec_times": 1]
	s.d	$f8,0($v0)
 # ["exec_times": 1]
	# .loc	3, 625
 # ["exec_times": 0]
	li	$t1,56
 # ["exec_times": 1]
	addu	$t2,$s0,$t1
 # ["fields": "last_theta_I"]
 # ["exec_times": 1]
	li	$t3,24
 # ["exec_times": 1]
	addu	$t4,$s0,$t3
 # ["fields": "theta_I"]
 # ["exec_times": 1]
	l.d	$f10,0($t4)
 # ["exec_times": 1]
	s.d	$f10,0($t2)
 # ["exec_times": 1]
	# .loc	3, 626
 # ["exec_times": 0]
	li	$t5,16
 # ["exec_times": 1]
	addu	$t6,$s0,$t5
 # ["fields": "theta_R"]
 # ["exec_times": 1]
	li.d	$f16,6.999999999999999556e-01
 # ["exec_times": 1]
	s.d	$f16,0($t6)
 # ["exec_times": 1]
	# .loc	3, 627
 # ["exec_times": 0]
	li	$t7,24
 # ["exec_times": 1]
	addu	$t8,$s0,$t7
 # ["fields": "theta_I"]
 # ["exec_times": 1]
	li.d	$f18,1.400000000000000133e-01
 # ["exec_times": 1]
	s.d	$f18,0($t8)
 # ["exec_times": 1]
	# .loc	3, 629
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 1]
	sne	$a0,$s1,$t9
 # ["exec_times": 1]
	move	$a1,$zero
 # ["exec_times": 1]
	seq	$a2,$a0,$a1
 # ["exec_times": 1]
	beqz	$a2,entry.L1
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
entry.L4:
	spawn	entry.L21
 # ["cqip_pos": <L:entry.L21,0>]
	# .loc	3, 630
 # ["exec_times": 0]
	la	$t0,Compute_Tree
 # ["exec_times": 17]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 17]
 # ["proc_name": "Compute_Tree"]
 # ["call_overhead": 14840]
 # ["regs_used": 5]
	nop	
	# .loc	3, 631
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 17]
	la	$a0,__tmp_string_2
 # ["exec_times": 17]
	li	$a3,16
 # ["exec_times": 17]
	addu	$v0,$s0,$a3
 # ["fields": "theta_R"]
 # ["exec_times": 17]
	l.d	$f14,0($v0)
 # ["exec_times": 17]
	li	$v1,24
 # ["exec_times": 17]
	addu	$t1,$s0,$v1
 # ["fields": "theta_I"]
 # ["exec_times": 17]
	l.d	$f12,0($t1)
 # ["exec_times": 17]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f12,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 17]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	3, 632
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 17]
	la	$a0,__tmp_string_3
 # ["exec_times": 17]
	move	$t1,$zero
 # ["exec_times": 17]
	addu	$t2,$s0,$t1
 # ["fields": "D" "P"]
 # ["exec_times": 17]
	l.d	$f14,0($t2)
 # ["exec_times": 17]
	li	$t3,8
 # ["exec_times": 17]
	addu	$t4,$s0,$t3
 # ["fields": "D" "Q"]
 # ["exec_times": 17]
	l.d	$f0,0($t4)
 # ["exec_times": 17]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f0,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 17]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	3, 633
 # ["exec_times": 0]
	li.d	$f0,0.000000000000000000e+00
 # ["exec_times": 17]
	move	$t5,$zero
 # ["exec_times": 17]
	addu	$t6,$s0,$t5
 # ["fields": "D" "P"]
 # ["exec_times": 17]
	l.d	$f2,0($t6)
 # ["exec_times": 17]
	li.d	$f4,1.000000000000000000e+04
 # ["exec_times": 17]
	div.d	$f6,$f2,$f4
 # ["exec_times": 17]
	li	$t7,16
 # ["exec_times": 17]
	addu	$t8,$s0,$t7
 # ["fields": "theta_R"]
 # ["exec_times": 17]
	l.d	$f8,0($t8)
 # ["exec_times": 17]
	sub.d	$f10,$f6,$f8
 # ["exec_times": 17]
	li	$t9,1
	c.lt.d	$f0,$f10
 # ["exec_times": 17]
	bc1t	entry.L13
	nop	
	move	$t9,$zero
entry.L13:
	beqz	$t9,entry.L5
 # ["exec_times": 17]
 # ["instr_profile": 17 17]
	nop	
	move	$a0,$zero
 # ["exec_times": 0]
	addu	$a1,$s0,$a0
 # ["fields": "D" "P"]
 # ["exec_times": 0]
	l.d	$f16,0($a1)
 # ["exec_times": 0]
	li.d	$f18,1.000000000000000000e+04
 # ["exec_times": 0]
	div.d	$f12,$f16,$f18
 # ["exec_times": 0]
	li	$a2,16
 # ["exec_times": 0]
	addu	$a3,$s0,$a2
 # ["fields": "theta_R"]
 # ["exec_times": 0]
	l.d	$f14,0($a3)
 # ["exec_times": 0]
	sub.d	$f0,$f12,$f14
 # ["exec_times": 0]
	j	entry.__done1
 # ["exec_times": 0]
	nop	
entry.L5:
	move	$v0,$zero
 # ["exec_times": 17]
	addu	$v1,$s0,$v0
 # ["fields": "D" "P"]
 # ["exec_times": 17]
	l.d	$f2,0($v1)
 # ["exec_times": 17]
	li.d	$f4,1.000000000000000000e+04
 # ["exec_times": 17]
	div.d	$f6,$f2,$f4
 # ["exec_times": 17]
	li	$t0,16
 # ["exec_times": 17]
	addu	$t1,$s0,$t0
 # ["fields": "theta_R"]
 # ["exec_times": 17]
	l.d	$f8,0($t1)
 # ["exec_times": 17]
	sub.d	$f10,$f6,$f8
 # ["exec_times": 17]
	neg.d	$f0,$f10
 # ["exec_times": 17]
entry.__done1:
	li.d	$f16,1.000000000000000021e-02
 # ["exec_times": 17]
	li	$t4,1
	c.lt.d	$f0,$f16
 # ["exec_times": 17]
	bc1t	entry.L14
	nop	
	move	$t4,$zero
entry.L14:
	bnez	$t4,entry.L7
 # ["exec_times": 17]
 # ["instr_profile": 17 1]
	nop	
entry.L17:
	j	entry.__done3
 # ["exec_times": 16]
 # ["instr_profile": 16 16]
	nop	
entry.L7:
	li.d	$f18,0.000000000000000000e+00
 # ["exec_times": 1]
	li	$t2,8
 # ["exec_times": 1]
	addu	$t3,$s0,$t2
 # ["fields": "D" "Q"]
 # ["exec_times": 1]
	l.d	$f12,0($t3)
 # ["exec_times": 1]
	li.d	$f14,1.000000000000000000e+04
 # ["exec_times": 1]
	div.d	$f0,$f12,$f14
 # ["exec_times": 1]
	li	$t4,24
 # ["exec_times": 1]
	addu	$t5,$s0,$t4
 # ["fields": "theta_I"]
 # ["exec_times": 1]
	l.d	$f2,0($t5)
 # ["exec_times": 1]
	sub.d	$f4,$f0,$f2
 # ["exec_times": 1]
	li	$t6,1
	c.lt.d	$f18,$f4
 # ["exec_times": 1]
	bc1t	entry.L15
	nop	
	move	$t6,$zero
entry.L15:
	beqz	$t6,entry.L6
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	li	$t7,8
 # ["exec_times": 0]
	addu	$t8,$s0,$t7
 # ["fields": "D" "Q"]
 # ["exec_times": 0]
	l.d	$f6,0($t8)
 # ["exec_times": 0]
	li.d	$f8,1.000000000000000000e+04
 # ["exec_times": 0]
	div.d	$f10,$f6,$f8
 # ["exec_times": 0]
	li	$t9,24
 # ["exec_times": 0]
	addu	$a0,$s0,$t9
 # ["fields": "theta_I"]
 # ["exec_times": 0]
	l.d	$f16,0($a0)
 # ["exec_times": 0]
	sub.d	$f18,$f10,$f16
 # ["exec_times": 0]
	j	entry.__done2
 # ["exec_times": 0]
	nop	
entry.L6:
	li	$a1,8
 # ["exec_times": 1]
	addu	$a2,$s0,$a1
 # ["fields": "D" "Q"]
 # ["exec_times": 1]
	l.d	$f12,0($a2)
 # ["exec_times": 1]
	li.d	$f14,1.000000000000000000e+04
 # ["exec_times": 1]
	div.d	$f0,$f12,$f14
 # ["exec_times": 1]
	li	$a3,24
 # ["exec_times": 1]
	addu	$v0,$s0,$a3
 # ["fields": "theta_I"]
 # ["exec_times": 1]
	l.d	$f2,0($v0)
 # ["exec_times": 1]
	sub.d	$f4,$f0,$f2
 # ["exec_times": 1]
	neg.d	$f18,$f4
 # ["exec_times": 1]
entry.__done2:
	li.d	$f6,1.000000000000000021e-02
 # ["exec_times": 1]
	li	$t4,1
	c.lt.d	$f18,$f6
 # ["exec_times": 1]
	bc1t	entry.L16
	nop	
	move	$t4,$zero
entry.L16:
entry.__done3:
	beqz	$t4,entry.L8
 # ["exec_times": 17]
 # ["instr_profile": 17 16]
	nop	
	# .loc	3, 640
 # ["exec_times": 0]
	li	$s1,1
 # ["exec_times": 1]
	j	entry.__done4
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
entry.L8:
	# .loc	3, 642
 # ["exec_times": 0]
	li	$v1,16
 # ["exec_times": 16]
	addu	$t0,$s0,$v1
 # ["fields": "theta_R"]
 # ["exec_times": 16]
	l.d	$f8,0($t0)
 # ["exec_times": 16]
	li.d	$f10,6.500000000000000222e-01
 # ["exec_times": 16]
	sub.d	$f16,$f8,$f10
 # ["exec_times": 16]
	li.d	$f18,1.000000000000000021e-02
 # ["exec_times": 16]
	div.d	$f12,$f16,$f18
 # ["exec_times": 16]
	cvt.w.d	$f14,$f12
	mfc1	$v1,$f14
 # ["exec_times": 16]
	# .loc	3, 643
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 16]
	slt	$t2,$v1,$t1
 # ["exec_times": 16]
	beqz	$t2,entry.L9
 # ["exec_times": 16]
 # ["instr_profile": 16 1]
	nop	
	# .loc	3, 644
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 15]
entry.L9:
	# .loc	3, 645
 # ["exec_times": 0]
	li	$t3,35
 # ["exec_times": 16]
	slt	$t4,$t3,$v1
 # ["exec_times": 16]
	beqz	$t4,entry.L10
 # ["exec_times": 16]
 # ["instr_profile": 16 16]
	nop	
	# .loc	3, 646
 # ["exec_times": 0]
	li	$v1,35
 # ["exec_times": 0]
entry.L10:
	# .loc	3, 647
 # ["exec_times": 0]
	li	$t5,16
 # ["exec_times": 16]
	addu	$t6,$s0,$t5
 # ["fields": "theta_R"]
 # ["exec_times": 16]
	l.d	$f0,0($t6)
 # ["exec_times": 16]
	move	$t7,$zero
 # ["exec_times": 16]
	addu	$t8,$s0,$t7
 # ["fields": "D" "P"]
 # ["exec_times": 16]
	l.d	$f2,0($t8)
 # ["exec_times": 16]
	li.d	$f4,1.000000000000000000e+04
 # ["exec_times": 16]
	div.d	$f6,$f2,$f4
 # ["exec_times": 16]
	sub.d	$f8,$f0,$f6
 # ["exec_times": 16]
	neg.d	$f10,$f8
 # ["exec_times": 16]
	li.d	$f16,1.000000000000000000e+00
 # ["exec_times": 16]
	la	$t9,map_P+8
 # ["exec_times": 16]
	li	$a0,8
 # ["exec_times": 16]
	mult	$v1,$a0
	mflo	$a1
 # ["exec_times": 16]
	addu	$a2,$t9,$a1
 # ["exec_times": 16]
	l.d	$f18,0($a2)
 # ["exec_times": 16]
	la	$a3,map_P
 # ["exec_times": 16]
	li	$v0,8
 # ["exec_times": 16]
	mult	$v1,$v0
	mflo	$v1
 # ["exec_times": 16]
	addu	$t0,$a3,$v1
 # ["exec_times": 16]
	l.d	$f12,0($t0)
 # ["exec_times": 16]
	sub.d	$f14,$f18,$f12
 # ["exec_times": 16]
	li.d	$f0,1.000000000000000000e+02
 # ["exec_times": 16]
	div.d	$f2,$f14,$f0
 # ["exec_times": 16]
	sub.d	$f4,$f16,$f2
 # ["exec_times": 16]
	div.d	$f20,$f10,$f4
 # ["exec_times": 16]
	# .loc	3, 650
 # ["exec_times": 0]
	li	$t1,24
 # ["exec_times": 16]
	addu	$t2,$s0,$t1
 # ["fields": "theta_I"]
 # ["exec_times": 16]
	l.d	$f6,0($t2)
 # ["exec_times": 16]
	li.d	$f8,1.300000000000000044e-01
 # ["exec_times": 16]
	sub.d	$f10,$f6,$f8
 # ["exec_times": 16]
	li.d	$f16,2.000000000000000042e-03
 # ["exec_times": 16]
	div.d	$f18,$f10,$f16
 # ["exec_times": 16]
	cvt.w.d	$f12,$f18
	mfc1	$v1,$f12
 # ["exec_times": 16]
	# .loc	3, 651
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 16]
	slt	$t4,$v1,$t3
 # ["exec_times": 16]
	beqz	$t4,entry.L11
 # ["exec_times": 16]
 # ["instr_profile": 16 1]
	nop	
	# .loc	3, 652
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 15]
entry.L11:
	# .loc	3, 653
 # ["exec_times": 0]
	li	$t5,35
 # ["exec_times": 16]
	slt	$t6,$t5,$v1
 # ["exec_times": 16]
	beqz	$t6,entry.L12
 # ["exec_times": 16]
 # ["instr_profile": 16 16]
	nop	
	# .loc	3, 654
 # ["exec_times": 0]
	li	$v1,35
 # ["exec_times": 0]
entry.L12:
	# .loc	3, 655
 # ["exec_times": 0]
	li	$t7,24
 # ["exec_times": 16]
	addu	$t8,$s0,$t7
 # ["fields": "theta_I"]
 # ["exec_times": 16]
	l.d	$f14,0($t8)
 # ["exec_times": 16]
	li	$t9,8
 # ["exec_times": 16]
	addu	$a1,$s0,$t9
 # ["fields": "D" "Q"]
 # ["exec_times": 16]
	l.d	$f0,0($a1)
 # ["exec_times": 16]
	li.d	$f2,1.000000000000000000e+04
 # ["exec_times": 16]
	div.d	$f4,$f0,$f2
 # ["exec_times": 16]
	sub.d	$f6,$f14,$f4
 # ["exec_times": 16]
	neg.d	$f8,$f6
 # ["exec_times": 16]
	li.d	$f10,1.000000000000000000e+00
 # ["exec_times": 16]
	la	$a2,map_Q+8
 # ["exec_times": 16]
	li	$a3,8
 # ["exec_times": 16]
	mult	$v1,$a3
	mflo	$v0
 # ["exec_times": 16]
	addu	$t0,$a2,$v0
 # ["exec_times": 16]
	l.d	$f16,0($t0)
 # ["exec_times": 16]
	la	$t0,map_Q
 # ["exec_times": 16]
	li	$t1,8
 # ["exec_times": 16]
	mult	$v1,$t1
	mflo	$t2
 # ["exec_times": 16]
	addu	$t3,$t0,$t2
 # ["exec_times": 16]
	l.d	$f18,0($t3)
 # ["exec_times": 16]
	sub.d	$f12,$f16,$f18
 # ["exec_times": 16]
	li.d	$f14,2.000000000000000000e+01
 # ["exec_times": 16]
	div.d	$f0,$f12,$f14
 # ["exec_times": 16]
	sub.d	$f2,$f10,$f0
 # ["exec_times": 16]
	div.d	$f22,$f8,$f2
 # ["exec_times": 16]
	# .loc	3, 658
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 16]
	la	$a0,__tmp_string_4
 # ["exec_times": 16]
	mov.d	$f14,$f20
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 16]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	3, 659
 # ["exec_times": 0]
	li	$t4,32
 # ["exec_times": 16]
	addu	$t5,$s0,$t4
 # ["fields": "last" "P"]
 # ["exec_times": 16]
	move	$t6,$zero
 # ["exec_times": 16]
	addu	$t7,$s0,$t6
 # ["fields": "D" "P"]
 # ["exec_times": 16]
	l.d	$f4,0($t7)
 # ["exec_times": 16]
	s.d	$f4,0($t5)
 # ["exec_times": 16]
	# .loc	3, 660
 # ["exec_times": 0]
	li	$t8,40
 # ["exec_times": 16]
	addu	$t9,$s0,$t8
 # ["fields": "last" "Q"]
 # ["exec_times": 16]
	li	$a0,8
 # ["exec_times": 16]
	addu	$a1,$s0,$a0
 # ["fields": "D" "Q"]
 # ["exec_times": 16]
	l.d	$f6,0($a1)
 # ["exec_times": 16]
	s.d	$f6,0($t9)
 # ["exec_times": 16]
	# .loc	3, 661
 # ["exec_times": 0]
	li	$a2,48
 # ["exec_times": 16]
	addu	$a3,$s0,$a2
 # ["fields": "last_theta_R"]
 # ["exec_times": 16]
	li	$v0,16
 # ["exec_times": 16]
	addu	$v1,$s0,$v0
 # ["fields": "theta_R"]
 # ["exec_times": 16]
	l.d	$f8,0($v1)
 # ["exec_times": 16]
	s.d	$f8,0($a3)
 # ["exec_times": 16]
	# .loc	3, 662
 # ["exec_times": 0]
	li	$t0,56
 # ["exec_times": 16]
	addu	$t1,$s0,$t0
 # ["fields": "last_theta_I"]
 # ["exec_times": 16]
	li	$t2,24
 # ["exec_times": 16]
	addu	$t3,$s0,$t2
 # ["fields": "theta_I"]
 # ["exec_times": 16]
	l.d	$f10,0($t3)
 # ["exec_times": 16]
	s.d	$f10,0($t1)
 # ["exec_times": 16]
	# .loc	3, 663
 # ["exec_times": 0]
	li	$t4,16
 # ["exec_times": 16]
	addu	$t5,$s0,$t4
 # ["fields": "theta_R"]
 # ["exec_times": 16]
	li	$t6,16
 # ["exec_times": 16]
	addu	$t7,$s0,$t6
 # ["fields": "theta_R"]
 # ["exec_times": 16]
	l.d	$f16,0($t7)
 # ["exec_times": 16]
	add.d	$f18,$f16,$f20
 # ["exec_times": 16]
	s.d	$f18,0($t5)
 # ["exec_times": 16]
	# .loc	3, 664
 # ["exec_times": 0]
	li	$t8,24
 # ["exec_times": 16]
	addu	$t9,$s0,$t8
 # ["fields": "theta_I"]
 # ["exec_times": 16]
	li	$a0,24
 # ["exec_times": 16]
	addu	$a1,$s0,$a0
 # ["fields": "theta_I"]
 # ["exec_times": 16]
	l.d	$f12,0($a1)
 # ["exec_times": 16]
	add.d	$f14,$f12,$f22
 # ["exec_times": 16]
	s.d	$f14,0($t9)
 # ["exec_times": 16]
entry.__done4:
	move	$a2,$zero
 # ["exec_times": 17]
	sne	$a3,$s1,$a2
 # ["exec_times": 17]
	move	$v0,$zero
 # ["exec_times": 17]
	seq	$v1,$a3,$v0
 # ["exec_times": 17]
	bnez	$v1,entry.L4
 # ["exec_times": 17]
 # ["instr_profile": 17 16]
	nop	
entry.L1:
	cqip	entry.L21
 # ["cqip_pos": <L:entry.L21,0>]
entry.L21:
	pslice_entry	entry.L21
 # ["pslice_entry_pos": <L:entry.L21,0>]
	pslice_exit	entry.L21
 # ["pslice_exit_pos": <L:entry.L21,0>]
	cqip	entry.L20
 # ["cqip_pos": <L:entry.L20,0>]
entry.L20:
	pslice_entry	entry.L20
 # ["pslice_entry_pos": <L:entry.L20,0>]
	pslice_exit	entry.L20
 # ["pslice_exit_pos": <L:entry.L20,0>]
	# .loc	3, 667
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	entry 
