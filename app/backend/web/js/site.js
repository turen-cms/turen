/* 全局notify默认参数 */
$.notify.defaults({
    autoHideDelay: 2000,
    showDuration: 400,
    hideDuration: 200,
    globalPosition: 'top center'
});

$(function() {
	//validator拓展验证规则
	if(jQuery.validator) {
		//邮政编码验证
		jQuery.validator.addMethod("isZipCode", function(value, element) {   
		    var zipcode = /^[0-9]{6}$/;
		    return this.optional(element) || (zipcode.test(value));
		}, "请填写正确的邮政编码");
		
		//电话号码
		jQuery.validator.addMethod("isPhone", function(value, element) {   
		    var phone = /^[1][3578][0-9]{9}$/;
		    return this.optional(element) || (phone.test(value));
		}, "请填写正确的手机号码");
		
		//验证域名
		jQuery.validator.addMethod("isDomain", function(value, element) {   
		    var domain = /^(?=^.{3,255}$)[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+$/;
		    return this.optional(element) || (domain.test(value));
		}, "请填写正确的域名");
	}
});

window.turen = yii;
var csrfParam = turen.getCsrfParam();
var csrfToken = turen.getCsrfToken();

/*
对应后台，创建以下模块turen.com、turen.cms、turen.ext、turen.shop、turen.sys、turen.tool
*/
turen.com = (function($) {
    var pub = {
		//快捷工具栏动态显隐
		quickToolbar: function () {
			if($(window).scrollTop() < $(document).height() - $(window).height() - 30) {
				$(".quick-toolbar").show();
			} else {
				$(".quick-toolbar").fadeOut(300);
			}
		},
		//立刻执行
		autoDeal: function() {
			//快捷工具栏
			turen.com.quickToolbar();
			
			$(window).resize(function() {
				turen.com.quickToolbar();
			});

			$(window).scroll(function() {
				turen.com.quickToolbar();
			});
			
			//快捷退出Esc
			$(window).keydown(function(event) {
				//快捷键，ESC快速退出
				if(event.keyCode == 27) {
					window.top.location.href = CONFIG.com.logoutUrl;
				}
			});
			
			//信息来源下拉列表
			$(".infosrc").mousemove(function() {
				$(this).find("ul").show();
			}).mouseleave(function(){
				$(this).find("ul").hide();
			});
			//信息来源操作
			$('.infosrc li a').on('click', function() {
				$(".infosrc").parent().prev().val($(this).data('name')+'：'+$(this).data('url'));
			});
			
			$(".data-tr").mouseover(function(){
				$(this).attr("class","data-tr-on");
			}).mouseout(function(){
				$(this).attr("class","data-tr");
			});
			$(".alltype").mouseover(function(){
				$(this).find(".btn").addClass("on");
				$(this).find(".drop").show();
			}).mouseout(function(){
				$(this).find(".btn").removeClass("on");
				$(this).find(".drop").hide();
			});
		},
        //状态更新
		updateStatus: function(_this) {
            _this = $(_this);
            var url = _this.data('url');
            var callback = function(res, _this) {
                if(res.state) {
                	_this.text(res.msg);
                	$.notify('已设置的状态为：'+res.msg+'！', 'success');//状态切换成功
                } else {
                    $.notify(res.msg+'！', 'error');
                }
            };
            commonRemote(url, {}, callback, _this);
        },
        //项目删除
        deleteItem: function(_this, title) {
            _this = $(_this);
            $.pb.confirm('您确定要删除“'+title+'”吗？', function() {
            	var url = _this.data('url');
                var callback = function(res, _this) {
                    if(res.state) {
                    	_this.parent().parent().parent().hide('slow');
                    	$.notify(res.msg, 'success');
                    } else {
                    	$.notify(data.msg, 'warn');
                    }
                };
                commonRemote(url, {}, callback, _this);
            });
        },
    	//批量提交
        batchSubmit(url, formId) {
        	var patten = /delete/g;
        	if(patten.test(url)) {
        		if($("input[type='checkbox'][name!='checkid'][name^='checkid']:checked").size() > 0) {
        			$.pb.confirm('确定要删除选中的信息吗？', function() {
        				$('#'+formId).attr('action', url).submit();
        			});
        		} else {
        			$.notify('没有任何选中信息！', 'warn');
        		}
        	}
        	var patten = /order/g;
        	if(patten.test(url)) {
        		if($("input[type='checkbox'][name!='checkid'][name^='checkid']:checked").size() > 0) {
        			//禁用未选中的行//注意，不提交未选择的行，保证数据的一一对应，后台无需单独处理
        			$("input[type='checkbox'][name!='checkid'][name^='checkid']:not(:checked)").parents('tr').find("input[type='text']").attr('disabled', 'disabled');
    				$('#'+formId).attr('action', url).submit();
        		} else {
        			$.notify('没有任何选中信息！', 'warn');
        		}
        	}
        },
        //全选
        checkAll(status) {
        	$("input[type='checkbox'][name^='checkid'][disabled!='true']").attr('checked', status);
        },
        //展开
        showAllRows: function() {
        	$("div[rel^='rowpid'][rel!='rowpid_0']").slideDown(200);
        	$("span[id^='rowid']").attr("class","minus-sign");
        	setTimeout("turen.com.quickToolbar()",200);
        },
        //隐藏
        hideAllRows: function() {
        	$("div[rel^='rowpid'][rel!='rowpid_0']").slideUp(200, turen.com.quickToolbar());
        	$("span[id^='rowid']").attr("class","plus-sign");
        	setTimeout("turen.com.quickToolbar()",200);
        },
    	//展开合并下级
        displayRows: function(id) {
        	var rowpid = $("div[rel='rowpid_"+id+"']");
        	var rowid  = $("span[id='rowid_"+id+"']");

        	if(rowid.attr("class") == "minus-sign") {
        		rowpid.slideUp(200);
        		rowid.attr("class","plus-sign");

        		//判断快捷操作栏
        		//setTimeout("QuickToolBar()",200);
        	} else {
        		rowpid.slideDown(200);
        		rowid.attr("class","minus-sign");

        		//判断快捷操作栏
        		//setTimeout("QuickToolBar()",200);
        	}
        },
        //编辑指定字段
        editItem: function(_this) {
        	var _this = $(_this);
        	
        	var box = _this.parents('.edit-box');
        	
        	if(box.hasClass('active')) {
        		box.removeClass('active');
            	box.find('.edit-btn').html('<i class="fa fa-edit"></i>');
            	
            	//更新
            	var id = _this.data('id');
            	var url = _this.data('url');
            	var originOrderid = box.find('.origin').html();
            	var orderid = box.find('.input').val();
            	if(orderid != orderid*1) {
            		$.notify('输入的数值有误', 'warn');
            		return;
            	}
            	if(originOrderid*1 == orderid*1) {
            		$.notify('排序没有作修改', 'warn');
            		return;
            	}
            	
                var callback = function(res, _this) {
                    if(res.state) {
                    	$.notify(res.msg, 'success');
                    	//修改html
                    	var box = _this.parents('.edit-box');
                    	box.find('.origin').html(box.find('.input').val());
                    } else {
                    	$.notify(data.msg, 'warn');
                    }
                };
                commonRemote(url, {kid: id, value: orderid}, callback, _this);
        	} else {
        		box.addClass('active');
            	box.find('.edit-btn').html('<i class="fa fa-check-square-o"></i>');
        	}
        },
        //隐藏alert
        hideAlert(_this, boxClass = 'alert') {
        	var _this = $(_this);
        	
        	boxClass = '.'+boxClass;
        	_this.parents(boxClass).hide('slow');
        },
        //不同栏目，显示不同自定义字段
        filterField: function(_this) {
        	var _this = $(_this);

        	// 初始化展示效果
            $('tr.no-prev-line, tr.diy-field-row').hide();

        	// 切换自定义字段
        	var columnid = _this.val();
        	if(columnid != '') {
        		$('tr.diy-field-row').each(function() {
        			var str = ','+$(this).data('columnids')+',';
        			if(str.indexOf(columnid) != -1) {
        				$('tr.no-prev-line').show();
        				$(this).show();
        			}
        		});
        	}

        	// 异步获取标签
            var columnid = _this.val();
            var callback = function(res, _this) {
                // console.log(res);
                if(res.state) {
                    $.notify('指定栏目的标签已获取', 'success');
                    $('#flag-checkbox-list').html(res.msg);
                } else {
                    // $.notify(res.msg, 'error');
                    $('#flag-checkbox-list').html('');
                }
            };
            commonRemote(CONFIG.cms.columnFlagListUrl, {columnid: columnid}, callback, _this);
        },
        //生成链接
        pinyin: function(_this, name) {
        	var _this = $(_this);
        	if(name != '') {
        		var callback = function(res, _this) {
                    if(res.state) {
                    	$.notify('生成链接成功', 'success');
                    	_this.prev('input').val(res.msg).parent('.slug-input').prev().find('.slug-url').html(res.msg);
                    } else {
                    	$.notify(res.msg, 'error');
                    }
                };
                commonRemote(CONFIG.com.pinyinUrl, {text: name}, callback, _this, 'GET');
        	} else {
        		$.notify('请先填充标题', 'warn');
        	}
        }
    };

    // 私有方法
    function commonRemote(url ,data, callback, _this, type = 'POST') {
        data[csrfParam] = csrfToken;
        $.ajax({
            url: url,
            type: type,
            dataType: 'json',
            context: _this,
            cache: false,
            data: data,
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                //console.log(XMLHttpRequest);
                //console.log(textStatus);
                //console.log(errorThrown);
                $.notify(XMLHttpRequest.responseText, 'error');
            },
            success: function(res) {
                if(callback) {
                    callback(res, _this);
                }
           }
        });
    }

    return pub;
})(jQuery);


turen.ext = (function($) {
    var pub = {
        //投票增加
        addNewOption: function() {
            var str = '<tr class="option-item"><td class="first-column"><span class="delVoteTxt"><a href="javascript:;" onclick="DelOption(this)">删</a></span>：</td><td class="second-column"><input type="text" class="input" name="options[new][]" value="" /></td></tr>';
            $('tr.option-item').last().after(str);
        },
        //投票删除
        delOption: function(_this) {
            $(_this).parent().parent().parent().remove();
        }
    };

    // 私有方法
    function commonRemote(url ,data, callback, _this, type = 'POST') {
        data[csrfParam] = csrfToken;
        $.ajax({
            url: url,
            type: type,
            dataType: 'json',
            context: _this,
            cache: false,
            data: data,
            success: function(res) {
                if (res['state']) {
                    if(callback) {
                        callback(res, _this);
                    }
                } else {
                	$.notify(res['msg'], 'warn');
                }
           }
        });
    }

    return pub;
})(jQuery);

turen.shop = (function($) {
    var pub = {
        getAttrForm: function(_this) {
        	var _this = $(_this);
        	
        	var pcateid = _this.val();
            var callback = function(res, _this) {
                if(res.state) {
                	$.notify('获取属性表单成功', 'success');
                	$('#get-attr').html(res.msg);
                } else {
                	$.notify(res.msg, 'error');
                	$('#get-attr').html('<div style="color:#9C0;">暂无自定义属性，您可以在商品类别中进行绑定</div>');
                }
            };
            commonRemote(CONFIG.shop.attrFormUrl, {pcateid: pcateid}, callback, _this);
        }
    };

    // 私有方法
    function commonRemote(url ,data, callback, _this, type = 'POST') {
        data[csrfParam] = csrfToken;
        $.ajax({
            url: url,
            type: type,
            dataType: 'json',
            context: _this,
            cache: false,
            data: data,
            success: function(res) {
                if(callback) {
                    callback(res, _this);
                } else {
                	if (res['state']) {
                    	$.notify(res['msg'], 'success');
                    } else {
                    	$.notify(res['msg'], 'warn');
                    }
                }
           }
        });
    }

    return pub;
})(jQuery);

turen.cms = (function($) {
    var pub = {
		getColumnCheckboxList: function(_this) {
        	var _this = $(_this);
        	
        	var typeid = _this.val();
            var callback = function(res, _this) {
                if(res.state) {
                	$.notify('指定类型的栏目已获取', 'success');
                	$('#fd-column-droplist').html(res.msg);
                } else {
                	$.notify(res.msg, 'error');
                }
            };
            commonRemote(CONFIG.cms.columnCheckBoxListUrl, {typeid: typeid}, callback, _this);
        },
        setDiyFieldRegular: function(_this) {
        	var key = $(_this).val();
        	var meses = {
    			required : '必须输入的字段',
                email : '必须输入正确格式的电子邮件',
                url : '必须输入正确格式的网址',
                dateISO : '必须输入正确格式的日期（ISO），例如：2009-06-23',
                number : '必须输入合法的数字（负数，小数）',
                digits : '必须输入整数',
                creditcard : '必须输入合法的信用卡号',
                maxlength :	'字段长度不允许超过最大限制',
                isZipCode : '必须填写正确的邮政编码',
                isPhone : '必须填写正确的手机号码',
                isDomain : '必须填写正确的域名'
        	};
        	
        	$('#diyfield-fd_check').val(key);
        	$('#diyfield-fd_tips').val(meses[key]);
        }
    };

    // 私有方法
    function commonRemote(url ,data, callback, _this, type = 'POST') {
        data[csrfParam] = csrfToken;
        $.ajax({
            url: url,
            type: type,
            dataType: 'json',
            context: _this,
            cache: false,
            data: data,
            success: function(res) {
                if(callback) {
                    callback(res, _this);
                } else {
                	if (res['state']) {
                    	$.notify(res['msg'], 'success');
                    } else {
                    	$.notify(res['msg'], 'warn');
                    }
                }
           }
        });
    }

    return pub;
})(jQuery);

turen.sys = (function($) {
    var pub = {
		getTemplate: function(_this) {
        	var _this = $(_this);
        	
        	var tempid = _this.val();
            var callback = function(res, _this) {
                if(res.state) {
                	$.notify('当前模板支持的语言已获取', 'success');
                	$('#multilangtpl-lang_sign').html(res.msg);
                } else {
                	$.notify(res.msg, 'error');
                }
            };
            commonRemote(CONFIG.sys.templateSelectUrl, {tempid: tempid}, callback, _this);
        }
    };

    // 私有方法
    function commonRemote(url ,data, callback, _this, type = 'POST') {
        data[csrfParam] = csrfToken;
        $.ajax({
            url: url,
            type: type,
            dataType: 'json',
            context: _this,
            cache: false,
            data: data,
            success: function(res) {
                if(callback) {
                    callback(res, _this);
                } else {
                	if (res['state']) {
                    	$.notify(res['msg'], 'success');
                    } else {
                    	$.notify(res['msg'], 'warn');
                    }
                }
           }
        });
    }

    return pub;
})(jQuery);

turen.tool = (function($) {
    var pub = {
		addToQueue: function(_this, url) {
        	var _this = $(_this);
        	var sendType = $(_this).prev().val();
        	var selectGroup = $(_this).prev().prev().val();
        	var selectType = $(_this).prev().prev().prev().val();
        	
        	if(selectGroup == '') {
        		$.notify('请先选择队列，如果没有先创建', 'warn');
        		return;
        	}
        	
        	$.pb.confirm('确定要加入到指定队列吗？', function() {
        		var callback = function(res, _this) {
	                if(res.state) {
	                	$.notify(res.msg, 'success');
	                } else {
	                	$.notify(res.msg, 'error');
	                }
	            };
        		if(selectType == 'selected') {//当前选中的
            		var selectedAll = $("input[type='checkbox'][name!='checkid'][name^='checkid']:checked");
            		if(selectedAll.size() > 0) {
            	            var checkIds = new Array();
            	            selectedAll.each(function(i) {
            	            	checkIds[i] = $(this).val();
            	            });
            	            checkIds = checkIds.join('|');
            	            
            	            commonRemote(url, {checkIds: checkIds, group_id: selectGroup, send_type: sendType}, callback, _this);
            	            return;
            		} else {
            			$.notify('没有任何选中信息！', 'warn');
            		}
            	} else if(selectType == 'filtered') {//当前过滤的列表
            		commonRemote(url, {group_id: selectGroup, send_type: sendType}, callback, _this);
            	}
        	});
        }
    };

    // 私有方法
    function commonRemote(url ,data, callback, _this, type = 'POST') {
        data[csrfParam] = csrfToken;
        $.ajax({
            url: url,
            type: type,
            dataType: 'json',
            context: _this,
            cache: false,
            data: data,
            success: function(res) {
                if(callback) {
                    callback(res, _this);
                } else {
                	if (res['state']) {
                    	$.notify(res['msg'], 'success');
                    } else {
                    	$.notify(res['msg'], 'warn');
                    }
                }
           }
        });
    }

    return pub;
})(jQuery);

//立刻执行
turen.com.autoDeal();




