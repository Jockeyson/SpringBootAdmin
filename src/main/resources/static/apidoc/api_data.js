define({ "api": [
  {
    "type": "delete",
    "url": "/api/users",
    "title": "删除多个用户",
    "name": "delete_users",
    "group": "user",
    "permission": [
      {
        "name": "token"
      }
    ],
    "description": "<p>根据ids删除多个用户</p>",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "ids",
            "description": "<p>多个用户id</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "请求示例：",
          "content": "?ids=1,2,3",
          "type": "String"
        }
      ]
    },
    "success": {
      "fields": {
        "成功 200": [
          {
            "group": "成功 200",
            "type": "Integer",
            "optional": false,
            "field": "code",
            "description": "<p>状态码</p>"
          },
          {
            "group": "成功 200",
            "type": "String",
            "optional": false,
            "field": "msg",
            "description": "<p>信息</p>"
          },
          {
            "group": "成功 200",
            "type": "Object",
            "optional": false,
            "field": "data",
            "description": "<p>数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回:",
          "content": "{\n     \"code\": 200,\n     \"msg\": \"\",\n     \"data\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "src/main/java/com/sj/springbootadmin/apicontroller/ApiController.java",
    "groupTitle": "user"
  },
  {
    "type": "delete",
    "url": "/api/users/{id}",
    "title": "删除单个用户",
    "name": "delete_users_id",
    "group": "user",
    "permission": [
      {
        "name": "token"
      }
    ],
    "description": "<p>根据id删除单个用户</p>",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "id",
            "description": "<p>用户id</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "成功 200": [
          {
            "group": "成功 200",
            "type": "Integer",
            "optional": false,
            "field": "code",
            "description": "<p>状态码</p>"
          },
          {
            "group": "成功 200",
            "type": "String",
            "optional": false,
            "field": "msg",
            "description": "<p>信息</p>"
          },
          {
            "group": "成功 200",
            "type": "Object",
            "optional": false,
            "field": "data",
            "description": "<p>数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回:",
          "content": "{\n     \"code\": 200,\n     \"msg\": \"\",\n     \"data\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "src/main/java/com/sj/springbootadmin/apicontroller/ApiController.java",
    "groupTitle": "user"
  },
  {
    "type": "get",
    "url": "/api/users",
    "title": "获取所有用户",
    "name": "get_users",
    "group": "user",
    "permission": [
      {
        "name": "token"
      }
    ],
    "description": "<p>获取所有用户</p>",
    "success": {
      "fields": {
        "成功 200": [
          {
            "group": "成功 200",
            "type": "Integer",
            "optional": false,
            "field": "code",
            "description": "<p>状态码</p>"
          },
          {
            "group": "成功 200",
            "type": "String",
            "optional": false,
            "field": "msg",
            "description": "<p>信息</p>"
          },
          {
            "group": "成功 200",
            "type": "Object",
            "optional": false,
            "field": "data",
            "description": "<p>数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回:",
          "content": "{\n     \"code\": 200,\n     \"msg\": \"\",\n     \"data\":\n     [\n     {\n         \"id\":1,\n         \"userName\":\"admin\",\n         \"userPwd\":\"123\"\n     },\n     {\n              \"id\":2,\n              \"userName\":\"user\",\n              \"userPwd\":\"123\"\n          },\n     ]\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "src/main/java/com/sj/springbootadmin/apicontroller/ApiController.java",
    "groupTitle": "user",
    "sampleRequest": [
      {
        "url": "http://localhost:8080/api/users"
      }
    ]
  },
  {
    "type": "get",
    "url": "/api/users/{id}",
    "title": "获取单个用户",
    "name": "get_users_id",
    "group": "user",
    "permission": [
      {
        "name": "token"
      }
    ],
    "description": "<p>通过id获取单个用户</p>",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "id",
            "description": "<p>用户id</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "成功 200": [
          {
            "group": "成功 200",
            "type": "Integer",
            "optional": false,
            "field": "code",
            "description": "<p>状态码</p>"
          },
          {
            "group": "成功 200",
            "type": "String",
            "optional": false,
            "field": "msg",
            "description": "<p>信息</p>"
          },
          {
            "group": "成功 200",
            "type": "Object",
            "optional": false,
            "field": "data",
            "description": "<p>数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回:",
          "content": "{\n     \"code\": 200,\n     \"msg\": \"\",\n     \"data\":\n     {\n         \"id\":1,\n         \"userName\":\"admin\",\n         \"userPwd\":\"123\"\n     }\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "src/main/java/com/sj/springbootadmin/apicontroller/ApiController.java",
    "groupTitle": "user",
    "sampleRequest": [
      {
        "url": "http://localhost:8080/api/users/{id}"
      }
    ]
  },
  {
    "type": "get",
    "url": "/api/users/search",
    "title": "查询用户",
    "name": "get_users_search",
    "group": "user",
    "permission": [
      {
        "name": "token"
      }
    ],
    "description": "<p>根据条件查询用户</p>",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "query",
            "description": "<p>查询条件</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "请求示例：",
          "content": "?query={filed1=value1&filed2=value2}",
          "type": "String"
        }
      ]
    },
    "success": {
      "fields": {
        "成功 200": [
          {
            "group": "成功 200",
            "type": "Integer",
            "optional": false,
            "field": "code",
            "description": "<p>状态码</p>"
          },
          {
            "group": "成功 200",
            "type": "String",
            "optional": false,
            "field": "msg",
            "description": "<p>信息</p>"
          },
          {
            "group": "成功 200",
            "type": "Object",
            "optional": false,
            "field": "data",
            "description": "<p>数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回:",
          "content": "{\n     \"code\": 200,\n     \"msg\": \"\",\n     \"data\":\n     [\n     {\n         \"id\":1,\n         \"userName\":\"admin\",\n         \"userPwd\":\"123\"\n     },\n     {\n              \"id\":2,\n              \"userName\":\"user\",\n              \"userPwd\":\"123\"\n          },\n     ]\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "src/main/java/com/sj/springbootadmin/apicontroller/ApiController.java",
    "groupTitle": "user"
  },
  {
    "type": "get",
    "url": "/api/users/token",
    "title": "用户登录",
    "name": "get_users_token",
    "group": "user",
    "description": "<p>用户登录获取token</p>",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "userName",
            "description": "<p>用户名</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "userPwd",
            "description": "<p>密码</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "请求示例：",
          "content": "?userName=admin&userPwd=123",
          "type": "String"
        }
      ]
    },
    "success": {
      "fields": {
        "成功 200": [
          {
            "group": "成功 200",
            "type": "Integer",
            "optional": false,
            "field": "code",
            "description": "<p>状态码</p>"
          },
          {
            "group": "成功 200",
            "type": "String",
            "optional": false,
            "field": "msg",
            "description": "<p>信息</p>"
          },
          {
            "group": "成功 200",
            "type": "Object",
            "optional": false,
            "field": "data",
            "description": "<p>数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回:",
          "content": "{\n     \"code\": 200,\n     \"msg\": \"\",\n     \"data\":\"Bearer **********\"\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "src/main/java/com/sj/springbootadmin/apicontroller/ApiController.java",
    "groupTitle": "user",
    "sampleRequest": [
      {
        "url": "http://localhost:8080/api/users/token"
      }
    ]
  },
  {
    "type": "post",
    "url": "/api/users",
    "title": "新增用户",
    "name": "post_users",
    "group": "user",
    "permission": [
      {
        "name": "token"
      }
    ],
    "description": "<p>新增用户</p>",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "userName",
            "description": "<p>用户名</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "userPwd",
            "description": "<p>密码</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "realName",
            "description": "<p>姓名</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "age",
            "description": "<p>年龄</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "请求示例：",
          "content": "{\"userName\":\"abc\",\"userPwd\":\"123\",\"realName\":\"你猜\",\"age\":18}",
          "type": "json"
        }
      ]
    },
    "success": {
      "fields": {
        "成功 200": [
          {
            "group": "成功 200",
            "type": "Integer",
            "optional": false,
            "field": "code",
            "description": "<p>状态码</p>"
          },
          {
            "group": "成功 200",
            "type": "String",
            "optional": false,
            "field": "msg",
            "description": "<p>信息</p>"
          },
          {
            "group": "成功 200",
            "type": "Object",
            "optional": false,
            "field": "data",
            "description": "<p>数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回:",
          "content": "{\n     \"code\": 200,\n     \"msg\": \"\",\n     \"data\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "src/main/java/com/sj/springbootadmin/apicontroller/ApiController.java",
    "groupTitle": "user"
  },
  {
    "type": "post",
    "url": "/api/users/batch",
    "title": "批量操作",
    "name": "post_users_batch",
    "group": "user",
    "permission": [
      {
        "name": "token"
      }
    ],
    "description": "<p>批量操作</p>",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "batch",
            "description": "<p>批量json</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "请求示例：",
          "content": "[{\"method\":\"delete\",\"ids\":[1,2,3]}]",
          "type": "json"
        }
      ]
    },
    "success": {
      "fields": {
        "成功 200": [
          {
            "group": "成功 200",
            "type": "Integer",
            "optional": false,
            "field": "code",
            "description": "<p>状态码</p>"
          },
          {
            "group": "成功 200",
            "type": "String",
            "optional": false,
            "field": "msg",
            "description": "<p>信息</p>"
          },
          {
            "group": "成功 200",
            "type": "Object",
            "optional": false,
            "field": "data",
            "description": "<p>数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回:",
          "content": "{\n     \"code\": 200,\n     \"msg\": \"\",\n     \"data\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "src/main/java/com/sj/springbootadmin/apicontroller/ApiController.java",
    "groupTitle": "user"
  },
  {
    "type": "put",
    "url": "/api/users",
    "title": "更新用户",
    "name": "put_users",
    "group": "user",
    "permission": [
      {
        "name": "token"
      }
    ],
    "description": "<p>更新用户</p>",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "id",
            "description": "<p>用户id</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "userName",
            "description": "<p>用户名</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "userPwd",
            "description": "<p>密码</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "realName",
            "description": "<p>姓名</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "age",
            "description": "<p>年龄</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "请求示例：",
          "content": "{\"id\":1,\"userName\":\"abc\",\"userPwd\":\"123\",\"realName\":\"你猜\",\"age\":18}",
          "type": "json"
        }
      ]
    },
    "success": {
      "fields": {
        "成功 200": [
          {
            "group": "成功 200",
            "type": "Integer",
            "optional": false,
            "field": "code",
            "description": "<p>状态码</p>"
          },
          {
            "group": "成功 200",
            "type": "String",
            "optional": false,
            "field": "msg",
            "description": "<p>信息</p>"
          },
          {
            "group": "成功 200",
            "type": "Object",
            "optional": false,
            "field": "data",
            "description": "<p>数据</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "返回:",
          "content": "{\n     \"code\": 200,\n     \"msg\": \"\",\n     \"data\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "src/main/java/com/sj/springbootadmin/apicontroller/ApiController.java",
    "groupTitle": "user"
  }
] });
