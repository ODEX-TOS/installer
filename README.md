[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GPL License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/ODEX-TOS/installer">
    <img src="https://tos.odex.be/images/logo.svg" alt="Logo" width="150" height="200">
  </a>

  <h3 align="center">GUI Installer</h3>

  <p align="center">
    A calamares based GUI installer for tos
    <br />
    <a href="https://github.com/ODEX-TOS/installer"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ODEX-TOS/installer">View Demo</a>
    ·
    <a href="https://github.com/ODEX-TOS/installer/issues">Report Bug</a>
    ·
    <a href="https://github.com/ODEX-TOS/installer/issues">Request Feature</a>
  </p>
</p>

<p align="center">
   <a href="https://www.paypal.com/donate?hosted_button_id=X892LWMTDU6D6">
     <img src="https://raw.githubusercontent.com/stefan-niedermann/paypal-donate-button/master/paypal-donate-button.png" alt="Donate with PayPal" width="300" height="100"/>
   </a>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## About The Project

<!-- GETTING STARTED -->

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

Here are all dependencies you need to build the project

- Compiler with C++11 support: GCC >= 4.9.0 or Clang >= 3.5.1
- CMake >= 3.2
- Qt >= 5.7
- yaml-cpp >= 0.5.1
- Python >= 3.3 (required for some modules)
- Boost.Python >= 1.55.0 (recommended, or PythonQt; one is required for some modules)
- PythonQt (recommended, or Boost.Python; one is required for some modules)
- extra-cmake-modules >= 5.18 (recommended; required for some modules)

Alternativly use the PKGBUILD. You need to manually install Boost.Python

Arch based distro's don't have boost in the package manager so use pip

```bash
pip install pyboost
```

### Installation

1. Clone the installer

```sh
git clone https://github.com/ODEX-TOS/installer.git
```

2. Install pyboost

```sh
sudo pip install pyboost
```

3. Run the PKGBUILD

```sh
makepkg -s
```

4. Install it systemwide

```sh
pacman -U installer*.pkg.tar.*
```

<!-- USAGE EXAMPLES -->

## Usage

Simply run the following command

```bash
calamares
# or
tos c # if using tos
```

_For more examples, please refer to the [Documentation](https://tos.odex.be/blog)_

<!-- ROADMAP -->

## Roadmap

See the [open issues](https://github.com/ODEX-TOS/installer/issues) for a list of proposed features (and known issues).

Here is a short list of things that need to be added.

- Nicer slide interface while waiting for installation
- Slightly different color scheme
- Works for both the i3 and the kde version
- Make module loading more quickly

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->

## Contact

F0xedb - tom@odex.be

Project Link: [https://github.com/ODEX-TOS/installer](https://github.com/ODEX-TOS/installer)

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- [ODEX-TOS](https://github.com/ODEX-TOS/installer)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/ODEX-TOS/installer.svg?style=flat-square
[contributors-url]: https://github.com/ODEX-TOS/installer/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ODEX-TOS/installer.svg?style=flat-square
[forks-url]: https://github.com/ODEX-TOS/installer/network/members
[stars-shield]: https://img.shields.io/github/stars/ODEX-TOS/installer.svg?style=flat-square
[stars-url]: https://github.com/ODEX-TOS/installer/stargazers
[issues-shield]: https://img.shields.io/github/issues/ODEX-TOS/installer.svg?style=flat-square
[issues-url]: https://github.com/ODEX-TOS/installer/issues
[license-shield]: https://img.shields.io/github/license/ODEX-TOS/installer.svg?style=flat-square
[license-url]: https://github.com/ODEX-TOS/installer/blob/master/LICENSE.txt
[product-screenshot]: https://tos.odex.be/images/logo.svg
