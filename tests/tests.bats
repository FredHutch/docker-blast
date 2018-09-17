#!/usr/bin/env bats

@test "run.py in the PATH" {
  v="$(run.py -h 2>&1 || true )"
  [[ "$v" =~ "Run BLAST on a pair of FASTA files" ]]
}

@test "BLAST installed" {
  v="$(blastn -version)"
  [[ "$v" =~ "2.7.1" ]]
}

@test "AWS CLI installed" {
  v="$(aws s3 --version 2>&1 || true )"
  [[ "$v" =~ "aws-cli" ]]
}
