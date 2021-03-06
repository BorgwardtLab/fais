all: non_wy wy
all_nv: non_wy_nv wy_nv
non_wy:
	gcc -O3 -o compiled/significant_interval_search_exact single_analysis/non_wy/significant_interval_search_exact.c -lm
	gcc -O3 -o compiled/significant_interval_search_chi single_analysis/non_wy/significant_interval_search_chi.c -lm
non_wy_nv:
	gcc -DNO_VERBOSE -O3 -o compiled/significant_interval_search_exact single_analysis/non_wy/significant_interval_search_exact.c -lm
	gcc -DNO_VERBOSE -O3 -o compiled/significant_interval_search_chi single_analysis/non_wy/significant_interval_search_chi.c -lm
wy:
	gcc -O3 -o compiled/significant_interval_search_wy_exact single_analysis/wy/significant_interval_search_wy_exact.c -lm
	gcc -O3 -o compiled/significant_interval_search_wy_chi single_analysis/wy/significant_interval_search_wy_chi.c -lm
wy_nv:
	gcc -DNO_VERBOSE -O3 -o compiled/significant_interval_search_wy_exact single_analysis/wy/significant_interval_search_wy_exact.c -lm
	gcc -DNO_VERBOSE -O3 -o compiled/significant_interval_search_wy_chi single_analysis/wy/significant_interval_search_wy_chi.c -lm
