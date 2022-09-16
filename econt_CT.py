# -*- coding: utf-8 -*-
# UTF-8 encoding when using korean
num1,num2,num3= map(int,input().split())

if(num3==0):
	print(min(num1,num2)*2)
elif(num3==1):
	print(2*(min(num1,num2)+1))
elif(num3%2==1):
	if(num1==num2): print(int(num2*2+(num3/2)*2-1)) 
elif(num3%2==0):
	if(num1==num2): print(num2*2+num3)
	elif(num1 != num2): print(max(num1,num2)+num3)
 
	

		
		
