python -m torch.distributed.launch --nproc_per_node=1 bigearthnet_B12_moco_LC.py \
--data_dir /mnt/d/codes/SSL_examples/datasets/BigEarthNet \
--lmdb_dir /mnt/d/codes/SSL_examples/datasets/BigEarthNet/dataload_op1_lmdb \
--checkpoints_dir /mnt/d/codes/ssl4eo-review/src/checkpoints/moco_lc/bigearthnet_B12_LC_moco_rn50_10 \
--save_path /mnt/d/codes/ssl4eo-review/src/checkpoints/moco_lc/bigearthnet_B12_LC_moco_rn50_10.pth.tar \
--backbone resnet50 \
--bands all \
--train_frac 0.1 \
--batchsize 256 \
--lr 0.05 \
--schedule 60 80 \
--epochs 100 \
--num_workers 8 \
--seed 42 \
--pretrained /mnt/d/codes/ssl4eo-review/src/checkpoints/moco/bigearthnet_B12_train_moco_rn50.pth.tar \