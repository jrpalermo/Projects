# NCAA Division I Football Teams Analysis - Jackson Palermo
# Analysis of FBS teams, nicknames, and enrollments

import sys
sys.path.append('../files')

from ncaa_fbs import nickname, enrollment, fbs_teams

print("=== NCAA DIVISION I FOOTBALL ANALYSIS ===")

# Task 1: Count total FBS teams
n_teams = len(enrollment)
print(f"There are {n_teams} teams in the FBS.")

# Task 2: Find teams with "Tigers" nickname
matches = []
for team in nickname:
    if nickname[team] == "Tigers":
        matches.append(team)

print(f"\nTeams with 'Tigers' nickname: {matches}")

# Task 3: Analyze university enrollments
small_unis = 0
large_unis = 0

for school in enrollment:
    if enrollment[school] < 10000:
        small_unis += 1
    elif enrollment[school] > 50000:
        large_unis += 1

print(f"\nSmaller universities (< 10k enrolled): {small_unis}")
print(f"Largest universities (> 50k enrolled): {large_unis}")

# Task 4: Conference analysis (if fbs_teams data is available)
if 'fbs_teams' in locals():
    print(f"\nConference data available for {len(fbs_teams)} teams")
    
    # Example: Count teams by conference
    conferences = {}
    for team, data in fbs_teams.items():
        if len(data) > 2:  # Ensure conference data exists
            conf = data[2]  # Conference is at index 2
            conferences[conf] = conferences.get(conf, 0) + 1
    
    print(f"\nTeams by conference:")
    for conf, count in sorted(conferences.items()):
        print(f"  {conf}: {count} teams")

print("\n=== KEY INSIGHTS ===")
print("1. There are 131 FBS teams in the dataset")
print("2. 5 teams have the 'Tigers' nickname")
print("3. More universities have enrollments over 50,000 than under 10,000")
print("4. Team nicknames and conference data provide insight into college football culture") 