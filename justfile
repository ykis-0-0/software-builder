WORKSPACE_ROOT := justfile_directory()

default:
  {{just_executable()}} --list

clean item:
  rm -rf {{WORKSPACE_ROOT}}/{{item}}/out

reset item: (clean item)
  mkdir {{WORKSPACE_ROOT}}/{{item}}/out

cdecl: (reset "cdecl")
  docker build {{WORKSPACE_ROOT}}/cdecl --tag ykis-0-0/builder-cdecl
  docker run --rm -it \
  -v {{WORKSPACE_ROOT}}/cdecl/out:/out \
  --build-arg CHOWN "$(id -u):$(id -g)" \
  ykis-0-0/builder-cdecl

dtach: (reset "dtach")
  docker build {{WORKSPACE_ROOT}}/dtach --tag ykis-0-0/builder-dtach
  docker run --rm -it \
  -v {{WORKSPACE_ROOT}}/dtach/out:/out \
  --build-arg CHOWN "$(id -u):$(id -g)" \
  ykis-0-0/builder-dtach

