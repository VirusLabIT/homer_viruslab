<h1 align="center">
 <img
  width="180"
  alt="Homer's donut"
  src="https://raw.githubusercontent.com//bastienwirtz/homer/main/public/logo.png">
    <br/>
    Homer
</h1>

<h4 align="center">
 A dead simple static <strong>HOM</strong>epage for your serv<strong>ER</strong> forked by VirusLab to keep your services on hand, from a simple <code>yaml</code> configuration file.
</h4>
<p align="center"> 
  <a href="https://www.buymeacoffee.com/bastien" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-yellow.png" alt="SupportTheOriginalCreator" height="41" width="174"></a>
<p>
<p align="center">
 <strong>
  •
  <a href="#getting-started">Getting started</a>
  •
 </strong>
</p>

<p align="center">
 <img src="https://raw.github.com/bastienwirtz/homer/main/docs/screenshot.png" width="100%">
</p>

## Table of Contents

- [Features](#features)
- [Getting started](#getting-started)
- [Kubernetes Installation](docs/kubernetes.md)
- [Configuration](docs/configuration.md)
- [Theming](docs/theming.md)
- [Custom services](docs/customservices.md)
- [Tips & tricks](docs/tips-and-tricks.md)
- [Development](docs/development.md)
- [Troubleshooting](docs/troubleshooting.md)

## Features

- [yaml](http://yaml.org/) file configuration
- Installable (pwa)
- Search
- Grouping
- Theme customization
- Offline health check
- keyboard shortcuts:
  - `/` Start searching.
  - `Escape` Stop searching.
  - `Enter` Open the first matching result (respects the bookmark's `_target` property).
  - `Alt`/`Option` + `Enter` Open the first matching result in a new tab.

## Getting started

Homer is a full static html/js dashboard, based on a simple yaml configuration file. See [documentation](docs/configuration.md) for information about the configuration (`assets/config.yml`) options.

It's meant to be served by an HTTP server, **it will not work if you open the index.html directly over file:// protocol**.

#### Automated Installation

<h1>⚠️install git and docker before using the script⚠️</h1> 
 copy & paste this command into your terminal

```sh
curl -fsSL https://raw.githubusercontent.com/VirusLabIT/homer_viruslab/refs/heads/main/installation.sh | sudo bash
```

#### With docker-compose

A [`docker-compose.yml`](docker-compose.yml) file is available as an example. It must be edited to match your needs. You probably want to adjust the port mapping and volume binding (equivalent to `-p` and `-v` arguments).

Then launch the container:

```sh
cd /path/to/docker-compose.yml/
docker-compose up -d
```
