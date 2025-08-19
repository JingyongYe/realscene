cd ./scripts

PATH_TO_SCENES="/cluster/balrog/jtang/3d_front_processed/threed_front.pkl" python train_objautoencoder.py ../config/obj_autoencoder/bed_living_diningrooms.yaml /cluster/balrog/jtang/3d_front_processed/objae_output --experiment_tag  "rooms_lat" --with_wandb_logger

PATH_TO_SCENES="/cluster/balrog/jtang/3d_front_processed/threed_front.pkl" python generate_objautoencoder.py /mnt/c/Users/kony/PycharmProjects/DiffuScene/config/obj_autoencoder/rooms.yaml /cluster/balrog/jtang/3d_front_processed/objae_output/ --experiment_tag "rooms_lat"

PATH_TO_SCENES="/cluster/balrog/jtang/3d_front_processed/threed_front.pkl" python preprocess_data.py /cluster/balrog/jtang/3d_front_processed/rooms_objfeats /mnt/c/Users/kony/PycharmProjects/export/ /mnt/c/Users/kony/PycharmProjects/Model_20250314/ /mnt/c/Users/kony/PycharmProjects/Model_20250314/model_info.json --dataset_filtering no_filtering --annotation_file ../config/room_threed_front_splits.csv --add_objfeats