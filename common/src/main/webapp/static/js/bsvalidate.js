/**
 * 基于bootstrap的jquery validate插件
 */

var _options;

$.fn.bsvalidate = function(option){
	
	if(typeof(option) == 'string'){
		executeMethod(option);
	}else{
		initValidate(this,option);
	}
	
	/**
	 * 初始化表单验证
	 */
	function initValidate($form,options){
		var defoption = {
			tips:"bottom",
			beforSubmit:false
		};
		
		options = $.extend(defoption,options);
		_options = options;
		
		// 设置回调
		$form.attr("onsubmit","return beforeSubmit(this)");
		
		// 初始化
		initForm($form,options);
	}
	
	/**
	 * 为每个单元绑定失去焦点事件
	 */ 
	function initForm($form,options){
		var rules = options.rules;
		for(var key in rules){
			var id = "#"+key;
			$(id).blur(function(){
				validate($(id),rules[key]);
			});
		}
	}
	
	function executeMethod(methodName){
		alert(1);
	}
	
	

}


/**
 * 校验form表单中的每个单元
 */ 
function check($ele,condition){
	// 单元如果为隐藏或这disabled状态则不进行校验
	if($ele.attr("type") != "hidden" || !$ele.attr("disabled")){
		
		for(var key in condition){
			if(! validate(key,condition[key],$ele)){
				var message;
				if(!condition["message"]){
					if(key == 'type'){
						message = defaultMsg(condition[key]);
					}else{
						message = defaultMsg(key);
					}
				}else{
					message = condition["message"];
				}
				changeCss($ele,message,false);
				return false;
			}
		}
	}
	changeCss($ele,"",true);
	return true;
}

/**
 * 根据类型名称获取默认的提示信息
 */
function defaultMsg(type){
	var demsg = {
			"phone":"输入的手机号不合法",
			"email":"输入的email地址不合法",
			"number":"请输入数字",
			"date":"输入的日期不合法",
			"CHS":"请输入中文",
			"EN":"请输入英文",
			"eqTo":"两次密码不一致",
			"minLength":"输入的值小于最小长度",
			"maxLength":"输入的值大于最大长度",
			"min":"输入的值小于最小值",
			"max":"输入的值大于最大值",
	}
	
	return demsg[type];
}

/**
 * 改变单元样式
 */
function changeCss($ele,message,isChange){
	var $parent = $ele.parent();
	if(isChange){
		$parent.removeClass("has-error");
		$parent.addClass("has-success");
		$ele.attr("title",message);
		$ele.tooltip("destroy");
	}else{
		$parent.removeClass("has-success");
		$parent.addClass("has-error");
		$ele.attr("data-toggle","tooltip");
		$ele.attr("data-placement","bottom");
		$ele.attr("title",message);
		$ele.tooltip("show");
	}
}

/**
 * 单元类型校验
 */
function validate($ele,condition){
	var value = $ele.val();
	if(condition["required"]&&condition["required"]==true){
		if(!value){
			changeCss($ele,"此为必输项",false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["type"]&&condition["type"]&&condition["type"]=="phone"){
		var	message = defaultMsg("phone");
		if(!checkType("phone",value)){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["type"]&&condition["type"]&&condition["type"]=="email"){
		var	message = defaultMsg("email");
		if(!checkType("email",value)){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["type"]&&condition["type"]&&condition["type"]=="number"){
		var	message = defaultMsg("number");
		if(!checkType("number",value)){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["type"]&&condition["type"]&&condition["type"]=="date"){
		var	message = defaultMsg("date");
		if(!checkType("date",value)){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["type"]&&condition["type"]&&condition["type"]=="CHS"){
		var	message = defaultMsg("CHS");
		if(!checkType("CHS",value)){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["type"]&&condition["type"]&&condition["type"]=="EN"){
		var	message = defaultMsg("EN");
		if(!checkType("EN",value)){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["minLength"]){
		var	message = defaultMsg("minLength");
		if(value.length<condition["minLength"]){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["maxLength"]){
		var	message = defaultMsg("maxLength");
		if(value.length>condition["maxLength"]){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["min"]){
		var	message = defaultMsg("min");
		if(value<condition["min"]){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["max"]){
		if(!message){
			message = defaultMsg("max");
		}
		if(value>condition["max"]){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	if(value&&condition["eqTo"]){
		var	message = defaultMsg("eqTo");
		if($(condition["eqTo"]).val() != value){
			changeCss($ele,message,false);
			return false;
		}else{
			changeCss($ele,"",true);
		}
	}
	return true;
}

/**
 * 根据类型校验
 * @param key
 * @param value
 * @param $ele
 */
function checkType(key,value){
	switch(key){
		case "phone" :
			var reg = /^1[3|4|5|8|9]\d{9}$/;        
			return reg.test(value);    
		case "email" :
			var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
			return reg.test(value);
		case "number" :
			return !isNan(value);
		case "date" :
			var a = /^(\d{4})-(\d{2})-(\d{2})$/;
	        return a.test(value);
		case "CHS" :
			var reg = /^[\u0391-\uFFE5]+$/;
			return reg.test(value);
		case "EN" :
			var reg = /^[A-Z|a-z]+$/;
			return reg.test(value);
		default :
			return true;
	}
}

/**
 * 表单提交前校验
 * @param form
 * @returns
 */
function beforeSubmit(form){
	var isSubmit = true;
	for(var key in _options.rules){
		var id = "#"+key;
		if(!validate($(id), _options.rules[key])){
			isSubmit = false;
		}
	}
	if(isSubmit&&_options.beforSubmit){
		if(isSubmit && _options.modal){
			// 开启么模态框
			$(_options.modal).modal('toggle');
		}
		return true;
	}
	return false;
}
































/**
 * 校验输入项
 * @param id 待校验表格ID
 * @param rule 校验项
 */
function check(id,rule){
	
	/**
	 *  根据ID获取校验项内容
	 */ 
	var value = $("#"+id).val();
	
	/**
	 * 循环校验规则
	 */
	var $each = function(validate){
		
		for(var key in rule){
			// 根据key调用校验函数
			validate.call(id,key,rule[key]);
		}
		
	}
	
}

function validateMap(key,rule){
	var map = {
			"required":required(rule),
	}
}

function required(rule){
	alert(1);
}

























