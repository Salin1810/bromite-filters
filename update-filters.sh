#!/bin/bash
wget -O filters/annoyances.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_14_Annoyances/filter.txt
wget -O filters/social.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_4_Social/filter.txt
wget -O filters/spyware.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_3_Spyware/filter.txt
wget -O filters/track-param.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_17_TrackParam/filter.txt
wget -O filters/vietnamese.txt https://github.com/luxysiv/Blockads/raw/master/Android/abpvn-ext.txt

ruleset_converter --input_format=filter-list \
		--output_format=unindexed-ruleset \
                --input_files=annoyances.txt,social.txt \
		--output_file=filters.dat
