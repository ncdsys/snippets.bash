##############################################################################
# set #setting #change #python #default #prompt.

echo 'import sys; sys.ps1="<token0>\n"; sys.ps2="<token1>\n"' > /home/tau/.set_py_prompt.py
echo "export PYTHONSTARTUP=/home/tau/.set_py_prompt.py" >> /home/tau/.bashrc

