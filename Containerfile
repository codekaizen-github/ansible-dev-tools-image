FROM ghcr.io/ansible/community-ansible-dev-tools:latest

USER root

# Add the collection to the python path
RUN echo "/workdir" >> "$(python -c "import site; print('\n'.join(site.getsitepackages()))" | head -n 1)/dev.pth"

RUN pip install pre-commit

USER podman
