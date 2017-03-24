build:
        docker build -t fstudio .

run:
        docker run -ti --network apps -v /usr/bin/docker:/usr/bin/docker -v /nfs/cluster/munge.key:/etc/munge/munge.key -v /nfs/slurm/slurm.conf:/etc/slurm-llnl/slurm.conf --rm fstudio /bin/bash
