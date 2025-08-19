cd ./scripts


exp_dir="/cluster/balrog/jtang/3d_front_processed/experiments/"

#### rooms
config="../config/uncond/diffusion_rooms_instancond_lat32_v.yaml"
exp_name="diffusion_rooms_instancond_lat32_v"
python train_diffusion.py $config $exp_dir --experiment_tag $exp_name  --with_wandb_logger
