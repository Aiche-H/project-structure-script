# Function to create a page directory with its subdirectories and files
function Create-Page {
    param (
        [string]$PageName
    )
    $PagePath = "pages\$PageName"
    New-Item -ItemType Directory -Force -Path $PagePath

    $HtmlContent = @"
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <link rel="stylesheet" href="../../global/css/global.css" />
    <link rel="stylesheet" href="local-css/$PageName.css" />
    <title>$PageName</title>
  </head>
  <body>

    <script src="../../global/javascript/global.js"></script>
    <script src="local-javascript/$PageName.js"></script>
  </body>
</html>
"@
    $HtmlPath = "$PagePath\$PageName.html"
    Set-Content -Path $HtmlPath -Value $HtmlContent

    New-Item -ItemType Directory -Force -Path "$PagePath\local-css"
    New-Item -ItemType File -Path "$PagePath\local-css\$PageName.css" -Force

    New-Item -ItemType Directory -Force -Path "$PagePath\local-javascript"
    New-Item -ItemType File -Path "$PagePath\local-javascript\$PageName.js" -Force

    New-Item -ItemType Directory -Force -Path "$PagePath\local-data"
    New-Item -ItemType Directory -Force -Path "$PagePath\local-images"
}

# Create the main directories
New-Item -ItemType Directory -Force -Path resources
New-Item -ItemType Directory -Force -Path pages
New-Item -ItemType Directory -Force -Path global

# Create subdirectories in resources
New-Item -ItemType Directory -Force -Path resources\css
New-Item -ItemType Directory -Force -Path resources\javascript

# Create subdirectories in global
New-Item -ItemType Directory -Force -Path global\css
New-Item -ItemType Directory -Force -Path global\javascript
New-Item -ItemType Directory -Force -Path global\images
New-Item -ItemType Directory -Force -Path global\data

# Create the global.css and global.js files
New-Item -ItemType File -Path global\css\global.css -Force
New-Item -ItemType File -Path global\javascript\global.js -Force

# Create the root index.html file
$RootHtmlContent = @"
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <link rel="stylesheet" href="global/css/global.css" />
    <link rel="stylesheet" href="pages/index/local-css/index.css" />
    <title>Root Page</title>
  </head>
  <body>

    <script src="pages/index/local-javascript/index.js"></script>
    <script src="global/javascript/global.js"></script>
  </body>
</html>
"@
Set-Content -Path index.html -Value $RootHtmlContent

# Create the index folder in pages without an index.html file
New-Item -ItemType Directory -Force -Path pages\index
New-Item -ItemType Directory -Force -Path pages\index\local-css
New-Item -ItemType File -Path pages\index\local-css\index.css -Force
New-Item -ItemType Directory -Force -Path pages\index\local-javascript
New-Item -ItemType File -Path pages\index\local-javascript\index.js -Force
New-Item -ItemType Directory -Force -Path pages\index\local-data
New-Item -ItemType Directory -Force -Path pages\index\local-images

# Create readme.md
New-Item -ItemType File -Path readme.md -Force

# Create gitignore with specified content
$GitIgnoreContent = @"
# See http://help.github.com/ignore-files/ for more about ignoring files.

# compiled output
/dist
/tmp
/out-tsc

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Directory for instrumented libs generated by jscoverage/JSCover
lib-cov

# Coverage directory used by tools like istanbul
coverage

# nyc test coverage
.nyc_output

# Grunt intermediate storage (http://gruntjs.com/creating-plugins#storing-task-files)
.grunt

# Bower dependency directory (https://bower.io/)
bower_components

# node-waf configuration
.lock-wscript

# IDEs and editors
.idea
.project
.classpath
.c9/
*.launch
.settings/
*.sublime-workspace

# IDE - VSCode
.vscode/*
!.vscode/settings.json
!.vscode/tasks.json
!.vscode/launch.json
!.vscode/extensions.json

# misc
.sass-cache
connect.lock
typings

# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Dependency directories
node_modules/
jspm_packages/

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env

# next.js build output
.next

# Lerna
lerna-debug.log

# System Files
.DS_Store
Thumbs.db
"@
Set-Content -Path .gitignore -Value $GitIgnoreContent

# Create page directories based on the provided arguments
foreach ($Page in $args) {
    Create-Page -PageName $Page
}

# Print a success message
Write-Output "Folder structure created successfully!"

