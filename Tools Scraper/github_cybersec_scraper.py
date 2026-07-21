import requests
import time
import json

def search_github(query, max_pages=5):
    """
    Search GitHub repositories using the REST API.
    """
    url = "https://api.github.com/search/repositories"
    
    headers = {
        "Accept": "application/vnd.github.v3+json",
        # "Authorization": "token YOUR_GITHUB_PAT" # Uncomment and add your Personal Access Token for higher rate limits
    }
    
    results = []
    
    print(f"Searching GitHub for: {query}\n")
    
    for page in range(1, max_pages + 1):
        params = {
            "q": query,
            "sort": "stars",    # Sort by popularity
            "order": "desc",
            "per_page": 100,    # Max items per page
            "page": page
        }
        
        print(f"Fetching page {page}...")
        response = requests.get(url, headers=headers, params=params)
        
        if response.status_code == 200:
            data = response.json()
            items = data.get("items", [])
            
            if not items:
                break
            
            for item in items:
                results.append({
                    "name": item["name"],
                    "html_url": item["html_url"],
                    "description": item["description"],
                    "stars": item["stargazers_count"],
                    "topics": item.get("topics", [])
                })
        elif response.status_code == 403:
            print("API Rate limit exceeded. To fetch more, add a GitHub Personal Access Token to the headers.")
            break
        else:
            print(f"Error: {response.status_code} - {response.text}")
            break
            
        # Sleep to avoid hitting the unauthenticated rate limit too quickly (10 req/min for search API)
        time.sleep(6) 
        
    return results

if __name__ == "__main__":
    import sys
    sys.stdout.reconfigure(encoding='utf-8')
    # Query: Look for repositories labeled as 'awesome' and 'security' or 'cybersecurity'
    # You can modify this query to be just 'topic:cybersecurity' or 'awesome-shodan in:name'
    search_query = "awesome cybersecurity"
    
    # Let's fetch the first 2 pages (200 repositories)
    repos = search_github(search_query, max_pages=2)
    
    print(f"\n--- Found {len(repos)} repositories ---")
    
    # Save to a JSON file for later research
    output_file = "cybersec_resources.json"
    with open(output_file, "w", encoding="utf-8") as f:
        json.dump(repos, f, indent=4)
        
    print(f"\nResults saved to {output_file}\n")
    
    # Print the top 15 results to the console
    print("Top 15 Resources:\n")
    for i, repo in enumerate(repos[:15], 1):
        print(f"{i}. {repo['name']} ({repo['stars']} stars)")
        print(f"   URL: {repo['html_url']}")
        desc = repo['description']
        print(f"   Desc: {desc[:100]}..." if desc and len(desc) > 100 else f"   Desc: {desc}")
        print()
