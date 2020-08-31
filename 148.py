MAXN=80
ans=[0]*MAXN
size=[0]*3
a=[[0]*MAXN for i in range(3)]
for i in range(1,MAXN):
	ans[i]=2*ans[i-1]+1

def dfs(n,m,s,e,mid):
	if(n<=0):return
	if(m<ans[n-1]):
		dfs(n-1,m,s,mid,e)
	elif(m==ans[n-1]):
		size[s]-=n-1
		for i in range(1,n):
			a[mid][size[mid]]=a[s][size[s]+i-1]
			size[mid]+=1
	else:
		a[e][size[e]]=n
		size[e]+=1
		size[s]-=n
		for i in range(1,n):
			a[mid][size[mid]]=a[s][size[s]+i]
			size[mid]+=1
		dfs(n-1,m-ans[n-1]-1,mid,e,s)

		
def get_result(n,m):
	for i in range(3):
		size[i]=0
	size[0]=n
	for i in range(n):
		a[0][i]=n-i
	dfs(n,m,0,2,1)
	for i in range(3):
		print i,": "
		print a[i][size[i]-1::-1]

n=70
m=123456789101112131415
get_result(n,m)



