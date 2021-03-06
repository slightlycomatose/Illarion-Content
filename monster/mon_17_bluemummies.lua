require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("monster.base.kills")
require("base.arena")
require("base.messages");
module("monster.mon_17_bluemummies", package.seeall)


function ini(Monster)

init=true;
monster.base.quests.iniQuests();
killer={}; --A list that keeps track of who attacked the monster last

--Random Messages

msgs = base.messages.Messages();
msgs:addMessage("#me atmet laut ein und aus.", "#me takes deep breaths.");
msgs:addMessage("#me ist mit Wunden �bers�ht", "#me is littered with wounds.");
msgs:addMessage("#me macht �chzende Ger�usche.", "#me makes groaning noises.");
msgs:addMessage("#me spuckt etwas Blut auf den Boden.", "#me spits out some blood.");
msgs:addMessage("#me starrt ins Leere.", "#me stares into oblivion.");
msgs:addMessage("#me st�hnt unter Schmerzen.", "#me moans with pain.");
msgs:addMessage("#me torkelt.", "#me staggers.");
msgs:addMessage("#me wackelt etwas unsicher.", "#me is a bit unsteady on its feet.");
msgs:addMessage("Hiiirne!", "Braaains!");
msgs:addMessage("Komm... zu... uns...", "Join... us...");
msgs:addMessage("#me f�hrt sich mit einer klauenhaften Hand murmelnd �ber den pilzbefallenen Kopf, ehe er ein schl�rfendes Ger�usch von sich gibt.", "#me runs with claw-like hands over its fungus-stricken head as it makes a shuffling noise.");
msgs:addMessage("#me weist einige schwere Wunden auf, weshalb er nur schwerf�llig vorw�rts kommt. Als er allerdings die zerfallende Nase reckt, scheint mehr 'Leben' in ihn zur�ckzukehren.", "#me has severe wounds, it moves very slowly. But as it stretches its disintegrating nose, more 'life' seems to come back into it.");
msgs:addMessage("#me tropft dicklicher Speichel aus dem Mundwinkel und seine milchigen Augen starren tr�bsinnig drein, w�hrend ihm unverst�ndliche Worte entfl�uchen.", "#me drops syrupy saliva from its mouth and its eyes stare gloomily as it speaks unintelligible words.");
msgs:addMessage("#me st�hnt schwer und beugt sich vorn�ber, eine schwarze Fl�ssigkeit zu Boden spuckend. Danach richtet er sich wieder auf und haftet den Blick gebannt auf das Opfer.", "#me groans heavily and leans forward, spitting a black liquid on the floor. Then it straightens up and affixes its eyes on the victim.");

end

function enemyNear(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    if math.random(1,10) == 1 then
        monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while
    end
	
    return false
end

function enemyOnSight(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while

    if monster.base.drop.DefaultSlowdown( Monster ) then
        return true
    else
        return false
    end
end

function onAttacked(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end
    monster.base.kills.setLastAttacker(Monster,Enemy)
    killer[Monster.id]=Enemy.id; --Keeps track who attacked the monster last
end

function onCasted(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end
    monster.base.kills.setLastAttacker(Monster,Enemy)
    killer[Monster.id]=Enemy.id; --Keeps track who attacked the monster last
end

function onDeath(Monster)

    if base.arena.isArenaMonster(Monster) then
        return
    end

	
    if killer and killer[Monster.id] ~= nil then

        murderer=getCharForId(killer[Monster.id]);
    
        if murderer then --Checking for quests

            monster.base.quests.checkQuest(murderer,Monster);
            killer[Monster.id]=nil;
            murderer=nil;

        end
    end
    
    monster.base.drop.ClearDropping();
    local MonID=Monster:getMonsterType();

if (MonID==171) then --Mummiefied Priest, Level: 3, Armourtype: light, Weapontype: slashing

        --Category 1: Cloth

        local done=monster.base.drop.AddDropItem(177,1,30,(100*math.random(2,3)+math.random(22,33)),0,1); --yellow cloth
        if not done then done=monster.base.drop.AddDropItem(55,1,10,(100*math.random(2,3)+math.random(22,33)),0,1); end --green cloth
        if not done then done=monster.base.drop.AddDropItem(178,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --white cloth
        if not done then done=monster.base.drop.AddDropItem(175,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --black cloth
        if not done then done=monster.base.drop.AddDropItem(176,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --grey cloth

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(63,1,30,(100*math.random(2,3)+math.random(22,33)),0,2); --entrails
        if not done then done=monster.base.drop.AddDropItem(2746,1,10,(100*math.random(2,3)+math.random(22,33)),0,2); end --razor blade
        if not done then done=monster.base.drop.AddDropItem(1858,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --goblet
        if not done then done=monster.base.drop.AddDropItem(223,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --iron goblet
        if not done then done=monster.base.drop.AddDropItem(1840,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --copper goblet

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(78,1,30,(100*math.random(2,3)+math.random(22,33)),0,3); --short sword
        if not done then done=monster.base.drop.AddDropItem(1,1,10,(100*math.random(2,3)+math.random(22,33)),0,3); end --serinjah sword
        if not done then done=monster.base.drop.AddDropItem(2757,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --scimitar
        if not done then done=monster.base.drop.AddDropItem(445,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --wooden sword
        if not done then done=monster.base.drop.AddDropItem(2711,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --barbarian axe

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(20,60),100,333,0,4); --copper coins


    elseif (MonID==172) then --Mummiefied templeservant, Level: 2, Armourtype: light, Weapontype: slashing

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(174,1,30,(100*math.random(1,2)+math.random(11,22)),0,1); --red cloth
        if not done then done=monster.base.drop.AddDropItem(179,1,10,(100*math.random(1,2)+math.random(11,22)),0,1); end --blue cloth
        if not done then done=monster.base.drop.AddDropItem(178,1,1,(100*math.random(1,2)+math.random(11,22)),0,1); end --white cloth
        if not done then done=monster.base.drop.AddDropItem(175,1,1,(100*math.random(1,2)+math.random(11,22)),0,1); end --black cloth
        if not done then done=monster.base.drop.AddDropItem(176,1,1,(100*math.random(1,2)+math.random(11,22)),0,1); end --grey cloth

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(63,1,30,(100*math.random(1,2)+math.random(11,22)),0,2); --entrails
        if not done then done=monster.base.drop.AddDropItem(2031,1,10,(100*math.random(1,2)+math.random(11,22)),0,2); end --plate
        if not done then done=monster.base.drop.AddDropItem(1858,1,1,(100*math.random(1,2)+math.random(11,22)),0,2); end --goblet
        if not done then done=monster.base.drop.AddDropItem(223,1,1,(100*math.random(1,2)+math.random(11,22)),0,2); end --iron goblet
        if not done then done=monster.base.drop.AddDropItem(1840,1,1,(100*math.random(1,2)+math.random(11,22)),0,2); end --copper goblet

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(445,1,30,(100*math.random(1,2)+math.random(11,22)),0,3); --wooden sword
        if not done then done=monster.base.drop.AddDropItem(2757,1,10,(100*math.random(1,2)+math.random(11,22)),0,3); end --scimitar
        if not done then done=monster.base.drop.AddDropItem(1,1,1,(100*math.random(1,2)+math.random(11,22)),0,3); end --serinjah sword
        if not done then done=monster.base.drop.AddDropItem(78,1,1,(100*math.random(1,2)+math.random(11,22)),0,3); end --short sword
        if not done then done=monster.base.drop.AddDropItem(2711,1,1,(100*math.random(1,2)+math.random(11,22)),0,3); end --barbarian axe

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(10,30),100,333,0,4); --copper coins
		
		
		elseif (MonID==173) then --Mummiefied highpriest, Level: 4, Armourtype: light, Weapontype: concussion

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(55,1,30,(100*math.random(3,4)+math.random(33,44)),0,1); --green cloth
        if not done then done=monster.base.drop.AddDropItem(179,1,10,(100*math.random(3,4)+math.random(33,44)),0,1); end --blue cloth
        if not done then done=monster.base.drop.AddDropItem(174,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --red cloth
        if not done then done=monster.base.drop.AddDropItem(178,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --white cloth
        if not done then done=monster.base.drop.AddDropItem(176,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --grey cloth

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(63,1,30,(100*math.random(3,4)+math.random(33,44)),0,2); --entrails
        if not done then done=monster.base.drop.AddDropItem(236,1,10,(100*math.random(3,4)+math.random(33,44)),0,2); end --gold ingot
        if not done then done=monster.base.drop.AddDropItem(224,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --golden goblet
        if not done then done=monster.base.drop.AddDropItem(399,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --candle
        if not done then done=monster.base.drop.AddDropItem(1840,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --copper goblet

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(2664,1,30,(100*math.random(3,4)+math.random(33,44)),0,3); --club
        if not done then done=monster.base.drop.AddDropItem(230,1,10,(100*math.random(3,4)+math.random(33,44)),0,3); end --mace
        if not done then done=monster.base.drop.AddDropItem(231,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --morning star
        if not done then done=monster.base.drop.AddDropItem(2737,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --morning star
        if not done then done=monster.base.drop.AddDropItem(226,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --warhammer

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(30,90),100,333,0,4); --copper coins

    end
    monster.base.drop.Dropping(Monster);
end
