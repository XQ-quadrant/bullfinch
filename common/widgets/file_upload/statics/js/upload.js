(function($) {

	var settings = {
		fileType : {
			img : ['jpg','JPG','jpeg','JPEG','gif','GIF','PNG','png'],
			zip : ['zip','ZIP','rar','RAR']
		},
		maxSize  : 2017520,//1024*1024*3*1000000,//2017520,//3000*102400*102400,
		url      : '/default/certificate',
		sucFn    : function(){console.log('success')}
	};

	$.fn.extend({

		upload:function(options){
			var that = this;
			settings = $.extend(settings,options);

			//验证文件后缀
			function checkType(){
				var filepath = that.val(),
					filetype = that.attr('filetype'),
					thisType = filepath.split('.').pop();
				if(filepath){
					var pass = false;
					$.each(settings.fileType[filetype],function(key,val){
						if(thisType == val){
							pass = true;
							return pass;
						}
					});
					return pass;
				}
			}

			//验证文件格式
			if(!checkType()){
				alert('文件格式不正确');
				return false;
			}

			//验证文件大小
			var fileSize = that[0].files[0].size;
			if(fileSize > settings.maxSize){
				alert(fileSize);
				alert(settings.maxSize);
				alert('文件超出规定大小');
				return false;
			}

			//上传相关
			var thisId = that.attr('id');
			var options={
        	    url:settings.url,
        	    type:"post",
        	    success:settings.sucFn
        	};
        	if(!that.hasClass('inited')){
        		that.addClass('inited')
        		$("#form_"+thisId).submit(function() {
        		    $(this).ajaxSubmit(options);
        		    return false;
        		});
        	}
    		$("#form_"+thisId).submit();

		}

	});
})(jQuery);