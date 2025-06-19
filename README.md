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
Then you can compile it via below command
```sh
cd riscv-tests/isa
make XLEN=32 rv32ui
```

Now all files should be in container folder of the host