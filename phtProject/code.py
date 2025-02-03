import board
import time
from adafruit_ms8607 import MS8607

i2c = board.I2C()
pht = MS8607(i2c)

while True:
        print(f'{pht.pressure:.2f}, {(pht.temperature * 9 /5 + 32):.2f}, {pht.relative_humidity:.2f}')
        time.sleep(2)
