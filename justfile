WORKSPACE_ROOT := justfile_directory()

default:
  {{just_executable()}} --list

clean item:
  rm -rf {{WORKSPACE_ROOT}}/{{item}}/out

reset item: (clean item)
  mkdir {{WORKSPACE_ROOT}}/{{item}}/out

cdecl: (reset "cdecl") (build "cdecl")
  cp -r {{WORKSPACE_ROOT}}/cdecl/out/* ~/
  ln -s cdecl ~/bin/c++decl

dtach: (reset "dtach") (build "dtach")
  cp -r {{WORKSPACE_ROOT}}/dtach/out/* ~/

build item:
  docker build --tag ykis-0-0/builder-{{item}} {{WORKSPACE_ROOT}}/{{item}}
  docker run --rm -it \
  -u "$(id -u):$(id -g)" \
  -v {{WORKSPACE_ROOT}}/{{item}}/out/:/out/ \
  ykis-0-0/builder-{{item}}
