<template>
  <a-layout>
    <a-layout-content :style="{ background: '#fff', padding: '24px', margin: 0, minHeight: '280px' }">
      <div class="about">
        <h2>我是Wiki，13年Java全栈，慕课网讲师</h2>
        <div><b>专注Java全栈技术分享，汇总13年实战经验</b></div>
        <div>
          <b>项目实战：
            <a href="https://coding.imooc.com/class/474.html" target="_blank">
            《SpringBoot知识体系+Vue3全家桶 前后端分离 实战WIKI知识库系统》
            </a>
          </b>
        </div>
        <div>
          <b>项目实战：
            <a href="https://coding.imooc.com/class/416.html" target="_blank">
            《Spring Cloud + Vue 前后端分离 开发企业级在线视频课程系统》
            </a>
          </b>
        </div>
        <div>
          <b>免费课程：
            <a href="https://www.imooc.com/learn/1160" target="_blank">
            《开发工具IDEA从入门到爱不释手》
            </a>
          </b>
        </div>
        <br>
        <div><b>个人全栈技术博客：
          <a href="https://www.lsm1998.com" target="_blank">我的博客</a></b>
        </div>
        <div style="color: rgb(194, 79, 74)"><b>公众号：甲蛙全栈，扫码关注</b></div>
        <div>
          <img src="/image/jiawaquanzhan.jpg">
        </div>
      </div>
    </a-layout-content>
  </a-layout>
</template>

<style>
  .about {
    line-height: 30px;
    padding: 40px;
    background-color: #f5f5f5;
    font-size: 16px;
  }
  .about h2 {
    margin-bottom: 30px;
    font-weight: 700;
  }
  .about img {
    margin-top: 10px;
  }
</style>
