tinymce.PluginManager.add("code",function(e){function t(){e.windowManager.open({title:"Source code",body:{type:"textbox",name:"code",multiline:!0,minWidth:e.getParam("code_dialog_width",600),minHeight:e.getParam("code_dialog_height",Math.min(tinymce.DOM.getViewPort().h-200,500)),value:e.getContent({source_view:!0}),spellcheck:!1,style:"direction: ltr; text-align: left"},onSubmit:function(t){e.undoManager.transact(function(){e.setContent(t.data.code)}),e.nodeChanged()}})}e.addCommand("mceCodeEditor",t),e.addButton("code",{icon:"code",tooltip:"Source code",onclick:t}),e.addMenuItem("code",{icon:"code",text:"Source code",context:"tools",onclick:t})});