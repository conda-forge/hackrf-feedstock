About hackrf
============

Home: https://greatscottgadgets.com/hackrf

Package license: GPL-2.0-or-later

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/hackrf-feedstock/blob/main/LICENSE.txt)

Summary: Host software for HackRF, a low cost, open source software radio platform.

Development: https://github.com/greatscottgadgets/hackrf

Documentation: https://hackrf.readthedocs.io/en/latest/

HackRF One from Great Scott Gadgets is a Software Defined Radio peripheral capable of transmission or reception of radio signals from 1 MHz to 6 GHz. Designed to enable test and development of modern and next generation radio technologies, HackRF One is an open source hardware platform that can be used as a USB peripheral or programmed for stand-alone operation.
The `libhackrf0` package contains the library for HackRF devices, the `libhackrf` contains the development files for compiling against the HackRF library, and the `hackrf` package contains command line tools for using the devices.
For Linux users of `hackrf`, you will likely want to link the provided udev rule into your system installation in order for the hardware to have the correct permissions:

    sudo ln -s $CONDA_PREFIX/lib/udev/rules.d/53-hackrf.rules /etc/udev/rules.d/
    sudo udevadm control --reload
    sudo udevadm trigger

Then, make sure your user account belongs to the plugdev group in order to be able to access your device:

    sudo usermod -a -G plugdev <user>

You may have to restart for this change to take effect.


Current build status
====================


<table><tr>
    <td>Travis</td>
    <td>
      <a href="https://app.travis-ci.com/conda-forge/hackrf-feedstock">
        <img alt="linux" src="https://img.shields.io/travis/com/conda-forge/hackrf-feedstock/main.svg?label=Linux">
      </a>
    </td>
  </tr>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=15132&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/hackrf-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=15132&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/hackrf-feedstock?branchName=main&jobName=linux&configuration=linux_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=15132&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/hackrf-feedstock?branchName=main&jobName=linux&configuration=linux_aarch64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=15132&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/hackrf-feedstock?branchName=main&jobName=linux&configuration=linux_ppc64le_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=15132&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/hackrf-feedstock?branchName=main&jobName=osx&configuration=osx_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=15132&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/hackrf-feedstock?branchName=main&jobName=osx&configuration=osx_arm64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=15132&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/hackrf-feedstock?branchName=main&jobName=win&configuration=win_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-hackrf-green.svg)](https://anaconda.org/conda-forge/hackrf) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/hackrf.svg)](https://anaconda.org/conda-forge/hackrf) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/hackrf.svg)](https://anaconda.org/conda-forge/hackrf) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/hackrf.svg)](https://anaconda.org/conda-forge/hackrf) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libhackrf-green.svg)](https://anaconda.org/conda-forge/libhackrf) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libhackrf.svg)](https://anaconda.org/conda-forge/libhackrf) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libhackrf.svg)](https://anaconda.org/conda-forge/libhackrf) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libhackrf.svg)](https://anaconda.org/conda-forge/libhackrf) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libhackrf0-green.svg)](https://anaconda.org/conda-forge/libhackrf0) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libhackrf0.svg)](https://anaconda.org/conda-forge/libhackrf0) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libhackrf0.svg)](https://anaconda.org/conda-forge/libhackrf0) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libhackrf0.svg)](https://anaconda.org/conda-forge/libhackrf0) |

Installing hackrf
=================

Installing `hackrf` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

Once the `conda-forge` channel has been enabled, `hackrf, libhackrf, libhackrf0` can be installed with `conda`:

```
conda install hackrf libhackrf libhackrf0
```

or with `mamba`:

```
mamba install hackrf libhackrf libhackrf0
```

It is possible to list all of the versions of `hackrf` available on your platform with `conda`:

```
conda search hackrf --channel conda-forge
```

or with `mamba`:

```
mamba search hackrf --channel conda-forge
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search hackrf --channel conda-forge

# List packages depending on `hackrf`:
mamba repoquery whoneeds hackrf --channel conda-forge

# List dependencies of `hackrf`:
mamba repoquery depends hackrf --channel conda-forge
```


About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/), [GitHub](https://github.com/),
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/),
[Drone](https://cloud.drone.io/welcome), and [TravisCI](https://travis-ci.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [Anaconda-Cloud](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating hackrf-feedstock
=========================

If you would like to improve the hackrf recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/hackrf-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@ryanvolz](https://github.com/ryanvolz/)

