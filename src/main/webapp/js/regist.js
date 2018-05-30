$(function () {
    $('#regist').bootstrapValidator({
        message: "必填字段",
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            username: {
                validators: {
                    notEmpty: {
                        message: '请填写您的姓名'
                    },
                    stringLength: {
                        min: 2,
                        max: 10,
                        message: '姓名长度不对，请填写真实的姓名'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: '邮箱不得为空'
                    },
                    emailAddress: {
                        message: '邮箱格式不合法'
                    }
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: '不得为空'
                    },
                    stringLength: {
                        min: 11,
                        max: 11,
                        message: '请输入11位有效的手机号码'
                    }
                }

            },
            password: {
                validators: {
                    notEmpty: {
                        message: '密码不得为空'
                    },
                    stringLength: {
                        min: 6,
                        message: '密码长度至少6位'
                    }
                }
            },
            confirmPassword: {
                validators: {
                    notEmpty: {
                        message: '确认密码不得为空'
                    },
                    identical: {
                        field: 'password',
                        message: '确认密码跟密码不一致'
                    },
                    stringLength: {
                        min: 6,
                        message: '密码长度至少6位'
                    }
                }
            }

        }
    })
});