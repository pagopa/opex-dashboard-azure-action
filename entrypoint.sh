#!/bin/sh -l

function generate()
{
  local template=$1
  local config=$2

  opex_dashboard generate \
    -t $template \
    -c $config \
    --package
}

function main()
{
  generate "$@"
}

main "$@"
