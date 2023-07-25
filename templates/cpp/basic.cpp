/* ######################## Template available in: https://propi.dev/cp  ######################## */
#include <bits/stdc++.h>
//Debug methods
#define _(x) {cout << #x << " = " << x << endl;} //Print with endl
#define __(x) {cout << #x << " = " << x << " | ";} //Print without endl
#define _vec(x) {cout << #x << " = "; for(int i : x){cout << i << " ";} cout << endl;} //Print entire vector
#define __log__ { std::FILE* file = std::freopen("LOG.txt", "w", stdout); } //Redirect output to LOG.txt
#define __time__ { auto duration = chrono::duration<double>( /* Show runtime */ \
std::chrono::high_resolution_clock::now() - beg); cout<<"Time: "<<duration.count()<<endl;}
//Constants
const auto beg = std::chrono::high_resolution_clock::now(); //Begining of the program
const double PI = acos(-1);
//IO Optimization
#define __FasterIO__ ios_base::sync_with_stdio(false); //Don't use stdio and iostream at the same time
//Types
using namespace std;
typedef long long ll;
typedef unsigned long long ull;
typedef std::vector<int> vi;
typedef std::vector<ll> vll;
/* ############################################################################################## */

int main(){
	//__FasterIO__		//Uncomment for improve runtime
	//__log__			//Uncomment for redirect output to LOG.txt
	string line;
	while(getline(cin,line)){
		cout << line << endl;
	}

	//__time__			//Uncomment for show runtime
}
