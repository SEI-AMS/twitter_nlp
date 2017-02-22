cd hbc/models
gcc -O3 labels.c stats.c samplib.c LabeledLDA_infer_stdin.c -o LabeledLDA_infer_stdin.out -lm
cd ../../
if [ "$(uname)" != "Darwin" ]; then
    tar xvzf TinySVM-0.09.tar.gz
    cd TinySVM-0.09
    ./configure --prefix=`pwd`/../ && make && make install
    cd ..
fi
cd python/cap
bash build.sh
