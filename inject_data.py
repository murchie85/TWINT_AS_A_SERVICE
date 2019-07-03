
import subprocess

profiles = 0
answer = ''
target = ''


while True:
    try:
        profiles = int(input('Welcome, how many profiles would you like to scan? *use numbers only please*'))
        break
    except:
        print("That's not a valid option!")



for p in range(0,profiles) :
	print('Please enterthe screen name of target i.e. realDonaldTrump - exclude the @ symbol')
	target = input()
	target = str(target)
	print("Scan for {0}?".format(target) + '?\nY/N')
	answer = input()
	if answer == 'y' or answer == 'Y':
		print('scanning')
		subprocess.call(['bash','/Users/adammcmurchie/projects/docker/twint_as_a_service/injector.sh',target])

	else:
		print('Skipping - did not enter y or Y')
