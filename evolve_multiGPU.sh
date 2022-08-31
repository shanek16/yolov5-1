for i in 0 1 2 3; do
  sleep $(expr 30 \* $i) &&  # 30-second delay (optional)
  echo 'Starting GPU '$i'...' &&
  nohup python train.py --img 640 --bath 32 --epochs 10 --data safety.yaml --weights L_best.pt --cache --device $i --evolve > evolve_gpu_$i.log &
done