<chatwindow name="chat_window" class="chat-larges">
    <login name="login_tag" class="none"></login>
    <bubble name="bubble_tag" company="{company}" onclick={unmounte} ></bubble>
    <script>
        var self = this;
    	var locals = JSON.parse(window.localStorage.dilooApp);
        self.messages = [] ;
        self.company ={
            buble:{
                image : "img/burbuja_0007_chat01.png"
            }
            ,image : ''
            ,connectedMessage : ''
            ,disconnectedMessage : ''
            ,isConnected : true
            ,showMessageIn : 2.5
        }
        unmounte (){
            //console.log(this.tags)
            var bubble = this.tags.bubble_tag;
            bubble.unmount();
            self.root.querySelector('login').setAttribute('class','show');
            self.root.querySelector('login').setAttribute('style','background-color:#E8E4D2');
        }
        initmessage(){
            $.get({
                "url":"http://localhost:1337/company?id="+locals.c
            })
            .done(function(data){
                self.company.image = data.image;
                self.company.isConnected = data.isConnected;
                if(data.isConnected == 1){
                    self.messages.push({
                        body:data['defaultMessage']
                        ,type:'reciber'
                    });
                }else{
                    self.messages.push({
                        body:data['disconnectedMessage']
                        ,type:'reciber'
                    });				
                }
                self.update();
            })
            .fail(function(e){
                console.log(e);
            })
        }
        this.on('mount',function(){
            //this.listeners();
            //this.initmessage();
        });    
    </script>    
</chatwindow>