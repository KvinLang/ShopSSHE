<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <%@ include file="/public/head.jspf"%>
   <script type="text/javascript">
     $(function(){
    	 $('#categoryGrid').datagrid({    
    		    url:'productAction!query.action',  
    		    striped : true,
    		    pagination : true,
    		    fitColumns:true,
    		    idField : 'id',
    		    queryParams: {
    				name: '',
    			},
    			toolbar: [{
        			text : "修改商品",
    				iconCls: 'icon-edit',
    				handler: function(){
    					var rows = $("#categoryGrid").datagrid('getSelections');
    			         if(rows.length==1){
                              parent.$('#win').window({    
          					    width : 340,    
          					    height : 250,
          					    title : '修改类别', 
          					    content : '<iframe  src="send_product_update.action" frameborder="0" width="100%" height="100%"/>'
          					});  
    			         }else{
    			        	 $.messager.alert({
                         		title : '错误提示',
                         		msg : '只能编辑一条数据！',
                         		icon : 'error'
                            });
        			     }

        			}
    			},'-',{
        			text : '添加商品',
    				iconCls: 'icon-add',
    				handler: function(){
    					parent.$('#win').window({    
    					    width : 500,    
    					    height : 600,
    					    title : '添加类别', 
    					    content : '<iframe  src="send_product_save.action" frameborder="0" width="100%" height="100%"/>'
    					});  
        		   }
    			},'-',{
        			text : '删除商品',
    				iconCls: 'icon-remove',
    				handler: function(){
                        var rows = $("#categoryGrid").datagrid('getSelections');
                        if(rows.length>0){
                        	var idkey = [];
                         	$.messager.confirm('确认','您确认想要删除记录吗？',function(del){        
                         	    	 if (del){    
                               	       for(var i =0 ; i<rows.length ; i++){
                                             idkey.push(rows[i].id);
                                          }  
                               	         console.info(idkey);
                               	         var params = $.param({'idArray':idkey},true);
                                         var key = idkey.join(',');
                                          $.ajax({
                                             url : 'productAction!deleteProduct.action',
                                             type : 'POST',
                                             async : true,
                                             data : {ids : key},
                                             dataType:'json',
                                             success : function(data){
                                                 //console.info(data);
                                                 //后台通过strean的方式返回
                                                  if(data.msg){
                                                	  $('#categoryGrid').datagrid('clearSelections');
                                                	  $('#categoryGrid').datagrid('reload'); 
                                                  }
                                             }
                                          });
                               	    }    
                         	        
                         	}); 
                        }else{
                        	$.messager.alert({
                        		title : '错误提示',
                        		msg : '请选择要删除的商品！',
                        		icon : 'error'
                           });
                        }
        		    }
    			},'-',{
        			text : '<input id="searchType" name="searchType">'
    			}], 		    
    		    pageSize : 5,
    		    pageList : [5,10,15,20,25],
    		    columns:[[ 
					{field:'checkbox',checkbox:true},       
    		        {field:'id',title:'商品编号',width:100},    
    		        {field:'name',title:'商品名称',width:100},    
    		        {field:'remark',title:'简单介绍',width:100},
    		        {field:'category.type',title:'所属类别',width:100,
    		        	formatter: function(value,row,index){
        		         if(row.category!=null&&row.category.type!=null){
    				      	 return row.category.type;
    					 }
        		      }
    		        }
    		    ]]    
    	});   
     	$('#searchType').searchbox({ 
     		searcher:function(value,name){ 
     			   $("#categoryGrid").datagrid('load',{
                         name : value
         		   });
     			}, 
     			prompt:'请输入查询商品信息' 
        }); 
     });
   </script>
</head>
<body>
<table id="categoryGrid"></table>

</body>
</html>