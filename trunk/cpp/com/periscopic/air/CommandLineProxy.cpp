  //For use with as3/com/periscopic/air/CommandLineProcess.as

   #include <iostream>
   #include <string>
   #include <stdlib.h>

   using namespace std;

   int main(int argc, char* argv[]) {

   string argString;
   const char* space=" ";

   for (int i = 1; i < argc; ++i) {
   if(i==1){
   argString=argv[i];
   }else{
   argString.append(space);
   argString.append(argv[i]);
   }
   }

   system(argString.data());
   return 0;
   }
