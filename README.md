# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<article class="Cection">
  <div class="Cection1">
 	<h1>Concept</h1>

  <div class="tunagaru">「繋がる×広がる」</div>

       <div class="coment 1">誰かの役に立ち</div>
       <div class="coment 2">誰かの為になり</div>
       <div class="coment 3">支え合って生きていく。</div>


 	  <div class="concept">  
       <div class="cleafix">
 	    <div class="concept item kazoku">
 	       <div class="box 1"><h3>家族</h3></div>
 	       </div>
 	    <div class="concept item tomo">
 	       <div class="box 2"><h3>友達</h3></div>
 	    </div>

 	    <div class="concept item zibun">
 	        <div class="box 3"><h3>自分</h3></div>
 	    </div>
       </div>
      <div class="clearfix">
       <div class="concept item sigoto">
 	    	<div class="box 1"><h3>仕事</h3></div>
 	   </div>
 	      
 	  </div>
 	     
   </div>
   </div>
 <!-- </article> -->

 <!-- <article class="Cection"> -->
  <div class="Cection2">
   <h1>Introduce</h1>
    <div class="port">Web製作『ポートフォリオ製作による実力向上』</div>
 	<div class="Introduce">
    <%= image_tag("img/DAJAART_top.png", :class => "dajaart")%>
 	<div class="clearfix" class="What">
        <h4>What's Portfolio?!</h4>
          <p class="What-item">①インターン、<br>新卒採用に有利！<br>
          ②自己PRができる！<br>
          ③実力向上を目指す！</p>
    </div>
        
 	</div>
 </div>
<!-- </article> -->


<!-- <article class="Cection"> -->
 <div class="Cection3">

<h5>しかし、作成にはこんな悩みが…。</h5>
 <div class="Introduce-1">
  <div class="before">
     <%= image_tag("img/hatena-1184896_1280.png", :class => "before-item")%>
     <div class="sample">
      <div class="before-item-text">Before</div>
     </div>
 </div>

 <div class="clearfix" class="but">

     <p class="but-item1">・一人では息詰まる…。<br>
        ・思った以上に難しい…。<br>
        ・ネットで調べてもよく分からない…。</p>

       <p class="but-item2">挫折してしまう。</p>  
 </div>

 </div>
 </div>


<h5>だが、しかーし！！</h5>

 <h6>ペンペンサークルでは…</h6>

  <div class="Introduce-2">
    <div class="before">
      <%= image_tag("img/im-happy-1184894_1280.png", :class => "before-item")%>
      <div class="sample">
       <div class="before-item-text">After</div>
      </div>
    </div>
  </div>

  <div class="clearfix" class="but">

    <p class="but-item3">グループ学習での<br>仲間との意見交換による<br>解決策の導きにより<br>『繋がり』<br>
    アイディアの<br>出し合いによって<br>協調性、自立性が<br>『広がる！』</p>
   

</div>

<!-- ここからメンバー -->

<!-- <div class="Cection3"> -->

<div class="member">
   <h1>Member</h1>
  
  
     <nav>
       <ul>

          <% @members.each do |member| %>
            <li>
              <a class="name" href="">

              <%= link_to member.name, member_path(member) %>

                <% if member.image? %>
                  <p><%= image_tag(member.image.url, :size=> "100x100", :class => "img_show")%></p>
                <% else %>
                  <p><%= image_tag('penpen.png', :size => "50x50", :class => "img_show") %></p>
                <% end %>
              </a>
            </li>
          <% end %>

            <li>NEXT.....</li>
       </ul>
      </nav>
  
  </div>

<!-- </div> -->

<div class="Cection3">
<div class="wanted">
  <h1>Wanted</h1>
  <h2>参加者募集中！！(<span class="red">※参加条件なし！</span>）</h2>

<form>
  <input type="text" name="sei" maxlength="15" placeholder="姓">
  <input type="text" name="mei" maxlength="15" placeholder="名"><br>
  性別：
  <input type="radio" name="gender" value="男性">男性
  <input type="radio" name="gender" value="女性">女性   
    <br>
    <label>現在：
    <select name="grade">
      <option value="高校生">高校生</option>
      <option value="大学生">大学生</option>
      <option value="社会人">社会人</option>
      <option value="その他">
      その他</option>
    </select>
    </label>
    <br>
    <span>E-mail(必須) :</span>
     <input type="text" name="adres" maxlength="50" list="mail-list" placeholder="アドレス" required="">
     <datalist id="mail-list">
         <option value="@ezweb.ne.jp"></option>
         <option value="@i.softbank.jp"></option>
         <option value="@docomo.ne.jp"></option>
         <option value="@gmail.com"></option>
         <option value="@icloud.com"></option>
     </datalist>
     <br>
    <span>電話番号 :</span>
    <input type="tel" name="tel-number" placeholder="電話番号">
    <br>
     <textarea name="other" rows="10" cols="100" placeholder="ご意見ご質問なんでもお受けいたします！！"></textarea>
    <br>
  <input type="submit" value="送信">
  <input type="reset" value="リセット">

</form>
</div>

</div>

<div class="Cection4">

 <!-- <div class="footer"> -->
  <%= image_tag("img/twitter.png", :class => "icon", :width => "50", :height =>"50")%>
  <%= image_tag("img/facebook.png", :class => "icon", :width => "50", :height =>"50")%>
  <%= image_tag("img/insta.jpg", :class => "icon", :width => "50", :height =>"50")%>
  <p class="footer-text">Copyright ©PENPENFRIEND pensuc.All right reserved.</p> 
   
 <!-- </div> -->

</div>

</article>