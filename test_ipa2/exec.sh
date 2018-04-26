#!/bin/bash
    #----------------------------------------------------------------------------------
    # 脚本说明:
    # 1.实现功能:
    #      1)、指定打包项目的target、Version版本号、build版本号
    # 2.使用方式:
    #      1)、在TargetArray中添加需要打包的项目target
    #      2)、终端执行命令: ./exec.sh
    #      3)、完成打包后,生成的目标文件在如下目录:
    #          /项目目录/ArchivePath/TestDemo/1.0.0/2017_03_03_10:37:34
    #         (/项目目录/ArchivePath/打包项目名称/打包版本号/打包时间)
    # 3.脚本参数说明:
    #      1)、$1 存放项目文件夹名称
    #      2)、$2 需要打包的OEM版本
    #      3)、$3 OEM version版本号
    #      4)、$4 OEM build号
    # 4.工程文件目录:
    #       |___test_ipa2                                所要打包的项目的根目录
    #           |___Release.sh                           Release.sh打包脚本
    #           |___ExportOptions.plist                  -exportOptionsPlist 配置文件
    #           |___ArchivePath                          打包文件输出路径
    #               |___SDK111                           打包项目名称
    #                   |___1.0.0                        打包版本号
    #                       |___2017_03_02_16/23/28      打包时间（格式：年_月_日_时/分/秒）
    #                           |___SDK111_1.0.0.xcarchive  导出的.xcarchive文件
    #                           |___SDK111.ipa              导出的.ipa文件
    #                           |___LogPath                 打包日志
    #----------------------------------------------------------------------------------


TargetArray=(SDK111 SDK2222)

for NUM in ${TargetArray[*]}

do
## ./Users/liuran/Desktop/Test/demo/Shell/Release.sh -s NUM -e -v 1.0.0 -b 1.0.0

  ./$NUM.sh test_ipa2 $NUM 1.0.0 1.0.0

done

