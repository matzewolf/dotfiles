# Alias definitions by Matze.
#############################


# Working with the package management apt
  
  # Updates the package list and upgrades the packages
  alias sauu='sudo apt update && sudo apt upgrade'
  
  # Updates the package list and installs a new package: saui example_package
  alias saui='sudo apt update && sudo apt install'

  
# Command: present example_file.pdf
  # Opens the named PDF file in Okular and enters presentation mode on page 1
  alias present='okular --page 1 --presentation'
