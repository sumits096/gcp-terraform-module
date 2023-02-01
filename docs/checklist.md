<h1 align="center"> 
  Boomtown Readiness Checklist 
</h1>

## Are you ready to go to production? Use this checklist to find out

Building production-grade infrastructure involves a following details.

<br>

## Contributing

**Open an issue or a [pull request](https://github.com/pulls) to suggest changes or additions.**

### Guide

The repository consists of three branches:

#### 1. `master`

This is the main branch. This branch contain letest production source code.

#### 3. `release`

Release branches are set up the after each milestone. This is sometimes called release trains, where features line up for different release trains.

#### 2. `development`

This branch will be used to make some significant changes to the structure, content if needed. It is preferable to use the development branch to fix small errors or add a new item.

<br>
## Everything you need to do before you go live

This checklist is your guide to the best practices for deploying connector in GCP. Before you go live, go through each item, and make sure you haven't missed anything important!

Not every single piece of infrastructure needs every single item on the list but you should consciously and explicitly document which items you’ve implemented, which ones you’ve decided to skip, and why.

1. [NPM Registory](#Entity)
1. [Entity](#Entity)
1. [SDK](#SDK)
1. [MongoDB](#MongoDB)
1. [Storage](#Storage)
1. [Connector](#Connector)
1. [Connector UI](#Connector-UI)

### **NPM Registory**

|         |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| &#9744; | <details><summary>Setting up your npm user account</summary> <ul> <li>[Creating a new user account on the public registry](https://docs.npmjs.com/creating-a-new-npm-user-account)</li><li>[Creating a strong password](https://docs.npmjs.com/creating-a-strong-password)</li><li> [Receiving a one-time password over email](https://docs.npmjs.com/receiving-a-one-time-password-over-email)</li><li> [About two-factor authentication](https://docs.npmjs.com/about-two-factor-authentication)</li><li>[Configuring two-factor authentication](https://docs.npmjs.com/configuring-two-factor-authentication)</li><li>[Accessing npm using two-factor authentication](https://docs.npmjs.com/accessing-npm-using-2fa)</li><li> [Recovering your 2FA-enabled account](https://docs.npmjs.com/recovering-your-2fa-enabled-account)</li></ul> </details> |
| &#9744; | <details><summary>Managing your npm user account</summary> <ul><li>[Managing your profile settings](https://docs.npmjs.com/managing-your-profile-settings)</li> <li>[Changing your npm username](https://docs.npmjs.com/changing-your-npm-username)</li> <li>[Deleting your npm user account](https://docs.npmjs.com/deleting-your-npm-user-account)</li> </ul> </details>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| &#9744; | <details><summary>Paying for your npm user account</summary> <ul><li>[Upgrading to a paid user account plan](https://docs.npmjs.com/upgrading-to-a-paid-user-account-plan)</li> <li>[Viewing, downloading, and emailing receipts for your npm user account](https://docs.npmjs.com/viewing-downloading-and-emailing-receipts-for-your-user-account)</li> <li>[Updating user account billing settings](https://docs.npmjs.com/updating-user-account-billing-settings)</li> <li>[Downgrading to a free user account plan](https://docs.npmjs.com/downgrading-to-a-free-user-account-plan)</li> </ul></details>                                                                                                                                                                                                                                             |
| &#9744; | <details><summary>Configuring your local environment</summary> <ul><li>[About npm CLI versions](https://docs.npmjs.com/about-npm-versions)</li> <li>[Downloading and installing Node.js and npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)</li> </ul> </details>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|         |

### **Entity**

Open source NPM Package of entities-ts that provide data transfer objects (DTOs) for the Boomtown api's and connector.
| | |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| &#9744; | <details><summary>Publish NPM Package</summary> <p> Publish NPM package to the NPM registry using npm publish.</p> </details> |
| |

### **SDK**

Open source NPM package of sdk-ts that provides reusable functions used to interface with Boomtown APIs.
| | |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| &#9744; | <details><summary>Publish NPM Package</summary> <p> Publish NPM package to the NPM registry using npm publish.</p> </details> |
| |

### **MongoDB**

|         |                                                                                                                                                                                                                                                                                |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
|         |
| &#9744; | <details><summary>Deploy NoSQL databases</summary> <p> MongoDB Agents using Automation on each MongoDB host can maintain your MongoDB deployments. You can install the MongoDB Agent. Automation can add hosts and deploy and upgrade new or existing clusters.</p> </details> |

### **Storage**

Open source NPM package, storage-ts, to serve as the interface, or boundary, between the application and storage providers.
| | |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| &#9744; | <details><summary>Publish NPM Package</summary> <p> Publish NPM package to the NPM registry using npm publish.</p> </details> |
| |

### **Connector**

NestJs application that allows you to access the Boomtown SDK from your application.

|         |                                                                                                                                                                                                            |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| &#9744; | <details><summary>Build images</summary> <p> Build container images for create publish build to GCP </p> </details>                                                                                        |
| &#9744; | <details><summary>Push the image to Container Registry</summary> <p> Push container image to container registory </p> </details>                                                                           |
| &#9744; | <details><summary>Build Docker images</summary> <p> If want to run your apps as containers, you should package your apps as images and push those images to the [GCP Container Registry]().</p> </details> |
| &#9744; | <details><summary>Deploy image to Cloud Run </summary> <p> Deploy image to cloud run to publish build on GCP </p> </details>                                                                               |
|         |

### **Connector UI**

UI for the Connector implemented in Vue 3 with Typescript.
| | |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| &#9744; | <details><summary>Build images</summary> <p> Build container images for create publish build to GCP </p> </details> |
| &#9744; | <details><summary>Push the image to Container Registry</summary> <p> Push container image to container registory </p> </details> |
| &#9744; | <details><summary>Build Docker images</summary> <p> If want to run your apps as containers, you should package your apps as images and push those images to the [GCP Container Registry]().</p> </details> |
| &#9744; | <details><summary>Deploy image to Cloud Run </summary> <p> Deploy image to cloud run to publish build on GCP </p> </details> |
| |
