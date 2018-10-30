# roomsallotmentsystem-j2ee
This is a Java based room allotment system. 
Where we 3 users. landlord, admin, and landloard.

 
[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](http://snehi.pro)

RoomAllotment System is a Apache Tomcat Server based application as well as cloud basedd enabled, mobile-ready, offline-storage, AngularJS powered HTML5 Markdown editor.

  - JSP
  - Servlet
  - JDBC
  

# Features!

  - #Admin has a full controll of the server without accessing users personal details. (it's Encripted )
  - #Landlord can able to share this room detail on that project.
  - #Seeker Who need this Room Can able to Rent his room by Landlord.


You can also:
  - Import and login by google, facebook.
  - Have a Greate UI
  - Can be able to Create Indivual Users Profiles.

Is is a Dynamic Web Page Application. Created by [Vikram Snehi] and desigin by [Vikram Snehi][df1]
Some More Projects.

> Job Requirement System (PHP)
> Job Recuirement System 2 (PHP)
> ViVo Snehi Music (PHP)
> Restorent Management System (Core Java)
> Library Management System
> Schools Management System
> Torrent System.

This text you see here is *actually* written in Markdown! To get a feel for Markdown's syntax, type some text into the left window and watch the results in the right.

### Technology I used here

powered by http://snehi.pro is an official site where we uses his subdomain to host another projects. The number of open source technology we are using here to work properly:

* [AngularJS] - HTML enhanced for web apps!
* [Ace Editor] - awesome web-based text editor
* [markdown-it] - Markdown parser done right. Fast and easy to extend.
* [Twitter Bootstrap] - great UI boilerplate for modern web apps
* [snehi.css] - evented I/O for the backend
* [sliders] - fast node.js network app framework [@tjholowaychuk]
* [Gulp] - the streaming build system
* [Bootstrap-4](http://bootstrap.com) - HTML to Bootstrap
* [W3.CSS] - duh
* [WoWCSS] - duh
* [Animate.CSS] - duh
* [jQuery] - duh


And of course Dillinger itself is open source with a [public repository][dill]
 on GitHub.

### Installation

Room Allotment System requires Java10 (https://www.oracle.com/technetwork/java/javase/10-relnote-issues-4108729.html) v4+ to run.

Install the dependencies and devDependencies and start the server.

```sh
$ cd roomallocation
$ git clone https://github.com/snehipro/roomallotmentsystem-j2ee
$ Open Eclipse and Add Projects.
```

For production environments...

```sh
$ install --tomcat server (9 or 10)
$ create server in eclipse
```

### Plugins

Dillinger is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.

| Plugin | README |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md][PlDb] |
| Github | [plugins/github/README.md][PlGh] |
| Google Drive | [plugins/googledrive/README.md][PlGd] |
| OneDrive | [plugins/onedrive/README.md][PlOd] |
| Medium | [plugins/medium/README.md][PlMe] |
| Google Analytics | [plugins/googleanalytics/README.md][PlGa] |


### Development

Want to contribute? Great!

Dillinger uses Gulp + Webpack for fast developing.
Make a change in your file and instantanously see your updates!

Open your favorite Terminal and run these commands.

First Tab:
```sh
$ node app
```

Second Tab:
```sh
$ gulp watch
```

(optional) Third:
```sh
$ karma test
```
#### Building for source
For production release:
```sh
$ gulp build --prod
```
Generating pre-built zip archives for distribution:
```sh
$ gulp build dist --prod
```
### Docker
Dillinger is very easy to install and deploy in a Docker container.

By default, the Docker will expose port 8080, so change this within the Dockerfile if necessary. When ready, simply use the Dockerfile to build the image.

```sh
cd dillinger
docker build -t joemccann/dillinger:${package.json.version} .
```
This will create the dillinger image and pull in the necessary dependencies. Be sure to swap out `${package.json.version}` with the actual version of Dillinger.

Once done, run the Docker image and map the port to whatever you wish on your host. In this example, we simply map port 8000 of the host to port 8080 of the Docker (or whatever port was exposed in the Dockerfile):

```sh
docker run -d -p 8000:8080 --restart="always" <youruser>/dillinger:${package.json.version}
```

Verify the deployment by navigating to your server address in your preferred browser.

```sh
127.0.0.1:8000
```

#### vikram snehi + Google Cloud

See [KUBERNETES.md](https://github.com/snehipro/roomallotmentsystem-j2ee/README.md)


### Todos

 - Write MORE Tests
 - Add Night Mode

License
----

Private Property


**Free Software, Hell Yeah! for snehi corporation**

 


   [dill]: <https://github.com/snehipro/roomallotmentsystem-j2ee>
   [git-repo-url]: <https://github.com/snehipro/roomallotmentsystem-j2ee.git>
   [SNEHI PRO]: <http://snehi.pro>
   
