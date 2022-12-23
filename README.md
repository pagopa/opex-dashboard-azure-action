# OpEx Dashboard Azure action

This action generate a template with [OpEx Dashboard tool](https://github.com/pagopa/opex-dashboard).

## Inputs

## `config`

**Required** The path to the configuration file.

## `api-name`

**Required** Api name

## `environment`

**Required** Azure environment

## `client-id`

**Required** Azure client-id

## `tenant-id`

**Required** Azure tenant-id

## `subscription-id`

**Required** Azure subscription-id

## `docker-version`

**Required** docker sha version from https://github.com/pagopa/opex-dashboard-azure-action/pkgs/container/opex-dashboard-azure-action

## Outputs

None.

## Example usage

```yaml
      # from https://github.com/pagopa/opex-dashboard-azure-action/
      - uses: pagopa/opex-dashboard-azure-action@v1.0.3
        with:
          environment: ${{ matrix.environment }}
          api-name: ${{ env.API_NAME }}
          config: .opex/${{ env.API_NAME }}/env/${{ matrix.environment }}/config.yaml
          client-id: ${{ env.CLIENT_ID }}
          tenant-id: ${{ env.TENANT_ID }}
          subscription-id: ${{ env.SUBSCRIPTION_ID }}
          # from https://github.com/pagopa/opex-dashboard-azure-action/pkgs/container/opex-dashboard-azure-action
          docker-version: sha256:d9465f04e469c8f65bb1fb21cb9688508c64fda75495f552e858fb5a9580be90
```

See a [complete example](.github/workflows/reflect.yml) in this repository.

## Features that may be useful for this project

- [Build args support in Docker container actions](https://github.com/orgs/community/discussions/25241)
- [Docker actions create files and directories with root:root ownership, breaking later steps](https://github.com/actions/runner/issues/1282)
- [Running jobs in a container](https://docs.github.com/en/actions/using-jobs/running-jobs-in-a-container)
