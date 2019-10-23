FROM python:3.7-alpine3.9

RUN apk update
RUN apk add --no-cache \
   udev \
   chromium \
   chromium-chromedriver \
   xvfb


RUN pip install --no-cache-dir \
 robotframework==3.1.1 \
 robotframework-selenium2library==3.0.0 \
 selenium==3.141.0

# Chrome requires docker to have cap_add: SYS_ADMIN if sandbox is on.
# Disabling sandbox and gpu as default.
RUN sed -i "s/self._arguments\ =\ \[\]/self._arguments\ =\ \['--no-sandbox',\ '--disable-gpu'\]/" $(python -c "import site; print(site.getsitepackages()[0])")/selenium/webdriver/chrome/options.py;

COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh

ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 720
ENV SCREEN_DEPTH 16

ENTRYPOINT [ "/opt/bin/entry_point.sh" ]

