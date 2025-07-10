#include <bits/stdc++.h>
using namespace std;

int help(int n, vector<vector<int>> &points,vector<vector<int>> &dp,int last){
    if(n==0){
        int point=0;
        for(int i=0;i<3;i++){
            if(i!=last){
                point=max(point,points[0][i]);
            }
        }
        return point;
    }

    
    if(dp[n][last]!=-1)
    return dp[n][last];

    int pt=0;
    for(int i=0;i<3;i++){
        int cp=points[n][i]+help(n-1,points,dp,i);
        pt=max(cp,pt);      
        
    } 
    
    return dp[n][last]=pt;
    
}
int ninjaTraining(int n, vector<vector<int>> &points)
{
    // Write your code here.
    vector<vector<int>> dp(n,vector<int>(4,-1));
    return help(n,points,dp,3);
}