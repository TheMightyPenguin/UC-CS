import metodos
from math import cos, sin, pi, exp, tan, isnan

def f(x):
	return 2 * (x**3) - (34.0/7) * x*x + (209.0/49) * x - (173.0/343)

if __name__ == '__main__':
	#~ print (f(-1) * 2 - f(1)) / -2
	#~ print f(1)
	regula_falsi = metodos.regula_falsi_mod(-1, 1, f)
	print 'Converge a %.7f' % (regula_falsi)


