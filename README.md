# Nixvim configuration

## Usage
Add this flake as an input:

```nix
inputs.nixvim.url = "github:gabrielemercolino/.nixvim";
```

Then you can install the package as you like:

```nix
# in configuration.nix...
environment.systemPackages = [ inputs.nixvim.packages.x86_64-linux.default ];

# or in home.nix
home.packages = [ inputs.nixvim.packages.x86_64-linux.default ];
```

## Testing
To test the configuration simply by cloning and runing the following command:

```
nix run .
```

## Credits
- [dc-tec](https://github.com/dc-tec/nixvim)
