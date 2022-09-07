# https://github.com/ultralytics/yolov5/issues/607
# for i in 0 1 2 3; do
#   sleep $(expr 30 \* $i) &&  # 30-second delay (optional)
#   echo 'Starting GPU '$i'...' &&
#   nohup python train.py --img 640 --bath 32 --epochs 10 --data safety.yaml --weights yolov5l.pt --cache --device $i --evolve > evolve_gpu_$i.log &
# done

# https://docs.ultralytics.com/tutorials/hyperparameter-evolution/
for i in 0 1 2 3; do
  nohup python train.py --epochs 10 --data safety.yaml --weights yolov5x.pt --cache --evolve --device $i > evolve_gpu_$i.log &
done