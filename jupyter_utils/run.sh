

# port opening alias for kubernetes pod
#echo "alias jp='f(){jupyter notebook --no-browser --ip 0.0.0.0 --port \$1 --NotebookApp.token=''};f'" >> ~/.zshrc
# Port opening in a remote server
echo "alias jp='f(){jupyter notebook --no-browser --port \$1};f'" >> ~/.zshrc

#mkdir ~/.jupyter/custom
cp custom.js  ~/.jupyter/custom/.
cp notebook.json ~/.jupyter/nbconfig/.
cp tree.json ~/.jupyter/nbconfig/.
