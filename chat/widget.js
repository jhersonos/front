(function(d,i){
    var iFrame = d.createElement(i);
    iFrame.setAttribute('frameborder',0);
    iFrame.setAttribute('allowtransparency','true');
    iFrame.setAttribute('src','chat.html');
    iFrame.setAttribute('width',305);
    iFrame.setAttribute('height',375);
    iFrame.style.position = 'fixed';
    iFrame.style.bottom = '0px';
    iFrame.style.right  = '0px';
    var div = d.createElement('div');
    div.appendChild(iFrame);
    d.body.appendChild(div);
})(document,"iframe");