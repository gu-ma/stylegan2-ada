docker run --gpus all -it --rm -v `pwd`:/scratch --user $(id -u):$(id -g) stylegan2ada:latest bash -c \
    "(cd /scratch && DNNLIB_CACHE_DIR=/scratch/.cache python3 projector.py --target=in/flowers_movies/02_10fps \
    --outdir=out/flowers_movies/02_10fps --network=checkpoints/network-snapshot-000064.pkl --save-video=False)"
