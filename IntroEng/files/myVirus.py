import time
import subprocess
from tqdm import tqdm

def addOne(x):
  ans = x + 1
  print(ans)

def ping(host):
  command = ['ping', '-c', '1', host]
  return subprocess.call(command) == 0

def progressBar():
  pb = tqdm(total = 100)
  pb.set_description('  Initializing virus......')
  time.sleep(2)
  pb.update(10)
  pb.set_description('  Accessing NSA servers...')
  time.sleep(1)
  pb.update(10)
  pb.set_description('  Accessing NSA servers...')
  time.sleep(1)
  pb.update(10)
  pb.set_description('  Access Granted.         ')
  time.sleep(3)
  pb.update(10)
  pb.set_description('  Uploading Virus.......')
  time.sleep(1)
  pb.update(10)
  pb.set_description('  Uploading Virus.......')
  time.sleep(1)
  pb.update(10)
  pb.set_description('  Uploading Virus.......')
  time.sleep(1)
  pb.update(10)
  pb.set_description('  Uploading Virus.......')
  time.sleep(1)
  pb.update(10)
  pb.set_description('  Uploading Virus......')
  time.sleep(1)
  pb.update(10)
  pb.set_description('  Uploading Virus......')
  time.sleep(1)
  pb.update(10)
  pb.set_description('  Virus Uploaded!')
  pb.close()

def progressBar2():
  pb = tqdm(total = 5) 
  pb.set_description('  5...')
  time.sleep(2)
  pb.update(1)
  pb.set_description('  4...')
  time.sleep(2)
  pb.update(1)
  pb.set_description('  3...')
  time.sleep(2)
  pb.update(1)
  pb.set_description('  2...')
  time.sleep(2)
  pb.update(1)
  pb.set_description('  1...')
  time.sleep(2)
  pb.update(1)
  pb.set_description('  Launch Success...')
