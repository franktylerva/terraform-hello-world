# Terraform Hello World

A minimal [OpenTofu](https://opentofu.org/) example that uses the
`hashicorp/local` provider to write `Hello, World!` to `hello.txt`.

## What is Terraform?

Terraform is an infrastructure as code (IaC) tool used to define and manage cloud and local infrastructure through code. Instead of manually creating resources in a cloud console, you describe the desired end state in configuration files, and Terraform makes the changes needed to reach that state.

Terraform is declarative. That means you define what you want, not how to do it step by step. For example, you declare that you want a file called `hello.txt` with the content `Hello, World!`, and Terraform figures out the actions necessary to create or update that resource.

## Prerequisites

Before running this project, install OpenTofu and make sure you have internet access the first time you initialize so Terraform can download the provider.

### Mac

If you use Homebrew:

```sh
brew install opentofu
```

### Windows

If you use winget:

```powershell
winget install OpenTofu.Opentofu
```

You can also install it with Chocolatey:

```powershell
choco install opentofu
```

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

Before you run `tofu destroy`, try modifying the file contents and then run
`tofu apply` again. Terraform compares the current file on disk with the
configuration and the stored state, then updates the state to reflect the new
real-world configuration. If you change `hello.txt` back to match what is
declared in the Terraform configuration, `tofu apply` will reconcile the state
so it matches the original desired state again.

To remove the generated file and other managed resources:

```sh
tofu destroy
```

The `.terraform/` directory, state files, and generated `hello.txt` are
excluded by `.gitignore`. The `.terraform.lock.hcl` provider lockfile is
intended to be committed so provider selections are consistent across runs.
