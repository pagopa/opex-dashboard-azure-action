# OpEx Dashboard Azure action

This action generate a template with [OpEx Dashboard tool](https://github.com/pagopa/opex-dashboard).

## Inputs

## `template`

**Required** The name of the template.

## `config`

**Required** The path to the configuration file.

## Outputs

None.

## Example usage

```yaml
uses: pagopa/opex-dashboard-action@main
with:
  template: azure-dashboard
  config: ./assets/examples/config.yaml
```

See a [complete example](.github/workflows/reflect.yml) in this repository.

## Features that may be useful for this project

- [Build args support in Docker container actions](https://github.com/orgs/community/discussions/25241)
- [Docker actions create files and directories with root:root ownership, breaking later steps](https://github.com/actions/runner/issues/1282)
- [Running jobs in a container](https://docs.github.com/en/actions/using-jobs/running-jobs-in-a-container)
