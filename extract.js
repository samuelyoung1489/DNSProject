javascript:(function(){

output='&lt;html&gt;&lt;head&gt;&lt;title&gt;SEO SERP Extraction Tool&lt;/title&gt;&lt;style type=\'text/css\'&gt;body,table{font-family:Tahoma,Verdana,Segoe,sans-serif;font-size:11px;color:#000}h1,h2,th{color:#405850}th{text-align:left}h2{font-size:11px;margin-bottom:3px}&lt;/style&gt;&lt;/head&gt;&lt;body&gt;';

output+=&quot;&lt;table&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;a href=\'https://www.chrisains.com\'&gt;&lt;img src=\'https://www.chrisains.com/wp-content/uploads/2015/06/chrisains.com-logo1.png\'&gt;&lt;/a&gt;&lt;/td&gt;&lt;td&gt;&lt;h1&gt;SEO SERP Extraction Tool&lt;/h1&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&quot;;

pageAnchors=document.getElementsByTagName('a');
divClasses=document.getElementsByTagName('div');
var%20linkcount=0;var%20linkLocation='';
var%20linkAnchorText='';

output+='&lt;table&gt;&lt;th&gt;ID&lt;/th&gt;&lt;th&gt;Link&lt;/th&gt;&lt;th&gt;Anchor&lt;/th&gt;';

for(i=0;i&lt;pageAnchors.length;i++){

	if(pageAnchors[i].parentNode.parentNode.getAttribute('class')!='iUh30'){

		var%20anchorText%20=%20pageAnchors[i].textContent;
		var%20anchorLink%20=%20pageAnchors[i].href;
		var%20linkAnchor%20=%20anchorLink%20+%20'\t'+anchorText;
		var%20anchorID%20=%20pageAnchors[i].id;

		if(anchorLink!=''){
			if(anchorLink.match(/^((?!google\.|cache|blogger.com|\.yahoo\.|youtube\.com\/\?gl=|youtube\.com\/results|javascript:|api\.technorati\.com|botw\.org\/search|del\.icio\.us\/url\/check|digg\.com\/search|search\.twitter\.com\/search|search\.yahoo\.com\/search|siteanalytics\.compete\.com|tools\.seobook\.com\/general\/keyword\/suggestions|web\.archive\.org\/web\/|whois\.domaintools\.com|www\.alexa\.com\/data\/details\/main|www\.bloglines\.com\/search|www\.majesticseo\.com\/search\.php|www\.semrush\.com\/info\/|www\.semrush\.com\/search\.php|www\.stumbleupon\.com\/url|wikipedia.org\/wiki\/Special:Search).)*$/i)){
				if(anchorID.match(/^((?!hdtb_more|hdtb_tls|uh_hl).)*$/i)){
					linkLocation+=anchorLink+'&lt;br%20/&gt;';
					linkAnchorText+=anchorText+'&lt;br%20/&gt;';
					linkcount++;
					if%20(anchorText%20===%20undefined)%20anchorText%20=%20pageAnchors[i].innerText;output+='&lt;tr&gt;';
					output+='&lt;td&gt;'+linkcount+'&lt;/td&gt;';
					output+='&lt;td&gt;'+pageAnchors[i].href+'&lt;/a&gt;&lt;/td&gt;';
					output+='&lt;td&gt;'+anchorText+'&lt;/td&gt;';
					output+='&lt;/tr&gt;\n';
					}
				}
			}
		}
	}

output+='&lt;/table&gt;&lt;br/&gt;&lt;h2&gt;URL%20List&lt;/h2&gt;&lt;div&gt;';
output+=linkLocation;output+='&lt;/div&gt;&lt;br/&gt;&lt;h2&gt;Anchor%20Text%20List&lt;/h2&gt;&lt;div&gt;';
output+=linkAnchorText;output+='&lt;br/&gt;%C2%A0&lt;br/&gt;&lt;p%20align=center&gt;&lt;a%20href=\'https://www.chrisains.com\'&gt;www.chrisains.com&lt;/a&gt;&lt;/p&gt;';

with(window.open()){document.write(output);document.close();}})();
