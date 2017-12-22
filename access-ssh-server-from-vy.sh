# access ssh server from vy.
tee -i >(stdbuf -o 0 ssh user@addr 'bash -i')

# accept signals.
tee >(stdbuf -o 0 ssh user@addr 'bash -i')

