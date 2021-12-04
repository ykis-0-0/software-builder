WORKSPACE_ROOT := justfile_directory()

default:
  {{just_executable()}} --list

clean item:
  rm -rf {{WORKSPACE_ROOT}}/{{item}}/out

reset item: (clean item)
  mkdir {{WORKSPACE_ROOT}}/{{item}}/out

cdecl: (reset "cdecl")
  docker build --tag ykis-0-0/builder-cdecl {{WORKSPACE_ROOT}}/cdecl
  docker run --rm -it \
  -u "$(id -u):$(id -g)" \
  -v {{WORKSPACE_ROOT}}/cdecl/out:/out \
  ykis-0-0/builder-cdecl

dtach: (reset "dtach")
  docker build --tag ykis-0-0/builder-dtach {{WORKSPACE_ROOT}}/dtach
  docker run --rm -it \
  -u "$(id -u):$(id -g)" \
  -v {{WORKSPACE_ROOT}}/dtach/out:/out \
  ykis-0-0/builder-dtach

