for i in $(seq 1 $1)
do
    randport=$(python3 -S -c "import random; print(random.randrange(1,15))")
    echo $randport
    python3 run.py ImageGenConfig/config.yaml BOP lmo ../bop_toolkit resources/cctextures ../output $randport
done