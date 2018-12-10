#!/bin/bash
mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=11.1.0.7.0 -Dpackaging=jar -Dfile=ojdbc6.jar -DgeneratePom=true
mvn install:install-file -DgroupId=org.jtester -DartifactId=jtester -Dversion=1.1.8 -Dpackaging=jar -DpomFile=jtester-1.1.8.pom -Dfile=jtester-1.1.8.jar -Dsources=jtester-1.1.8-sources.jar
mvn install:install-file -DgroupId=mockit -DartifactId=jmockit -Dversion=0.999.10 -Dpackaging=jar -DpomFile=jmockit-0.999.10.pom -Dfile=jmockit-0.999.10.jar -Dsources=jmockit-0.999.10-sources.jar
mvn install:install-file -DgroupId=com.alibaba.fastsql -DartifactId=fastsql -Dversion=2.0.0_preview_135 -Dpackaging=jar -DpomFile=fastsql-2.0.0_preview_135.pom -Dfile=fastsql-2.0.0_preview_135.jar -Dsources=fastsql-2.0.0_preview_135-sources.jar
#
#已经解决,原因是fitnesse-20100211.jar和jmockit依赖的mock-0.999.10.jar无法下载
#1.otter/lib下有jar，使用install.sh插入到你本地maven仓库
#2,修改本地maven资源库中的jtester pom依赖配置，路径为\org\jtester\jtester\1.1.8\jtester-1.1.8.pom
#
#<dependency>
# <groupId>org.fitnesse</groupId>
# <artifactId>fitnesse</artifactId>
#  <version>20130530</version>
#</dependency>
#<dependency>
#  <groupId>mockit</groupId>
#  <artifactId>jmockit</artifactId>
#  <version>0.999.1</version>
#</dependency>
#https://github.com/alibaba/otter/issues/134