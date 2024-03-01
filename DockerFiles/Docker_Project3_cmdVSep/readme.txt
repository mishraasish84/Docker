Dockerfile Explanation:

ENTRYPOINT ["python", "myapp.py"]: Defines the main command to run when the container starts. 
It specifies that the Python interpreter should execute the myapp.py script.
CMD ["--config", "default_config.yaml"]: Provides default arguments to the main command. 
It specifies that the application should be run with a default configuration file named default_config.yaml.
With this setup, when you run a container from this image without providing any additional arguments, it will execute python myapp.py --config default_config.yaml. 
However, users can still override the default configuration by passing their own arguments when running the container.

For example, to run the container with a custom configuration file named custom_config.yaml, users can execute the following command:
docker run my-python-app --config custom_config.yaml

In this command, --config custom_config.yaml overrides the default argument specified in the CMD instruction.

This example demonstrates how you can use both CMD and ENTRYPOINT together to provide a default command with 
default arguments while allowing users to override the default behavior by passing their own arguments at runtime.

