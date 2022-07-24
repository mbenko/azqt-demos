# Initialize a new workspace for VS Code
mkdir myDemo
cd myDemo
git init
code .

# Add a new web app
dotnet new razor -o myApp
# edit code...add MyEnv and MySecret in index.cshtml
# ...add values in appsettings.json
# ...add secrets

dotnet new sln
dotnet sln add myApp

dotnet user-secrets init --project myApp
dotnet user-secrets set  --project myApp "MySecret" "From secrets store"

