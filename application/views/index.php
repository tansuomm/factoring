<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE HTML>
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() .'style/' ?>Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() .'style/' ?>Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() .'style/' ?>Css/style.css" />
    <script type="text/javascript" src="<?php echo base_url() .'style/' ?>Js/jquery.js"></script>
    <script type="text/javascript" src="<?php echo base_url() .'style/' ?>Js/bootstrap.js"></script>
    <script type="text/javascript" src="<?php echo base_url() .'style/' ?>Js/ckform.js"></script>
    <script type="text/javascript" src="<?php echo base_url() .'style/' ?>Js/common.js"></script>
    <link href="<?php echo base_url() .'style/' ?>assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() .'style/' ?>assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() .'style/' ?>assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="header">
    <div class="dl-title">
        <!--<img src="/chinapost/Public/assets/img/top.png">-->
    </div>
    <div class="dl-log">欢迎您，<span class="dl-log-user">[<?php echo $this->session->userdata('username') ?>]</span><a href="<?php echo site_url('login/login_out') ?>" target="_self" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">首页内容</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">新闻管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">案例管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">重要模块</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">系统管理</div></li>

        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
</div>
<script type="text/javascript" src="<?php echo base_url() .'style/' ?>assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url() .'style/' ?>assets/js/bui-min.js"></script>
<script type="text/javascript" src="<?php echo base_url() .'style/' ?>assets/js/common/main-min.js"></script>
<script type="text/javascript" src="<?php echo base_url() .'style/' ?>assets/js/config-min.js"></script>
<script>
    BUI.use('common/main',function(){
        var config = [
        {id:'1',
        collapsed:false, //默认左侧菜单收缩
        homePage:'1a', //默认打开的主页
        menu:[{text:'首页内容',
                items:[
                    {id:'1a',text:'查看首页',href:'Node/index.html'},
                    {id:'1b',text:'轮播图片',href:'Role/index.html'},
                    {id:'1b',text:'其    他',href:'Role/index.html'},
                ]
            }]
        },{id:'2',
        homePage : '2a',
        menu:[{text:'新闻管理',
                items:[
                    {id:'2a',text:'栏目管理',href:'<?php echo site_url("category/index") ?>'},
                    {id:'2b',text:'文章管理',href:'<?php echo site_url("article/index")?>'},
                ]
            }]
        },{id:'3',
        homePage : '3a', 
        menu:[{text:'案例管理',
                items:[
                    {id:'3a',text:'查看案例',href:'Node/index.html'},
                    {id:'3b',text:'添加案例',href:'Node/index.html'},
                ]
            }]
        },{id:'4',
        homePage : '4a', 
        menu:[{text:'重要模块',
                items:[
                    {id:'4a',text:'公司简介',href:'Node/index.html'},
                    {id:'4b',text:'公司文化',href:'Node/index.html'},
                    {id:'4c',text:'合做伙伴',href:'Node/index.html'},
                    {id:'4d',text:'联系我们',href:'Node/index.html'},
                ]
            }]
        },{id:'5',
        homePage : '5a', 
        menu:[{text:'系统管理',
                items:[
                    {id:'5a',text:'系统信息',href:'Node/index.html'},
                    {id:'5b',text:'密码修改',href:'Node/index.html'},
                ]
            }]
        }];
        new PageUtil.MainPage({
            modulesConfig : config
        });
    });
</script>
</body>
</html>
</body>
</html>

