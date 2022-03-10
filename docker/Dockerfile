FROM repo.gradiant.org:9008/vas_jeddah:base

COPY docker/entrypoint.sh /vas-environment/entrypoint.sh
COPY docker/va_process_video /vas-environment/va_process_video

RUN chmod +x /vas-environment/entrypoint.sh
RUN chmod +x /vas-environment/va_process_video

ENV MODULEID=1
ENTRYPOINT ["/vas-environment/entrypoint.sh"]
