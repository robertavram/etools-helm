## eTools Helm Chart

### Introduction

### Prerequisites

- Kubernetes 1.4+ with Beta APIs enabled
- PV provisioner support in the underlying infrastructure

### Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm install --name my-release stable/etools-web
```

The command deploys etools backend on the Kubernetes cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

### Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```console
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the WordPress chart and their default values.

| Parameter                            | Description                                | Default                                                    |
| ------------------------------------ | ------------------------------------------ | ---------------------------------------------------------- |
| `image.registry`                     | etools image registry                      |                                                            |
| `image.repository`                   | etools image name                          |                                                            |
| `image.tag`                          | etools image tag                           |                                                            |
| `image.pullPolicy`                   | pull policy                                |  `Always`                                                  |



