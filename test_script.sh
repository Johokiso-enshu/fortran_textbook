for file in `\find . -maxdepth 3 -type f -name "*.f90"`; do
    gfortran $file -o "${file:0:-4}.o"
    echo "running"+./"${file:0:-4}.o"
    : ./"${file:0:-4}.o"
    rm ./"${file:0:-4}.o"
done
