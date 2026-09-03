#this file will generate random data and thes connect with te db
import random
import time

def simulate_temp():
    temp = round(random.uniform(10, 30), 2)
    return temp

if __name__ == "__main__":

    while True:

        temp = simulate_temp()
        print(temp)
        time.sleep(0.5)

