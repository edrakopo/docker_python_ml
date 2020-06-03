#checking if the numpy package is installed
if python3 -c 'import pkgutil; exit(not pkgutil.find_loader("numpy"))'; then
    echo 'numpy found'
else
    echo 'numpy not found - installing now...'
    pip3 install numpy
fi

#checking if the pandas package is installed
if python3 -c 'import pkgutil; exit(not pkgutil.find_loader("pandas"))'; then
    echo 'pandas found'
else
    echo 'pandas not found - installing now...'
    pip3 install pandas
fi

#checking if the tensorflow package is installed
if python3 -c 'import pkgutil; exit(not pkgutil.find_loader("tensorflow"))'; then
    echo 'tensorflow found'
else
    echo 'tensorflow not found - installing now...'
    pip3 install --user --upgrade tensorflow
fi

#checking if the matplotlib package is installed
if python3 -c 'import pkgutil; exit(not pkgutil.find_loader("matplotlib"))'; then
    echo 'matplotlib found'
else
    echo 'matplotlib not found - installing now...'
    pip3 install matplotlib
fi

#checking if the sklearn package is installed
if python3 -c 'import pkgutil; exit(not pkgutil.find_loader("sklearn"))'; then
    echo 'sklearn found'
else
    echo 'sklearn not found - installing now...'
    pip3 install sklearn
fi

#creating a folder to store outputs: 
if [ -d "outputs_ener" ]; then
    echo "Directory outputs_ener exists."
fi
if [ ! -d "outputs_ener" ]; then
   echo "Directory outputs_ener DOES NOT exist. Create a directory to store the output files from the track length in water and energy reconstruction!"
   mkdir outputs_ener
fi

