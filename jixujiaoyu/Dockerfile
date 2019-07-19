FROM python:3.6.0
MAINTAINER twtiy <twtiyb@gmail.com>

ENV queue queue1
ENV TZ "Asia/Shanghai"

#ENV mirror https://pypi.tuna.tsinghua.edu.cn/simple
ENV mirror http://mirrors.aliyun.com/pypi/simple/
#ENV mirror http://pypi.douban.com/simple/


RUN ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && rm -rf /var/cache/apk/* \
    && git clone https://twtiyb:123123@gitee.com/twtiyb/jixujiaoyu.git \
    && cd ./jixujiaoyu \
    && pip3 install -i ${mirror} --trusted-host=mirrors.aliyun.com -r requirements.txt

#ADD runShell.sh runShell.sh

RUN pip install -i ${mirror} --trusted-host=mirrors.aliyun.com--upgrade pip

EXPOSE 5000

CMD ["/bin/bash"]

CMD cd /jixujiaoyu \
    && git pull \
    && pip3 install -i ${mirror} --trusted-host=mirrors.aliyun.com -r requirements.txt \
    && sh /jixujiaoyu/runShell.sh \
    && tail -200f nohup.out