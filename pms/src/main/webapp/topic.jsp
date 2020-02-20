<%--
  Created by IntelliJ IDEA.
  User: CRnnn
  Date: 2020/2/11
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--1导入js-->
    <script type="text/javascript" charset="utf-8" src="static/js/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="static/js/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="static/js/ueditor/lang/zh-cn/zh-cn.js"></script>

    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/tiezi/save" method="post">
    标题：<input type="text" name="title">
    <!--2创建容器-->
    <script id="editor" name="content" type="text/plain" style="width:1024px;height:500px;"></script>
    <input  type="submit" value="提交">
</form>



<script type="text/javascript">
    //3实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
</script>
</body>
</html>
