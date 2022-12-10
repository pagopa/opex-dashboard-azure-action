#!/bin/sh -l

function main()
{
  local template=$1
  local config=$2

  opex_dashboard generate \
    -t $template \
    -c $config \
    --package
}

main "$@"
