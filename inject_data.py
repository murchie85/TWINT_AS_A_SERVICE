
import subprocess

profiles = 0
answer = ''
target = ''


while True:
    try:
        profiles = int(input('Welcome, how many profiles would you like to scan? ***use numbers only please***'))
        break
    except:
        print("That's not a valid option!")



for p in range(0,profiles) :
	print('Please enterthe screen name of target i.e. realDonaldTrump - exclude the @ symbol')
	target = input()
	target = str(target)
	print('Scan Depth? A: 20 B: 60 C: 120 D: 200')
	depth = input()
	depth = str(depth)
	if depth == 'A' or depth == 'a':
		depth = '20'
	elif depth == 'b' or depth == 'B':
		depth = '60'
	elif depth == 'c' or depth == 'C':
		depth = '120'
	elif depth == 'd' or depth == 'D':
		depth = '200'
	else:
		print('No depth selected, defaulting to 20..')
		depth = '20'

	print('')
	print("Scanning at depth{0}".format(depth))
	print('')
	print("Scan for {0}?".format(target) + '?\nY/N')
	print('')
	answer = input()
	print('')
	if answer =='Y' or answer =='y':
		print('scanning.....')
		subprocess.call(['bash','/Users/adammcmurchie/projects/docker/twint_as_a_service/injector.sh',target, depth])
	else:
		print('Skipping - did not enter y or Y')
