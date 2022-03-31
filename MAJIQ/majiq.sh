#####################
# CNP CRE SPINAL CORD P21
#####################

# Build splice graphs for all samples using gff3 annotation
majiq build ~/MISO_run/gencode.vM27.primary_assembly.annotation.gff3 -c ~/majiq_run_cnp_spc_p21/conf -j 16 -o ~/majiq_run_cnp_spc_p21/majiq_out

# PSI quantification 
majiq psi ~/majiq_run_cnp_spc_p21/majiq_build_out/1142_ctr.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/715_ctr.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/723_ctr.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/854_ctr.majiq -j 16 -o ~/majiq_run_cnp_spc_p21/majiq_psi_out -n ctr

majiq psi ~/majiq_run_cnp_spc_p21/majiq_build_out/1174_cko.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/270_cko.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/277_cko.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/280_cko.majiq -j 16 -o ~/majiq_run_cnp_spc_p21/majiq_psi_out -n cko

# Delta PSI quantification
majiq deltapsi -grp1 ~/majiq_run_cnp_spc_p21/majiq_build_out/1142_ctr.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/715_ctr.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/723_ctr.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/854_ctr.majiq -grp2 ~/majiq_run_cnp_spc_p21/majiq_build_out/1174_cko.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/270_cko.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/277_cko.majiq ~/majiq_run_cnp_spc_p21/majiq_build_out/280_cko.majiq -j 16 -o ~/majiq_run_cnp_spc_p21/majiq_delta_psi_out -n ctr cko
