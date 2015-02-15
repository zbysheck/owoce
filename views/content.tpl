<div class="main container">

    <div class="ui {if $mode eq 'all'}active {/if}tab" data-tab="all">
        {include file="views/sidebar.tpl"}
        {foreach from=$posts item=i}
            {include file="views/feed.tpl"}
        {/foreach}

    </div>

    {foreach from=$categories item=category}
        <div class="ui {if $mode eq $category['id']}active {/if}tab" data-tab="{$category['name']}">
            {include file="views/sidebar.tpl"}
            {foreach from=$posts item=i}
                {include file="views/feed.tpl"}
            {/foreach}
        </div>
    {/foreach}

    <div class="ui tab" data-tab="my-list">
        <h2 class="ui dividing header">
            Accordion
            <a class="anchor" id="accordion"></a></h2>

        <h4 class="ui header">
            Behavior
        </h4>
        <table class="ui sortable celled definition table">
            <thead>
            <tr><th class="three wide"></th>
                <th class="three wide">Default</th>
                <th>Description</th>
            </tr></thead>
            <tbody>
            <tr>
                <td>exclusive</td>
                <td>true</td>
                <td>Only allow one section open at a time</td>
            </tr>
            <tr>
                <td>animateChildren</td>
                <td>true</td>
                <td>Whether child content opacity should be animated (may cause performance issues with many child elements)</td>
            </tr>
            <tr>
                <td>close nested</td>
                <td>true</td>
                <td>Close open nested accordion content when an element closes</td>
            </tr>
            <tr>
                <td>collapsible</td>
                <td>true</td>
                <td>Allow active sections to collapse</td>
            </tr>
            <tr>
                <td>duration</td>
                <td>500</td>
                <td>Duration in ms of opening animation</td>
            </tr>
            <tr>
                <td>easing</td>
                <td>easeInOutQuint</td>
                <td>Easing of opening animation. EaseInOutQuint is included with accordion, for additional options you must include <a href="http://gsgd.co.uk/sandbox/jquery/easing/">easing equations</a>.</td>
            </tr>
            </tbody>
        </table>

        <h4 class="ui header">
            Callbacks
        </h4>

        <table class="ui sortable celled definition table">
            <thead>
            <tr><th class="three wide"></th>
                <th class="three wide">Context</th>
                <th>Description</th>
            </tr></thead>
            <tbody>
            <tr>
                <td>onOpen</td>
                <td>active content</td>
                <td>Callback on element open</td>
            </tr>
            <tr>
                <td>onClose</td>
                <td>active content</td>
                <td>Callback on element close</td>
            </tr>
            <tr>
                <td>onChange</td>
                <td>active content</td>
                <td>Callback on element open or close</td>
            </tr>
            </tbody>
        </table>

        <h2 class="ui dividing header">
            Module
            <a class="anchor" id="module"></a></h2>

        <p>These settings are native to all modules, and define how the component ties content to DOM attributes, and debugging settings for the module.</p>

        <table class="ui sortable celled definition table">
            <thead>
            <tr><th></th>
                <th class="six wide">Default</th>
                <th>Description</th>
            </tr></thead>
            <tbody>
            <tr>
                <td>name</td>
                <td>Accordion</td>
                <td>Name used in log statements</td>
            </tr>
            <tr>
                <td>namespace</td>
                <td>accordion</td>
                <td>Event namespace. Makes sure module teardown does not effect other events attached to an element.</td>
            </tr>
            <tr>
                <td>selector</td>
                <td>
                    <div class="code" data-type="css">
                        selector    : {
                        accordion : '.accordion',
                        title     : '.title',
                        content   : '.content'
                        }
                    </div>
                </td>
                <td>Selectors used to find parts of a module</td>
            </tr>
            <tr>
                <td>className</td>
                <td>
                    <div class="code">
                        className : {
                        active : 'active'
                        }
                    </div>
                </td>
                <td>Class names used to determine element state</td>
            </tr>
            <tr>
                <td>debug</td>
                <td>false</td>
                <td>Debug output to console</td>
            </tr>
            <tr>
                <td>performance</td>
                <td>false</td>
                <td>Show <code>console.table</code> output with performance metrics</td>
            </tr>
            <tr>
                <td>verbose</td>
                <td>false</td>
                <td>Debug output includes all internal behaviors</td>
            </tr>
            <tr>
                <td>errors</td>
                <td colspan="2">
                    <div class="code">
                        error   : {
                        method   : 'The method you called is not defined.'
                        }
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>