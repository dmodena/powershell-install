# Read json
$software_list = (Get-Content '.\software_list.json' | Out-String | ConvertFrom-Json)

# Iterate through list
foreach ($software in $software_list) {

  # Check if software is installed
  Invoke-Expression $software.before_install
  if ($?) {
    continue
  }

  # Check if path exists

  # Install software

  # Any post_install action
}


