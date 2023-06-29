// ############################ Template available in: https://propi.dev/cp  ############################ //
#include <bits/stdc++.h> //Library with a lot of includes
//Debug methods
#define _(x) {cout << #x << " = " << x << endl;} //Print with endl
#define __(x) {cout << #x << " = " << x << " | ";} //Print without endl
#define _vec(x) {cout << #x << " = "; for(int i : x){cout << i << " ";} cout << endl;} //Print entire vector
#define _pair(x) {cout << #x << " = | " << "1st: " << x.first << " | " << "2nd: " << x.second << endl;} //Print pair
#define __time__ { auto duration = chrono::duration<double>( /* Show runtime */ \
std::chrono::high_resolution_clock::now() - beg); cout<<"Time: "<<duration.count()<<endl;}
#define __log__ { std::FILE* file = std::freopen("LOG.txt", "w", stdout); }
//Constants
const auto beg = std::chrono::high_resolution_clock::now(); //Begining of the program
const double PI = acos(-1); //PI
const double E = 1e-8; //Small Number (10^-8)
const int INF_P = 0x3f3f3f3f; //Max positive integer that don't cause overflow when doubled
const int INF_N = 0xcfcfcfcf; //Min negative integer that don't cause underflow when doubled
//IO Optimization
#define __SpeedUP__ ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);
//Loops
#define f(i,n) for(int i=0;i<n;i++) //For from 0 to n-1
#define rf(i,n) for(int i=n-1;i>=0;i--) //For from n-1 to 0
//Types
using namespace std;
typedef long long ll;
typedef unsigned long long ull;
typedef std::vector<ll> vll;
typedef std::vector<int> vi;
typedef std::pair<int, int> pii;
typedef std::pair <ll, ll> pll;
// ###################################################################################################### //

int main(){
	// __SpeedUP__ //Uncomment for a faster runtime
	string line;
	while(getline(cin,line)){
		cout << line << endl;
	}

	// __time__ //Uncomment for show runtime
}
