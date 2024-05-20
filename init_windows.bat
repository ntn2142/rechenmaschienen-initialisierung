:: install chocolatey
call scripts\install_chocolatey.bat
:: install programms
call scripts\choco_install_packages.bat
:: fetch MYVIMRC
call scripts\fetch_myvimrc.bat
:: install rust and tools
call scripts\rust_setup.bat
