# Nushell Environment Config File
#
# version = "0.88.1"

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
$env.ENV_CONVERSIONS = {
    "PATH": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
    "Path": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
}

# Directories to search for scripts when calling source or use
# The default for this is $nu.default-config-dir/scripts
$env.NU_LIB_DIRS = [
    ($nu.default-config-dir | path join 'scripts') # add <nushell-config-dir>/scripts
]

# Directories to search for plugin binaries when calling register
# The default for this is $nu.default-config-dir/plugins
$env.NU_PLUGIN_DIRS = [
    ($nu.default-config-dir | path join 'plugins') # add <nushell-config-dir>/plugins
]

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
# $env.PATH = ($env.PATH | split row (char esep) | prepend '/some/path')

$env.PNPM_HOME = '/home/xiniha/.local/share/pnpm'
$env.PATH = (
    $env.PATH
    | split row (char esep)
    | prepend [
        $env.PNPM_HOME,
        '/home/xiniha/.deno/bin',
    ]
    | append [
        '/home/xiniha/.cargo/bin',
        '/home/xiniha/.local/bin',
        '/home/xiniha/.local/share/bin',
        "/opt/android-sdk/platform-tools"
    ]
)
$env.EDITOR = 'zeditor -w'
$env.ANDROID_SDK_ROOT = '/home/xiniha/Android/Sdk'

zoxide init nushell | save -f ~/.zoxide.nu
