### Running locally

To test locally, run the following in your terminal:

1. Clone repo locally
2. `bundle install`
3. `bundle exec jekyll serve`
4. Open your browser to `localhost:4000`

### Running locally with Docker

To test locally with docker, run the following in your terminal after installing docker into your system:

1. `docker image build -t resume-template .`
2. `docker run --rm --name resume-template -v "$PWD":/home/app --network host resume-template`

Most of the content configuration will take place in the `/_layouts/resume.html` file. Simply edit the markup there accordingly
