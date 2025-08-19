cd ./scripts

exp_dir="/cluster/balrog/jtang/3d_front_processed/experiments"

config="../config/uncond/diffusion_rooms_instancond_lat32_v.yaml"
exp_name="diffusion_rooms_instancond_lat32_v"
weight_file="$exp_dir/$exp_name/model_09000"
threed_future='/cluster/balrog/jtang/3d_front_processed/threed_future_model_filtering.pkl'

python  generate_diffusion.py $config  $exp_dir/$exp_name/gen_top2down_notexture_nofloor $threed_future  --weight_file $weight_file \
    --without_screen  --n_sequences 5 --render_top2down --save_mesh --no_texture --without_floor  --clip_denoised --retrive_objfeats

