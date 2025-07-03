## Build image
Go inside the docker folder and run below command.

```sh
docker build -t riscv-compiler-32 .
```

## Running the container
Go inside docker folder and run below command

```sh
docker run -it --rm -v ./container:/home/ubuntu riscv-compiler-32 bash
```

Then run `run.sh` to download all riscv-files
Below step is not required, if in case it is required, you can use it.
Change -march=rv32gc to -march=rv32ima_zicsr_zifencei_zfinx in isa/Makefile for 32
Then you can compile it via below command

```sh
cd riscv-tests/isa
make XLEN=32 rv32ui
```

Now all files should be in container folder of the host
