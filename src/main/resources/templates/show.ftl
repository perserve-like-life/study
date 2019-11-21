<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <meta name="renderer" content="webkit">
    <meta name="author" content="mengkun">
    <meta name="generator" content="KodCloud">
    <meta http-equiv="Cache-Control" content="no-siteapp">

    <!-- 强制移动设备以app模式打开页面(即在移动设备下全屏，仅支持部分浏览器) -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="full-screen" content="yes"><!--UC强制全屏-->
    <meta name="browsermode" content="application"><!--UC应用模式-->
    <meta name="x5-fullscreen" content="true"><!--QQ强制全屏-->
    <meta name="x5-page-mode" content="app"><!--QQ应用模式-->

    <title>MUSIC</title>
    <!-- favicon图标 -->
    <link rel="shortcut icon" href="http://lingquyouhuiquan.cn/music/favicon.ico">
    <!-- jQuery文件 -->
    <script src="/jquery-3.3.1.min.js"></script>

    <!-- 播放器样式表文件 -->
    <link rel="stylesheet" type="text/css" href="/music/css/player.css">

    <!-- 小屏幕样式修复 -->
    <link rel="stylesheet" type="text/css" href="/music/css/small.css">

    <!-- 滚动条美化样式文件 -->
    <link rel="stylesheet" type="text/css" href="/music/css/jquery.mCustomScrollbar.min.css">

    <!-- layer弹窗插件样式文件 -->
    <link rel="stylesheet" href="/music/css/layer.css" id="layuicss-skinlayercss" style="">
    <style id="e50d8bd0-e2c5-48de-85c8-1555324786ed">html, * {
            -webkit-user-select: text !important;
            -moz-user-select: text !important;
            user-select: text !important;
        }

        ::-moz-selection {
            color: #FFF !important;
            background: #3390FF !important;
        }

        ::selection {
            color: #FFF !important;
            background: #3390FF !important;
        }
    </style>
</head>
<#--
 style="cursor: url(&quot;chrome-extension://jlgkpaicikihijadgifklkbpdajbkhjo/image/cursors/002.png&quot;), default;"
-->
<script>
    function player(){
        document.getElementById("mCSB_2").style.display = "none";
    }
    function onPlayer(){
        document.getElementById("mCSB_2").style.display = "";
    }
</script>
<script>
    $(function () {
        list();
    });
    var all = '';
    var aduio = '';
    function list() {
        $.ajax({
            url:"/music/list",
            dataType:"json",
            data:{},
            async:false,
            success:function(success){
                console.log(success);
                for (var i = 0; i < success.length; i++){
                    all += '<div class="list-item" data-no="' + i + '" onclick="aduioPlayerUrl(\'' + success[i].downloadPath + '\')"><span class="list-num" id="id">' + success[i].id + '</span><span class="list-mobile-menu"></span><span class="music-album" id="special">' + success[i].special + '</span><span class="auth-name" id="singer">' + success[i].singer + '</span><span class="music-name" id="name">' + success[i].name + '</span></div>';
                    aduio = '<audio src="' + success[i].downloadPath + '" loop="1"></audio>';
                }
                console.log(all);
                $("#all").html(all);
                // $("#music").html(aduio);
            },error:function(error){

            }
        })
    }
</script>
<body>
<div id="blur-img">
    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="1843" height="762" id="blurred_f2bic0xdn"
         class="blured-img" viewBox="0 0 1843 762" preserveAspectRatio="none">
        <filter id="blur_f2bic0xdn">
            <fegaussianblur in="SourceGraphic" stdDeviation="50"></fegaussianblur>
        </filter>
        <image x="0" y="0" width="1843" height="762" externalResourcesRequired="true" href=""
               style="filter:url(#blur_f2bic0xdn)" preserveAspectRatio="none"></image>
    </svg>
    <div class="blur-mask" style="display: block;"></div>
</div>
<!-- 头部logo -->
<div class="header">
    <div class="logo" title="音乐播放器">
        MusicPlayer 🎵
    </div>
</div>

<!-- 中间主体区域 -->
<div class="center">
    <div class="container">
        <div class="btn-bar">
            <div class="btn-box" id="btn-area">
                <span class="btn" data-action="player" hidden="">播放器</span>
                <span class="btn" data-action="playing" title="正在播放列表" onclick="onPlayer()">正在播放</span>
                <span class="btn" data-action="sheet" title="音乐播放列表" onclick="player()">播放列表</span>
                <span class="btn" data-action="search" title="点击搜索音乐">歌曲搜索</span>
            </div>
        </div>
<#-- 歌曲 -->
        <div class="data-area">
            <div id="sheet" class="data-box mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" hidden=""
                 style="overflow: visible;">
                <div id="mCSB_1" class="mCustomScrollBox mCS-minimal mCSB_vertical mCSB_outside"
                     style="max-height: 532px;" tabindex="0">
                    <div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
                         style="position:relative; top:0; left:0;" dir="ltr">
                        <div class="sheet-item" data-no="1"><img class="sheet-cover"
                                                                 src="/music/css/player_cover.png">
                            <p class="sheet-name">正在播放</p></div>
                        <div class="sheet-item" data-no="2"><img class="sheet-cover"
                                                                 src="/music/css/history.png">
                            <p class="sheet-name">播放历史</p></div>
                        <div class="sheet-item" data-no="3"><img class="sheet-cover"
                                                                 src="/music/css/18708190348409091.jpg">
                            <p class="sheet-name">云音乐热歌榜</p></div>
                        <div class="sheet-item" data-no="4"><img class="sheet-cover"
                                                                 src="/music/css/18713687906568048.jpg">
                            <p class="sheet-name">云音乐新歌榜</p></div>
                        <div class="sheet-item" data-no="5"><img class="sheet-cover"
                                                                 src="/music/css/19140298416347251.jpg">
                            <p class="sheet-name">华语金曲榜</p></div>
                        <div class="sheet-item" data-no="6"><img class="sheet-cover"
                                                                 src="/music/css/18878614648932971.jpg">
                            <p class="sheet-name">中国TOP排行榜（内地榜）</p></div>
                        <div class="sheet-item" data-no="7"><img class="sheet-cover"
                                                                 src="/music/css/18967675090783713.jpg">
                            <p class="sheet-name">中国TOP排行榜（港台榜）</p></div>
                        <div class="sheet-item" data-no="8"><img class="sheet-cover"
                                                                 src="/music/css/player_cover.png">
                            <p class="sheet-name"><span style="color: #EA8383">读取失败</span></p></div>
                        <div class="sheet-item" data-no="9"><img class="sheet-cover"
                                                                 src="/music/css/18740076185638788.jpg">
                            <p class="sheet-name">网易原创歌曲榜</p></div>
                        <div class="sheet-item" data-no="10"><img class="sheet-cover"
                                                                  src="/music/css/34YW1QtKxJ_3YnX9ZzKhzw==_2946691234868155">
                            <p class="sheet-name">自定义列表</p></div>
                        <div class="sheet-item" data-no="11"><img class="sheet-cover"
                                                                  src="/music/css/1416170990976003.jpg">
                            <p class="sheet-name">经典怀旧</p></div>
                        <span id="sheet-bar"><div class="clear-fix"></div><div id="user-login" class="sheet-title-bar">我的歌单 <span
                                        class="login-btn login-in">[点击同步]</span></div></span></div>
                </div>
                <div id="mCSB_1_scrollbar_vertical"
                     class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal mCSB_scrollTools_vertical"
                     style="display: none;">
                    <div class="mCSB_draggerContainer">
                        <div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
                             style="position: absolute; min-height: 50px; top: 0px;">
                            <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                        </div>
                        <div class="mCSB_draggerRail"></div>
                    </div>
                </div>
            </div>

            <!--音乐播放列表-->
            <div id="mCSB_2" class="mCustomScrollBox mCS-minimal mCSB_vertical mCSB_outside"
                 style="max-height: 483px;" tabindex="0">
                <div id="mCSB_2_container" class="mCSB_container" style="position: relative; top: 0px; left: 0px;"
                     dir="ltr">
                    <div class="list-item list-head">
                        <span class="music-album">        专辑    </span>
                        <span class="auth-name">        歌手    </span>
                        <span class="music-name">        歌曲    </span>
                    </div>
                    <div id="all">

                    </div>
                    <#-- 9 -->
                    <#--<div class="list-item" data-no="129">
                        <span class="list-num" id="id">序列</span>
                        <span class="list-mobile-menu"></span>
                        <span class="music-album" id="special">专辑</span>
                        <span class="auth-name" id="singer">演唱者</span>
                        <span class="music-name" id="name">歌曲名称</span>
                    </div>-->
                    <#-- 9 -->
                </div>
            </div>
            <div id="mCSB_2_scrollbar_vertical"
                 class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal mCSB_scrollTools_vertical"
                 style="display: block;">
                <div class="mCSB_draggerContainer">
                    <div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
                         style="position: absolute; min-height: 50px; top: 0px; height: 22px; display: block; max-height: 450px;">
                        <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                    </div>
                    <div class="mCSB_draggerRail"></div>
                </div>
            </div>
        </div>

        <!-- 右侧封面及歌词展示 -->
        <div class="player" id="player">
            <!--歌曲封面-->
            <div class="cover">
                <img src="/music/css/player_cover.png" class="music-cover" id="music-cover">
            </div>
        </div>
    </div>
</div>
<div id="music"></div>
<!-- layer弹窗插件 -->
<script src="/music/layer.js"></script>
<!-- 播放器数据加载模块 -->
<script src="/music/ajax.js"></script>
<!-- 播放器歌词解析模块 -->
<script src="/music/lyric.js"></script>
<!-- 音乐列表配置 -->
<script src="/music/musicList.js"></script>
<!-- 封装函数及ui交互模块 -->
<script src="/music/functions.js"></script>
<!-- 播放器主体功能模块 -->
<script src="/music/player.js"></script>
<!-- 滚动条美化插件 -->
<script src="/music/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- 背景模糊化插件 -->
<script src="/music/background-blur.min.js"></script>

<#--
<video controls="" style="display: ;" autoplay="true" loop="-1" name="media"><source src="https://perserve.oss-cn-beijing.aliyuncs.com/music/Imagine%20Dragons%20-%20Birds.flac" type="audio/flac"></video>
-->

<audio id="musicInfo"></audio>
<div class="layui-layer-move"></div>
</body>
<script>
    function aduioPlayerUrl(url) {
        $("#musicInfo")[0].src = url;
        $("#musicInfo")[0].play();
    }
</script>
<script src="/vue.js"></script>
<script src="/show.js"></script>
</html>