#!/bin/bash

CONFIGPATH='./configs/pstr/pstr_r50_24e_prw.py'
MODELPATH='work_dirs/0705/latest.pth'
OUTPATH='work_dirs/0705/pstr_results.pkl'
echo $TESTPATH $TESTNAME

i=24

#CUDA_VISIBLE_DEVICES=1
python ./tools/test.py ${CONFIGPATH} ${MODELPATH} --eval bbox --out ${OUTPATH}
echo '------------------------'
python ./tools/test_results_prw.py ${OUTPATH}
echo 'cbgm------------------------'
python ./tools/test_results_prw_cbgm.py ${OUTPATH}

