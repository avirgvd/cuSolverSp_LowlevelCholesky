################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/cuSolverSp_LowlevelCholesky.cpp \
../src/mmio_wrapper.cpp 

C_SRCS += \
../src/mmio.c 

OBJS += \
./src/cuSolverSp_LowlevelCholesky.o \
./src/mmio.o \
./src/mmio_wrapper.o 

CPP_DEPS += \
./src/cuSolverSp_LowlevelCholesky.d \
./src/mmio_wrapper.d 

C_DEPS += \
./src/mmio.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.1/bin/nvcc -I"/home/govind/CUDA/samples/7_CUDALibraries" -I"/home/govind/CUDA/samples/common/inc" -I"/home/govind/cuda-workspace/cuSolverSp_LowlevelCholesky" -G -g -O0 -gencode arch=compute_61,code=sm_61 -m64 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.1/bin/nvcc -I"/home/govind/CUDA/samples/7_CUDALibraries" -I"/home/govind/CUDA/samples/common/inc" -I"/home/govind/cuda-workspace/cuSolverSp_LowlevelCholesky" -G -g -O0 --compile -m64  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.1/bin/nvcc -I"/home/govind/CUDA/samples/7_CUDALibraries" -I"/home/govind/CUDA/samples/common/inc" -I"/home/govind/cuda-workspace/cuSolverSp_LowlevelCholesky" -G -g -O0 -gencode arch=compute_61,code=sm_61 -m64 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.1/bin/nvcc -I"/home/govind/CUDA/samples/7_CUDALibraries" -I"/home/govind/CUDA/samples/common/inc" -I"/home/govind/cuda-workspace/cuSolverSp_LowlevelCholesky" -G -g -O0 --compile -m64  -x c -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


