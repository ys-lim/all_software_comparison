#####################
# CNP CRE SPINAL CORD P21
#####################

# create python2 env using conda

pip install misopy

gunzip Mus_musculus.GRCm39.104.gff3.gz
# need to be gunzipped file (uncompressed)

# 1. Index gff3
python2 ~/yarden-MISO-b714021/misopy/index_gff.py --index ~/MISO_run/gencode.vM27.primary_assembly.annotation.gff3 ~/MISO_run/MISO_indexed_events_gencode/ 

# 2. Use miso to get isoform expression estimates, optionally using a cluster to run jobs in parallel
python2 ~/yarden-MISO-b714021/misopy/miso.py --run ~/MISO_run/MISO_indexed_events_gencode/ /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_STAR_yongshan/p21_spc_merged_ctr.bam --output-dir ~/MISO_run_cnp_spc_p21/MISO_output_gencode_ctr_merged/ --read-len 100

python2 ~/yarden-MISO-b714021/misopy/miso.py --run ~/MISO_run/MISO_indexed_events_gencode/ /mnt/gtklab01/yongshan/tdp43_cnp_spc_21d_aligned_STAR_yongshan/p21_spc_merged_cko.bam --output-dir ~/MISO_run_cnp_spc_p21/MISO_output_gencode_cko_merged/ --read-len 100

# 3. Summarize MISO inferences using summarize_miso --summarize-samples
python2 ~/yarden-MISO-b714021/misopy/summarize_miso.py --summarize-samples ~/MISO_run_cnp_spc_p21/MISO_output_gencode_cko_merged/ ~/MISO_run_cnp_spc_p21/MISO_summaries/

python2 ~/yarden-MISO-b714021/misopy/summarize_miso.py --summarize-samples ~/MISO_run_cnp_spc_p21/MISO_output_gencode_ctr_merged/ ~/MISO_run_cnp_spc_p21/MISO_summaries/

# 4. Make pairwise comparisons between samples to detect differentially expressed isoforms/events with compare_miso --compare-samples
python2 ~/yarden-MISO-b714021/misopy/compare_miso.py --compare-samples ~/MISO_run_cnp_spc_p21/MISO_output_gencode_ctr_merged/ ~/MISO_run_cnp_spc_p21/MISO_output_gencode_cko_merged/ ~/MISO_run_cnp_spc_p21/MISO_comparison_output/
