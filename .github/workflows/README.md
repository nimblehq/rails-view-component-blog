# Github Actions

## Requirements:

- Generate new token on docker registry, support `docker.io`, `ghcr.io`, `azurecr.io`, `gcr.io`, `registry.gitlab.com`
- Generate new Heroku API key

## Setup the CI

### Secrets

Depending on the workflow used in the project, set up the following secrets:

- DOCKER_REGISTRY_HOST
- DOCKER_REGISTRY_TOKEN
- DOCKER_REGISTRY_USERNAME (Default: ${{ github.repository_owner }})
- DOCKER_IMAGE (Default: ${{ github. repository }})
- HEROKU_API_KEY (for deployment)
- DANGER_GITHUB_API_TOKEN (Default: ${{ github.token }})

### Heroku Deployment

Use the `deploy_heroku.yml` GitHub Action to deploy your app in Heroku.

- If needed, create an account on [Heroku.com](https://www.heroku.com/)
- Add your Heroku API Key (`HEROKU_API_KEY`) in GitHub Secrets
- Create 2 new Heroku apps:
    - {your-project-name}
    - {your-project-name}-staging
- If needed, update the `.github\workflow\deploy_heroku.yml` file to matches your Heroku apps names:
  ```yml
  [...]
        - name: Set env HEROKU_APP
          run: |
            if [[ $BRANCH_TAG = "latest" ]]
            then
              echo "HEROKU_APP=HERE" >> $GITHUB_ENV
            else
              echo "HEROKU_APP=HERE-staging" >> $GITHUB_ENV
            fi
  [...]

> This step might simply be changing '_' to '-' in the app name

- Now you still need to attach a database to **each** app.
  - From [Heroku Dashboard](https://dashboard.heroku.com/apps), open the app
  - Go to the 'Resources' tab
  - In the 'Add-ons' section, search for 'Postgres' and select 'Heroku Postgres'
  - You can select a free plan to start (Hobby Dev - Free) and 'Submit Order Form'

> Note that in 'Settings > Config vars', your now have the `DATABASE_URL` variable (which is used by your Web Container)

Once all setup, give it a try by running manually the GitHub Action 'Deploy Heroku'!

> **Troubleshooting:**
> You can check at Heroku's logs from your application dashboard, in 'More > View logs'
