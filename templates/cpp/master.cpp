/* ########################## Template available in: https://propi.dev/cp  ########################## */
//#pragma GCC optimize("-O3","-funroll-all-loops","-ffast-math") //Uncomment for a faster runtime
#include <bits/stdc++.h>
//Debug methods
#define _(x) {cout << #x << " = " << x << endl;} //Print with endl
#define __(x) {cout << #x << " = " << x << " | ";} //Print without endl
#define _vec(x) {cout << #x << " = "; for(int i : x){cout << i << " ";} cout << endl;} //Print entire vector
#define _pair(x) {cout << #x << " = | " << "1st: " << x.first << " | " << "2nd: " << x.second << endl;} //Print pair
#define __time__ { auto duration = chrono::duration<double>( std::chrono::high_resolution_clock::now() - beg); _(duration.count()); }
//Constants
const auto beg = std::chrono::high_resolution_clock::now(); //Begining of the program
const double PI = acos(-1); //PI
const double E = 1e-8; //Small Number
const int INF_P = 0x3f3f3f3f; // Maximum positive integer that don't cause overflow when doubled
const int INF_N = 0xcfcfcfcf; // Minimum negative integer that don't cause underflow when doubled
const int MOD = 1e9+7; // Util with mod operations (prime number)
//Shortened Methods
#define ms(arr,val) memset(arr,val,sizeof(arr))
#define sz(x) ((int)(x).size())
#define pb push_back
#define mp make_pair
#define ff first
#define ss second
//loops
#define f(i,n) for(int i=0;i<n;i++) //From 0 to n-1
#define rf(i,n) for(int i=n-1;i>=0;i--) //From n-1 to 0
#define F(i,a,b) for(int i=a;i<b;i++)
#define RF(i,a,b) for(int i=a;i>=b;i--)
#define FOR(it,c) for ( __typeof((c).begin()) it=(c).begin(); it!=(c).end(); it++ )
#define RFOR(it,c) for ( __typeof((c).rbegin()) it=(c).rbegin(); it!=(c).rend(); it++ )
#define REP(it,c) for ( __typeof((c).begin()) it=(c).begin(); it!=(c).end();)
#define all(c) c.begin(), c.end()
#define rall(c) c.rbegin(), c.rend()
//IO Optimization
#define SpeedUP ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);
//Data Structures and Types
using namespace std;
typedef long long ll;
typedef unsigned long long ull;
typedef std::pair <ll, ll> pll;
typedef std::vector<ll> vll;
typedef std::vector<int> vi;
typedef std::vector<std::string> vs;
typedef std::vector<std::pair<int, int> > vpii;
typedef std::map<int, int> mii;
typedef std::map<ll, ll> mll;
typedef std::pair<int, int> pii;
typedef std::pair<std::string, int> psi;
// Custom Data Structs
struct Graph {
    int n; vector<vector<int>> adj;

    Graph(int n) : n(n) { adj.resize(n); }

    void addEdge(int u, int v) {
        adj[u].push_back(v);
        adj[v].push_back(u);
    }
};
// HEADERS
template <class T> using pqg = priority_queue<T, vector<T>, greater<T>>; //Min Heap
struct Graph; //Graph with adjacency list
template <template<typename...> class Container, typename T> // DFS: dbfs<stack,int>(G,v,visited)
void dbfs(Graph& G, int v, vector<bool>& visited);			 // BFS: dbfs<queue,int>(G,v,visited)

/* ################################################################################################## */


int main(){
	//SpeedUP; //Uncomment for a faster runtime
	string line;
	while(getline(cin,line)){
		cout << line << endl;
	}
	
	__time__
}


/* ################################################################################################## */

template <template<typename...> class Container, typename T>
void dbfs(Graph& G, int v, vector<bool>& visited) {
    Container<T> arr;
    arr.push(v);
    visited[v] = true;

    while (!arr.empty()) {
        v = arr.top(); arr.pop();
        cout << v << " ";

        for (int w : G.adj[v]) {
            if (!visited[w]) {
                arr.push(w);
                visited[w] = true;
            }
        }
    }
}

/* ########################## Template available in: https://propi.dev/cp  ########################## */
