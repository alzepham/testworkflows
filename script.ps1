param (
    [string]$Name,
    [string]$Environment
)

Write-Output "Name: $Name"
Write-Output "Environment: $Environment"

# Function to handle different environments
function Handle-Environment {
    param (
        [string]$Env
    )

    switch ($Env) {
        "development" { Write-Output "You are in the development environment. Proceed with caution." }
        "staging"     { Write-Output "You are in the staging environment. Test thoroughly!" }
        "production"  { Write-Output "You are in the production environment. All changes are live!" }
        "testing"     { Write-Output "You are in the testing environment. Validate all scenarios." }
        "QA"          { Write-Output "You are in the QA environment. Ensure quality assurance." }
        "UAT"          { Write-Output "You are in the UAT environment. Ensure quality assurance." }
        default       { Write-Output "Unknown environment: $Env" }
    }
}

# Error handling
try {
    Handle-Environment -Env $Environment
}
catch {
    Write-Error "An error occurred: $_"
}

Write-Output "Script execution completed."
