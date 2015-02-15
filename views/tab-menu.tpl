<div class="four item tabular ui menu">
    <a  href="?category=all" class="{if $mode eq 'all'}active{/if} item" data-tab="all">All</a>
    {foreach from=$categories item=i}
        <a href="?category={$i['id']}" class="{if $mode eq $i['id']}active{/if} item" data-tab="{$i['name']}">{$i['name']}</a>
    {/foreach}
    <a  href="?category=my-list" class="item" data-tab="my-list">My List</a>
</div>