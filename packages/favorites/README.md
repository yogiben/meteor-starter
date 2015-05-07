Favoriting made easy
================

Easy favouriting/liking of docs in meteor.

`meteor add yogiben:favorites`

[See a demo](http://yogiben-favorites.meteor.com/dashboard)

### Usage ###
1) Install the package

2) Set up the subscriptions on the routes you want to use

`Meteor.subscribe('favorites')`

e.g.
```
@route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        Meteor.subscribe 'posts'
        Meteor.subscribe 'favorites'
      ]
    data: ->
      Posts: Posts.find().fetch()
```
3) Add the `favoriteButton` template to your templates, passing the `_id` of the doc as the parameter
```
{{> favoriteButton _id=_id}}
```
e.g.
```
<template name="posts">
	{{#each Posts}}
		<div class="panel panel-default">
			  <div class="panel-heading">
					<h3 class="panel-title">{{title}}</h3>
			  </div>
			  <div class="panel-body">
					{{content}}
			  </div>
			  <div class="panel-footer">
			  	{{> favoriteButton _id=_id}}
			  </div>
		</div>
	{{/each}}
</template>
```
### Helpers ###

#### Favorited docs from a colletion####
`{{Favorites collection}}`

You can easily list a user's favorites with the global helper `{{Favorites 'Posts'}}` for the `Posts` collection, for example.

You can use it inside of a loop like this:

```
<template name="favorites">
	{{#if Favorites 'Posts'}}
	<div class="panel panel-default">
		<div class="panel-heading">
				<h3 class="panel-title">Favorites</h3>
		</div>
		<div class="panel-body">
			<ul>
			{{#each Favorites 'Posts'}}
				<li>
					<a>{{title}}</a>
				</li>
			{{/each}}
			</ul>
		</div>
	</div>
	{{/if}}
</template>
```

#### Favorite count####
`{{favoriteCount _id}}`

This will return the number of times the doc has been favorited.

#### Order by favorites ####
`{{orderByFavorites docs}}` where `docs` is an array of mongo docs.

This will return the docs ordered by the number of times that they have been favorited.

```
<template name="posts">
	{{#each orderByFavorites Posts}}
		<div class="panel panel-default">
			  <div class="panel-heading">
					<h3 class="panel-title">{{title}}</h3>
			  </div>
			  <div class="panel-body">
					{{content}}
			  </div>
			  <div class="panel-footer">
			  	{{> favoriteButton _id=_id}}
			  </div>
		</div>
	{{/each}}
</template>
```

### Customising ###
You can created your own buttons and replace the default templates. To do this, you should use the separate [template-extension](https://github.com/aldeed/meteor-template-extension) package.

1) Install with `meteor add aldeed:template-extension`

2) Create new button templates based on this markup
```
<template name="myFavoriteButtonFavorited">
	<a class="favorite-button" doc="{{_id}}"><i class="fa fa-thumbs-up"></i> Favorite</a>
</template>

<template name="myFavoriteButtonNotFavorited">
	<a class="favorite-button" doc="{{_id}}"><i class="fa fa-thumbs-o-up"></i> Favorite</a>
</template>
```

3) Replace the existing button templates with the `replace` method provided by the package

```
Template.myFavoriteButtonFavorited.replaces("favoriteButtonFavorited")

Template.myFavoriteButtonNotFavorited.replaces("favoriteButtonNotFavorited")
```
