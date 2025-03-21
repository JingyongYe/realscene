cd ./scripts
PATH_TO_SCENES="/cluster/balrog/jtang/3d_front_processed/threed_front.pkl" python train_objautoencoder.py ../config/obj_autoencoder/bed_living_diningrooms_lat32.yaml your_objae_output_directory --experiment_tag  "bed_living_diningrooms_lat32" --with_wandb_logger

PATH_TO_SCENES="/cluster/balrog/jtang/3d_front_processed/threed_front.pkl" python generate_objautoencoder.py /mnt/c/Users/kony/PycharmProjects/DiffuScene/config/obj_autoencoder/bedrooms.yaml ../objautoencoder_pretrained/ --experiment_tag "bed_living_diningrooms_lat32"

PATH_TO_SCENES="/cluster/balrog/jtang/3d_front_processed/threed_front.pkl" python generate_objautoencoder.py /mnt/c/Users/kony/PycharmProjects/DiffuScene/config/obj_autoencoder/diningrooms.yaml ../objautoencoder_pretrained/ --experiment_tag "bed_living_diningrooms_lat32"

PATH_TO_SCENES="/cluster/balrog/jtang/3d_front_processed/threed_front.pkl" python generate_objautoencoder.py /mnt/c/Users/kony/PycharmProjects/DiffuScene/config/obj_autoencoder/livingrooms.yaml ../objautoencoder_pretrained/ --experiment_tag "bed_living_diningrooms_lat32"

PATH_TO_SCENES="/cluster/balrog/jtang/3d_front_processed/threed_front.pkl" python preprocess_data.py /cluster/balrog/jtang/3d_front_processed/livingrooms_objfeats_32_64 /cluster/balrog/jtang/3D-FRONT/ /cluster/balrog/jtang/3D-FUTURE-model /cluster/balrog/jtang/3D-FUTURE-model/model_info.json --dataset_filtering threed_front_livingroom --annotation_file ../config/livingroom_threed_front_splits.csv --add_objfeats