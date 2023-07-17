n<-readline(prompt="Enter number")
n<-as.integer(n)
fact<-1
while(n>0){ 
  fact<-fact*n
   n<-n-1
 }
print(fact)

#factorial function

factr<-function(n){
  fact<-1
  while(n>0){
    fact<-fact*n
    n<-n-1
  }
  print(fact)
}
n<-readline(prompt="Enter number")
n<-as.integer(n)
factr(n)

#calculator

a1=as.integer(readline(prompt = "Enter no.1:"))
a2=as.integer(readline(prompt = "Enter no.2:"))
ch=as.integer(readline(prompt = "Enter choice:"))
y<-switch(ch,
  "1"=paste("Addition:",a1+a2),
  "2"=paste("subtraction:",a1-a2),
  "3"=paste("Multiplication:",a1*a2),
  "4"=paste("Division:",a1/a2)
)
print(y)


#r pgm to print 1 to 100 and print fyzz for multiples of 3, 
#print buzz for mult of 5
#and fyzz buzz for mult of 3 and 5
i=1
while(i<100){
  if(i%%3==0 && i%%5!=0)
    print("fyzz")
  else if(i%%3!=0 && i%%5==0)
    print("buzz")
  else if(i%%3==0 && i%%5==0)
    print("fyzz buzz")
  i=i+1
}
