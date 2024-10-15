model='DiT-g/2'
params=" \
            --qk-norm \
            --model ${model} \
            --rope-img base512 \
            --rope-real \
            "
deepspeed   --include localhost:0,7,10 hydit/train_deepspeed.py ${params}  "$@"