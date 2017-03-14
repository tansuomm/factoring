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
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">客户管理</div></li>
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
        homePage:'11', //默认打开的主页
        menu:[{text:'首页内容',
                items:[
                    {id:'11',text:'查看首页',href:'http://www.shinnor.com'},
                    {id:'12',text:'轮播图片',href:'<?php echo site_url("banner/index") ?>'},  
                ]
            }]
        },{id:'2',
        homePage : '21',
        menu:[{text:'新闻管理',
                items:[
                    {id:'21',text:'栏目管理',href:'<?php echo site_url("category/index") ?>'},
                    {id:'22',text:'文章管理',href:'<?php echo site_url("article/index")?>'},
                ]
            }]
        },{id:'3',
        homePage : '31', 
        menu:[{text:'案例管理',
                items:[
                    {id:'31',text:'查看案例',href:'<?php echo site_url("cases/index") ?>'},
                    {id:'32',text:'添加案例',href:'<?php echo site_url("cases/send_cases") ?>'},
                ]
            }]
        },{id:'4',
        homePage : '41', 
        menu:[{text:'重要模块',
                items:[
                    {id:'41',text:'公司简介',href:'<?php echo site_url("company/info") ?>'},
                    {id:'42',text:'公司文化',href:'<?php echo site_url("company/culture") ?>'},
                    {id:'43',text:'合做伙伴',href:'<?php echo site_url("partner/index") ?>'},
                    {id:'44',text:'联系我们',href:'<?php echo site_url("contact/index") ?>'},
                ]
            }]
        },{id:'5',
        homePage : '51', 
        menu:[{text:'客户管理',
                items:[
                    {id:'51',text:'客户列表',href:'<?php echo site_url("user/index") ?>'},
                ]
            }]
        },{id:'6',
        homePage : '61', 
        menu:[{text:'系统管理',
                items:[
                    {id:'61',text:'系统信息',href:'<?php echo site_url("admin/copy") ?>'},
                    {id:'62',text:'密码修改',href:'<?php echo site_url("admin/change") ?>'},
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

