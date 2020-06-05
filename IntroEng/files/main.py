import getpass
import time
import matrix
import myVirus
from pyfiglet import Figlet

print('Starting program...')
time.sleep(2)
print('Initializing virus...')

myVirus.ping('www.nsa.gov')

myVirus.progressBar()

fig = Figlet(font = 'slant')
text = fig.renderText('Welcome to NSA.GOV')
print(text)

name = raw_input('Username: ')
password = getpass.getpass()

print('Welcome Agent ' + name)
print('You entered nuclear password ' + password)

time.sleep(2)
print('Accessing Nuclear Missile Silo...')
print('Substation F')
time.sleep(3)
print('Generating launch code...')
time.sleep(4)

fig = Figlet(font = 'hex')
text = fig.renderText('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ')
print(text)

time.sleep(2)
print('Success!')
time.sleep(1)
print('Launch sequence initiated...')

myVirus.progressBar2()

time.sleep(1)
print('Have a nice day!')

time.sleep(5)

matrix.doit()

