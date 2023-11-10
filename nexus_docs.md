There are some things you can't cover up with chain mail and shouting<br>
But I heard you mention my sword--can't you talk any louder?<br>
Don't come any closer; don't come any nearer<br>
Your insults of me can't get any clearer<br>
Oh, I just wanna hear guards talk<br>
Over-encumbered with armor being fired by guards's talk<br>
It's a more or less situation inspired by guard's talk<br>
But I can't say the words you wanna hear<br>
I suppose you're gonna have to take an arrow in the knee, right here<br>
And now guards talk<br>
And they wanna know how guards talk<br>
and they say it's not allowed (guards talk)<br>
If they say that it's so, don't you think that I'd know by now?

A [Keyword Item Distributor](https://www.nexusmods.com/skyrimspecialedition/mods/55728) mod to assign [Guard Dialogue Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/22075) keywords to many modded armors and weapons. It's a single file full of keyword distribution declarations, with no code of its own.

Why? Because GDO is fun, and it's more fun when guards also react to the weapon you took all that trouble to do the quest for / craft / find in an out-of-the-way spot.

## Coverage

Many armor mods don't need specific coverage if they use the standard game keywords to tag both the armor slot and the material used. KID can target these items as a category. For instance, any mod-added Dwemer shield can be tagged for the fancy Dwarven shield reaction. The same is true for many mod-added weapons: weapon category plus material allow us to tag with the appropriate SPIKE keyword.

Some items from mods deserve hand-selected reactions, however. An example is the *Necrotic Blade* from [Desecration](https://www.nexusmods.com/skyrimspecialedition/mods/90832), which is given the "foul" tag. Keywords are distributed to editor ids for items like this where possible, so distribution succeeds with items in collections with different form ids, and items in compacted and ESL-ified plugin files.

If something doesn't fit into the categories covered by the GDO keywords, no keywords are added to it.

KID distribution files are safe to install even if you don't have the items referenced. KID will skip over items it can't match at runtime, though it might mention the skip in its logs.

## Credits

What would this modding scene even be without PowerOf3?

## LICENSE

This mod is released under [the Parity Public License.](https://paritylicense.com) This license requires people who build on top of this mod to share their work with the community too. In Skyrim modding language, this license allows "cathedral" modding, not "parlor" modding. [The source is available on GitHub](https://github.com/ceejbot/GuardsTalk), though there is almost nothing beyond what's in the KID.ini file. I mean, have at it. Open perms so long as you have open perms on what you do.
