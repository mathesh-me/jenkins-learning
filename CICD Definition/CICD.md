## Introduction to CI/CD

- CI/CD is nothing else but a methodology/strategy to deploy code faster to production!

- Thinks that you have an app and you want to deploy it to prod. What should you do? Well you should do a lot manual things, like testing it yourself, compiling, deploying, etc. All of this is normally done manually by a human who can make mistakes! And probably that guy will be awake at 2 am deploying to prod. Trust me, I've lived it.

So, how does CI/CD help?

Well, you will define an entire workflow that will build, test and deploy automatically for you! Isn't cool?

The process is defined by some steps, starting at CI which is ```Continuous Integration```, where you build an test your code; optionally, you could pass to ```Continuous Delivery```, which deploys your built and tested app to a dev/stg/qa env (just to test again) and finally you deploy to production!

You can read this great article to go deeper: [Link](https://www.infoworld.com/article/3271126/what-is-cicd-continuous-integration-and-continuous-delivery-explained.html)