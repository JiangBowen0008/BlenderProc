export PYTHONPATH=$PYTHONPATH:../bop_toolkit
for i in $(seq 1 $1)
do
    randport1=$(python3 -S -c "import random; print(random.randrange(1,15))")
    echo $randport
    python3 run.py ImageGenConfig/config.yaml BOP custom-grasp $randport1 custom-suction $randport1  ../bop_toolkit resources/cctextures ../output 
    # python3 run.py ImageGenConfig/config.yaml BOP_test custom-grasp $randport1 custom-suction $randport1  ../bop_toolkit resources/cctextures ../output 
done
python3 ../bop_toolkit/scripts/calc_gt_masks.py