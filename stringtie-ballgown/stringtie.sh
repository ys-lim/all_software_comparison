#####################
# CNP CRE SPINAL CORD P21
#####################

# ~/stringtie-2.2.1.Linux_x86_64/stringtie
# for each RNA-Seq sample, run StringTie to assemble the read alignments obtained in the previous step; it is recommended to run StringTie with the -G option if the reference annotation is available.
# run StringTie with --merge in order to generate a non-redundant set of transcripts observed in any of the RNA-Seq samples assembled previously. The stringtie --merge mode takes as input a list of all the assembled transcripts files (in GTF format) previously obtained for each sample, as well as a reference annotation file (-G option) if available.

# 1142_ctr
~/stringtie-2.2.1.Linux_x86_64/stringtie /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/1142_ctr_XS_onlyCHR_junctions.sorted.bam -G ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf -o ~/stringtie_run_cnp_spc_p21/1142_ctr.gtf

# 1174_cko
~/stringtie-2.2.1.Linux_x86_64/stringtie /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/1174_cko_XS_onlyCHR_junctions.sorted.bam -G ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf -o ~/stringtie_run_cnp_spc_p21/1174_cko.gtf

# 270_cko
~/stringtie-2.2.1.Linux_x86_64/stringtie /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/270_cko_XS_onlyCHR_junctions.sorted.bam -G ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf -o ~/stringtie_run_cnp_spc_p21/270_cko.gtf

# 277_cko
~/stringtie-2.2.1.Linux_x86_64/stringtie /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/277_cko_XS_onlyCHR_junctions.sorted.bam -G ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf -o ~/stringtie_run_cnp_spc_p21/277_cko.gtf

# 280_cko
~/stringtie-2.2.1.Linux_x86_64/stringtie /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/280_cko_XS_onlyCHR_junctions.sorted.bam -G ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf -o ~/stringtie_run_cnp_spc_p21/280_cko.gtf

# 715_ctr
~/stringtie-2.2.1.Linux_x86_64/stringtie /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/715_ctr_XS_onlyCHR_junctions.sorted.bam -G ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf -o ~/stringtie_run_cnp_spc_p21/715_ctr.gtf

# 723_ctr
~/stringtie-2.2.1.Linux_x86_64/stringtie /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/723_ctr_XS_onlyCHR_junctions.sorted.bam -G ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf -o ~/stringtie_run_cnp_spc_p21/723_ctr.gtf

# 854_ctr
~/stringtie-2.2.1.Linux_x86_64/stringtie /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/854_ctr_XS_onlyCHR_junctions.sorted.bam -G ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf -o ~/stringtie_run_cnp_spc_p21/854_ctr.gtf

# merging gtfs
~/stringtie-2.2.1.Linux_x86_64/stringtie --merge -G ~/whippet_run/gencode.vM27.primary_assembly.annotation.gtf -o ~/stringtie_run_cnp_spc_p21/merged.gtf ~/stringtie_run_cnp_spc_p21/1142_ctr.gtf ~/stringtie_run_cnp_spc_p21/1174_cko.gtf ~/stringtie_run_cnp_spc_p21/270_cko.gtf ~/stringtie_run_cnp_spc_p21/277_cko.gtf ~/stringtie_run_cnp_spc_p21/280_cko.gtf ~/stringtie_run_cnp_spc_p21/715_ctr.gtf ~/stringtie_run_cnp_spc_p21/723_ctr.gtf ~/stringtie_run_cnp_spc_p21/854_ctr.gtf

# quantify transcript abundance
~/stringtie-2.2.1.Linux_x86_64/stringtie -e -B -G ~/stringtie_run_cnp_spc_p21/merged.gtf -o ~/stringtie_run_cnp_spc_p21/output/1142_ctr.ballgown /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/1142_ctr_XS_onlyCHR_junctions.sorted.bam

# 1174_cko
~/stringtie-2.2.1.Linux_x86_64/stringtie -e -B -G ~/stringtie_run_cnp_spc_p21/merged.gtf -o ~/stringtie_run_cnp_spc_p21/output/1174_cko/1174_cko.ballgown /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/1174_cko_XS_onlyCHR_junctions.sorted.bam

# 270_cko
~/stringtie-2.2.1.Linux_x86_64/stringtie -e -B -G ~/stringtie_run_cnp_spc_p21/merged.gtf -o ~/stringtie_run_cnp_spc_p21/output/270_cko/270_cko.ballgown /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/270_cko_XS_onlyCHR_junctions.sorted.bam

# 277_cko
~/stringtie-2.2.1.Linux_x86_64/stringtie -e -B -G ~/stringtie_run_cnp_spc_p21/merged.gtf -o ~/stringtie_run_cnp_spc_p21/output/277_cko/277_cko.ballgown /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/277_cko_XS_onlyCHR_junctions.sorted.bam

# 280_cko
~/stringtie-2.2.1.Linux_x86_64/stringtie -e -B -G ~/stringtie_run_cnp_spc_p21/merged.gtf -o ~/stringtie_run_cnp_spc_p21/output/280_cko/280_cko.ballgown /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/280_cko_XS_onlyCHR_junctions.sorted.bam

# 715_ctr
~/stringtie-2.2.1.Linux_x86_64/stringtie -e -B -G ~/stringtie_run_cnp_spc_p21/merged.gtf -o ~/stringtie_run_cnp_spc_p21/output/715_ctr/715_ctr.ballgown /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/715_ctr_XS_onlyCHR_junctions.sorted.bam

#723_ctr
~/stringtie-2.2.1.Linux_x86_64/stringtie -e -B -G ~/stringtie_run_cnp_spc_p21/merged.gtf -o ~/stringtie_run_cnp_spc_p21/output/723_ctr/723_ctr.ballgown /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/723_ctr_XS_onlyCHR_junctions.sorted.bam

# 854_ctr
~/stringtie-2.2.1.Linux_x86_64/stringtie -e -B -G ~/stringtie_run_cnp_spc_p21/merged.gtf -o ~/stringtie_run_cnp_spc_p21/output/854_ctr/854_ctr.ballgown /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_withXStag_STAR/854_ctr_XS_onlyCHR_junctions.sorted.bam

# ballgown
