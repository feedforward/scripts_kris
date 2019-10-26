
ssh -N -f -L localhost:5433:localhost:5433 puppala@TRINITY.vision.cs.cmu.edu
ssh -N -f -L localhost:5432:localhost:5432 puppala@TRINITY.vision.cs.cmu.edu
ssh -N -f -L 5434:compute-0-10.local:5434 puppala@TRINITY.vision.cs.cmu.edu
sshfs -o defer_permissions puppala@TRINITY.vision.cs.cmu.edu:/ ~/mnt/trinity
ssh puppala@TRINITY.vision.cs.cmu.edu
