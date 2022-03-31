#####################
# CNP CRE SPINAL CORD P21
#####################

# index
~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-index.jl --fasta ~/whippet_run/GRCm39.primary_assembly.genome.fa.gz --bam /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_STAR_yongshan/p21_spc_merged_cko.bam --gtf ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf.gz --bam-min-reads 20 --index ~/whippet_run_cnp_spc_p21/index_with_bam/cnp_spc_p21_index_with_bam

# quantify
~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-quant.jl /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_1142_1.fq.gz /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_1142_2.fq.gz -o /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_1142/1142_ctr -x ~/whippet_run_cnp_spc_p21/index_with_bam/cnp_spc_p21_index_with_bam.jls

~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-quant.jl /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_715_1.fq.gz /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_715_2.fq.gz -o /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_715/715_ctr -x ~/whippet_run_cnp_spc_p21/index_with_bam/cnp_spc_p21_index_with_bam.jls

~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-quant.jl /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_723_1.fq.gz /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_723_2.fq.gz -o /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_723/723_ctr -x ~/whippet_run_cnp_spc_p21/index_with_bam/cnp_spc_p21_index_with_bam.jls

~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-quant.jl /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_854_1.fq.gz /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_854_2.fq.gz -o /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_854/854_ctr -x ~/whippet_run_cnp_spc_p21/index_with_bam/cnp_spc_p21_index_with_bam.jls

~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-quant.jl /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_1174_1.fq.gz /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_1174_2.fq.gz -o /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_1174/1174_cko -x ~/whippet_run_cnp_spc_p21/index_with_bam/cnp_spc_p21_index_with_bam.jls

~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-quant.jl /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_270_1.fq.gz /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_270_2.fq.gz -o /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_270/270_cko -x ~/whippet_run_cnp_spc_p21/index_with_bam/cnp_spc_p21_index_with_bam.jls

~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-quant.jl /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_280_1.fq.gz /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_280_2.fq.gz -o /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_280/280_cko -x ~/whippet_run_cnp_spc_p21/index_with_bam/cnp_spc_p21_index_with_bam.jls

~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-quant.jl /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_277_1.fq.gz /mnt/gtklab01/linglab/tdp43/tdp43_cnp_spc_p21/raw_reads/SPC_277_2.fq.gz -o /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_277/277_cko -x ~/whippet_run_cnp_spc_p21/index_with_bam/cnp_spc_p21_index_with_bam.jls

# delta psi
~/julia-1.7.2/bin/julia ~/Whippet.jl/bin/whippet-delta.jl -a /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_1142/1142_ctr.psi.gz,/mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_715/715_ctr.psi.gz,/mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_723/723_ctr.psi.gz,/mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_854/854_ctr.psi.gz -b /mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_1174/1174_cko.psi.gz,/mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_270/270_cko.psi.gz,/mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_280/280_cko.psi.gz,/mnt/cbis/home/yongshan/whippet_run_cnp_spc_p21/quant_with_bam/SPC_277/277_cko.psi.gz -o ~/whippet_run_cnp_spc_p21/delta_psi_with_bam/cnp_spc_p21
