SAMPLE_LIST=(WSSS_F_LNG10211449	WSSS_F_LNG10211450	WSSS_F_LNG10211451	HCA_A_LNG10211354	HCA_A_LNG10211353	HCA_A_LNG10211355	HCA_A_LNG10211356	HCA_A_LNG10211357)

for i in ${!SAMPLE_LIST[@]}; do
	SAMPLE="${SAMPLE_LIST[$i]}"
	echo "$SAMPLE"
	rm -rf $SAMPLE
	mkdir $SAMPLE

	iget -Kf /archive/HCA/10X-VDJ/$SAMPLE/dandelion/dandelion/all_contig_dandelion.tsv $SAMPLE
	iget -Kf /archive/HCA/10X-VDJ/$SAMPLE/dandelion/dandelion/tmp/all_contig_igblast_db-all.tsv $SAMPLE
	
done