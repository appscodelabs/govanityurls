# govanityurls

## Create Hugo Project

```bash
hugo new site govanityurls
cd govanityurls
git init
git submodule add https://github.com/appscodelabs/hugo-theme-govanity.git themes/govanity
echo theme = \"govanity\" >> config.toml
```

## How to update Hugo theme

- https://www.vogella.com/tutorials/GitSubmodules/article.html

```bash
git clone --recursive git@github.com:gomodules/govanityurls.git
cd govanityurls

git submodule update --remote
git add .
git commit -s -a -m "update theme"
git push origin HEAD
```

## Firebase Configuration

- https://firebase.google.com/docs/hosting/multisites
- https://github.com/FirebaseExtended/action-hosting-deploy#options

## How to Use

- Create a `{org}-govanityurls` site in https://console.firebase.google.com/project/appscode-govanityurls/hosting/sites
- Create a new `org/govanityurls` repository using this repository as a template.
- Update `data/vanity.yaml` file.
- Update `site-id` used in Firebase in `.firebaserc` file.
- Add `FIREBASE_SERVICE_ACCOUNT_APPSCODE_GOVANIURLS` secret to the GitHub repo.
