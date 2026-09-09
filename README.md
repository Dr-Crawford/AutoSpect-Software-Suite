<a id="top"></a>

<p align="center">
  <img src="./InSpect_logo.png" alt="InSpect Logo" width="600">
</p>

<h1 align="center">AutoSpect Software Suite</h1>

<p align="center">
  Software for processing, quantitative analysis, and visualization of LA-ICP-TOF-MS imaging data
</p>

**AutoSpect** is a software suite for the processing, analysis, visualization, and quantitative interpretation of mass spectrometry imaging data, with a focus on **laser ablation inductively coupled plasma time-of-flight mass spectrometry (LA-ICP-TOF-MS)**.

The suite includes **InSpect**, an interactive graphical interface for viewing and analyzing imaging data, together with tools for spectral processing, calibration, quantitative analysis, and spatial data interpretation.

> **Current compiled distribution:** Windows 64-bit  
> **Required MATLAB Runtime:** MATLAB Runtime **9.2 (R2017a), 64-bit**  
> **Required Runtime Update:** MathWorks **R2017a MATLAB Runtime Update**

---

## Table of Contents

- [Overview](#overview)
- [Installation](#installation)
  - [Download AutoSpect / InSpect](#download)
  - [Install MATLAB Runtime R2017a and Runtime Update](#runtime-install)
  - [Launch InSpect](#launch)
- [Software Licensing](#licensing)
  - [Requesting an InSpect License](#license-request)
- [System Requirements](#system-requirements)
- [Files in a Typical Release](#release-files)
- [MATLAB Runtime Notes for Developers](#developer-runtime)
- [Troubleshooting](#troubleshooting)
  - [InSpect does not start](#troubleshoot-start)
  - [Windows blocks the application](#troubleshoot-windows)
  - [No license is available](#troubleshoot-license)
  - [Large datasets are slow](#troubleshoot-performance)
- [Updates](#updates)
- [Citation](#citation)
- [Support and Feedback](#support)
- [About](#about)
- [MATLAB Runtime](#matlab-runtime)

---

<a id="overview"></a>

## Overview

AutoSpect was developed to provide an integrated workflow for working with large, multichannel LA-ICP-TOF-MS imaging datasets. Depending on the installed version and software license, available capabilities may include:

- Interactive inspection and visualization of elemental and isotopic images
- Signal drift correction
- Spectral fitting and peak deconvolution
- Mass calibration
- Concentration calibration
- Quantitative image analysis
- Region-of-interest (ROI) analysis
- Image registration
- Map visualization and comparison
- Export of processed data and quantitative results

The primary user interface for the suite is **InSpect**.

---

<a id="installation"></a>

## Installation

<a id="download"></a>

### 1. Download AutoSpect / InSpect

Download the latest software package from the **Releases** section of this GitHub repository.

Extract the downloaded archive to a local folder before running the application.

---

<a id="runtime-install"></a>

### 2. Install MATLAB Runtime R2017a and the R2017a Runtime Update

The compiled version of InSpect requires **both**:

1. **MATLAB Runtime 9.2 (R2017a), 64-bit**
2. The separate **R2017a MATLAB Runtime Update** provided by MathWorks

A licensed installation of MATLAB is **not required** to run the compiled application. End users also do **not** need to install MATLAB Compiler.

Go to the MathWorks MATLAB Runtime download page:

https://www.mathworks.com/products/compiler/matlab-runtime.html

On the MathWorks page, locate the row:

**R2017a (9.2)**

For **Windows**, complete both of the following steps in this order:

#### A. Install MATLAB Runtime 9.2 (R2017a)

1. In the **R2017a (9.2)** row, select the **64-bit** Windows download.
2. Download and run the MATLAB Runtime installer.
3. Complete the installation.

#### B. Install the R2017a Runtime Update

After the base MATLAB Runtime has been installed:

1. Return to the **R2017a (9.2)** row on the MathWorks MATLAB Runtime page.
2. Select **Update** in the Windows column.
3. Download the R2017a Runtime Update.
4. Run the update installer and complete the installation.

> **Important:** Install the **base R2017a MATLAB Runtime first**, and then install the **R2017a Runtime Update**. Both are required for the AutoSpect/InSpect R2017a distribution.

Administrator privileges may be required depending on the MATLAB Runtime installation location and the security configuration of the computer.

---

<a id="launch"></a>

### 3. Launch InSpect

After installing both MATLAB Runtime R2017a and the R2017a Runtime Update:

1. Open the extracted AutoSpect software folder.
2. Run:

   `InSpect.exe`

3. Allow the application to initialize. The first launch may take longer while MATLAB Runtime components are loaded.

---

<a id="licensing"></a>

## Software Licensing

AutoSpect/InSpect uses a software licensing system. A valid license is required to use licensed functionality, and access to individual capabilities may depend on the privileges enabled for the issued license.

Licensed capabilities may include:

- **InSpect** — visual inspection and analysis
- **Drift Correction**
- **Spectral Fitting**
- **Mass / Concentration Calibration**
- **Quantitative Analysis**
- **Module — Registration**
- **Module — Map Viewer**

<a id="license-request"></a>

### Requesting an InSpect License

To request a license:

1. Install **MATLAB Runtime 9.2 (R2017a), 64-bit** and the **R2017a Runtime Update**, then launch `InSpect.exe`.
2. If a valid license is not detected, use the license prompt in InSpect to **create a license request**.
3. Save the license request file generated by InSpect.
4. Create an email with the subject:

   **InSpect License Request**

5. Send the email to **both** of the following addresses:

   - **Dr. Andrew M. Crawford:** `drcrawford.sci@gmail.com`
   - **Michigan State University:** `crawf472@msu.edu`

6. **Attach the license request file generated by InSpect to the email.**

The license request file contains the information required to generate a license for the computer on which InSpect will be used. A license cannot be issued without the generated request file.

Once the request has been reviewed, the corresponding license file and any necessary installation instructions will be provided by email.

> **Important:** Generate the license request on the computer where InSpect will be used. Licenses may be associated with that computer and may not function if moved to another system.

---

<a id="system-requirements"></a>

## System Requirements

### Supported distribution

The currently distributed compiled application is intended for:

- **Microsoft Windows, 64-bit**
- **MATLAB Runtime 9.2 (R2017a), 64-bit**
- **MathWorks R2017a MATLAB Runtime Update**

Hardware requirements depend strongly on dataset size. Large hyperspectral imaging datasets may benefit from substantial system memory and multicore processors.

---

<a id="release-files"></a>

## Files in a Typical Release

A release package may contain:

```text
InSpect.exe
README.md
[additional AutoSpect support files]
```

The MATLAB Runtime installer may be distributed separately rather than included in the AutoSpect release archive.

If an `MCRInstaller.exe` or MATLAB Runtime installer is included with a release, it may be used instead of downloading the corresponding base runtime directly from MathWorks. **The R2017a Runtime Update must still be installed unless it is explicitly included and identified as already applied in the distribution instructions.**

---

<a id="developer-runtime"></a>

## MATLAB Runtime Notes for Developers

AutoSpect/InSpect is compiled using **MATLAB Compiler**.

For builds produced with MATLAB R2017a, the corresponding runtime is **MATLAB Runtime 9.2**. The AutoSpect/InSpect R2017a distribution also requires the separate **R2017a MATLAB Runtime Update** supplied by MathWorks.

From within MATLAB R2017a, the location and version information for the corresponding MATLAB Runtime installer can be displayed with:

```matlab
mcrinstaller
```

The runtime bundled with or distributed for a compiled application should correspond to the MATLAB release used to build the application.

Additional MATLAB Compiler deployment documentation is available from MathWorks:

https://www.mathworks.com/help/compiler/

---

<a id="troubleshooting"></a>

## Troubleshooting

<a id="troubleshoot-start"></a>

### InSpect does not start

Confirm that both of the following are installed:

- **MATLAB Runtime R2017a (9.2), 64-bit**
- The **R2017a MATLAB Runtime Update**

Installing a newer MATLAB Runtime release does not replace the requirement for the R2017a runtime associated with the compiled application. If the base R2017a runtime is installed but the update has not been applied, install the **Update** shown next to **R2017a (9.2)** on the MathWorks MATLAB Runtime download page.

<a id="troubleshoot-windows"></a>

### Windows blocks the application

Because InSpect is distributed as a downloaded executable, **Microsoft Defender SmartScreen may display a warning when InSpect is launched**, particularly the first time it is run. This is common for downloaded applications that Windows does not yet recognize.

If you downloaded InSpect from the official AutoSpect distribution source and Windows displays a **“Windows protected your PC”** message:

1. Select **More info**.
2. Confirm that the application shown is `InSpect.exe`.
3. Select **Run anyway**.

Only bypass the warning if you obtained the software from the official AutoSpect distribution source and are confident that the downloaded files have not been modified.

If **Run anyway** is not available, the computer may be subject to additional Windows security settings, Microsoft Smart App Control, or organizational IT policies. In that case, contact your system administrator rather than disabling system-wide security protections.

<a id="troubleshoot-license"></a>

### The application reports that no license is available

Use the license-request workflow presented by InSpect to generate a license request file. Attach that file to an email sent to `drcrawford.sci@gmail.com` and `crawf472@msu.edu` with the subject **InSpect License Request**.

<a id="troubleshoot-performance"></a>

### Large datasets are slow to open or process

Performance depends on dataset dimensions, number of measured mass channels, available memory, processor performance, and the analysis being performed. Closing unnecessary applications may make additional system memory available.

---

<a id="updates"></a>

## Updates

New releases, bug fixes, and feature updates are distributed through this repository.

For reproducible analysis, record the **AutoSpect/InSpect version** used to process data and retain that information with the corresponding analysis records.

---

<a id="citation"></a>

## Citation

If AutoSpect/InSpect is used in work that contributes to a publication, presentation, or other scholarly product, please cite the AutoSpect software paper:

> Crawford, A. M.; Zee, D. Z.; Jin, Q.; Sue, A.; Sinha, N.; Ahn, S. H.; O'Halloran, T. V.; MacRenaris, K. W. **AutoSpect: an all-in-one software solution for automated processing of LA-ICP-TOF-MS datasets.** *Journal of Analytical Atomic Spectrometry* **2025**, *40*, 2162–2178.  
> https://doi.org/10.1039/D5JA00145E

**DOI:** [10.1039/D5JA00145E](https://doi.org/10.1039/D5JA00145E)

**Publisher page:**  
https://pubs.rsc.org/en/content/articlelanding/2025/ja/d5ja00145e

When reporting analyses performed with AutoSpect/InSpect, we also recommend recording the software version used so that the computational workflow can be reproduced as accurately as possible.

---

<a id="support"></a>

## Support and Feedback

Bug reports, feature requests, and reproducible examples are valuable for continued development.

When reporting a problem, please include, when possible:

- AutoSpect/InSpect version
- Windows version
- Description of the problem
- Steps required to reproduce the problem
- Relevant error messages or screenshots

Do **not** publicly post software license files, license-request files containing machine-identifying information, private datasets, or other sensitive information in a GitHub issue.

---

<a id="about"></a>

## About

AutoSpect is developed for advanced mass spectrometry imaging data analysis, with an emphasis on making complex LA-ICP-TOF-MS workflows accessible through an integrated graphical environment. For citation information, see the [Citation](#citation) section.

**Developer:** Andrew M. Crawford, Ph.D.  
**Michigan State University**

---

<a id="matlab-runtime"></a>

## MATLAB Runtime

MATLAB and MATLAB Runtime are products of **The MathWorks, Inc.**

MATLAB Runtime allows compiled MATLAB applications to run on supported systems without requiring a licensed MATLAB installation.

For official MATLAB Runtime installation instructions, see:

https://www.mathworks.com/help/compiler/install-the-matlab-runtime.html
