<div class="pusher">
    <div class="full height">
        <link rel="stylesheet/less" type="text/css" href="/views/accordion.less" />
        <div class="tab header segment">
            <div class="container">
                <div class="introduction">
                    <h1 class="ui header">
                        Site Name
                    </h1>
                    <p>Site Slogan</p>
                    <!--       <a href="/module.html" class="ui right floated basic right labeled icon button">
                            Learn about Modules
                            <i class="help icon" data-title="What are Modules?" data-content="Modules are UI elements that include behaviors as part of their definition. Modules require some knowledge of Javascript to use."></i>
                          </a> -->
                </div>
                {include file="views/tab-menu.tpl"}
            </div>
        </div>
        {include file="views/content.tpl"}
    </div>
</div>


<div class="ui tab" data-tab="Definition">
    <img src="">
    {$posts[0]['name']}
    {foreach from=$categories item=i}
        {include file="views/single.tpl"}
    {/foreach}

<script type="text/javascript">
    {literal}
    $(document)
            .ready(function(){
                $('.menu a.item').tab()
                ;
            })
    ;{/literal}
</script>
</div>
