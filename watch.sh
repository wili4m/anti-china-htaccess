for a in $(ls -l | grep ^d | awk {print}); do echo -n "$a: $(ls $a | wc -l)" ; done
