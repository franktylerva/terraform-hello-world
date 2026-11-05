# Terraform Hello World

A minimal [OpenTofu](https://opentofu.org/) example that uses the
`hashicorp/local` provider to write `Hello, World!` to `hello.txt`.

## Requirements

- OpenTofu
- Internet access the first time you initialize, to download the provider

## Usage

Run these commands from this directory:

```sh
tofu init
tofu plan
tofu apply
```

Confirm the apply when prompted. OpenTofu creates `hello.txt` in this
directory. To inspect it:

```sh
cat hello.txt
```

To remove the generated file and other managed resources:

```sh
tofu destroy
```

The `.terraform/` directory, state files, and generated `hello.txt` are
excluded by `.gitignore`. The `.terraform.lock.hcl` provider lockfile is
intended to be committed so provider selections are consistent across runs.
