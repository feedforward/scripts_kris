# For remote access
ssh -N -f -L localhost:5000:localhost:5000 puppala@TRINITY.vision.cs.cmu.edu

# For homework env access
#ssh -N -f -L localhost:5433:localhost:5433 puppala@TRINITY.vision.cs.cmu.edu

# For GPU access 
ssh -N -f -L 5010:compute-0-10.local:5010 puppala@TRINITY.vision.cs.cmu.edu
ssh -N -f -L 5019:compute-0-19.local:5019 puppala@TRINITY.vision.cs.cmu.edu
ssh -N -f -L 5114:compute-1-14.local:5114 puppala@TRINITY.vision.cs.cmu.edu
# Mounting the sever for file access.
sshfs -o defer_permissions puppala@TRINITY.vision.cs.cmu.edu:/ ~/mnt/trinity

# ssh for main entry
ssh puppala@TRINITY.vision.cs.cmu.edu
