<?xml version="1.0" encoding="UTF-8"?>
<md:mspec xmlns:md="http://www.eclipse.org/buckminster/MetaData-1.0" 
    name="com.voclipse" 
    materializer="p2" 
    url="com.voclipse.cquery">
    <property key="target.arch" value="*" />
    <property key="target.os" value="*" />
    <property key="target.ws" value="*" />

    <md:mspecNode namePattern="^org\.eclipse\.jdt\.ui?" materializer="workspace"/>

    <md:mspecNode namePattern="^com\.voclipse(\..+)?" materializer="workspace"/>
    <md:mspecNode namePattern=".*" installLocation="${targetPlatformPath}"/>
</md:mspec>
