# OpEx Dashboard action

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
