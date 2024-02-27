#create team
team add MonikAI
team empty MonikAI

#join graphic and ai
team join MonikAI @e[name=Monika]
team join MonikAI @e[name=Monika_]
team join MonikAI Alejo

#set team rules
team modify MonikAI collisionRule pushOwnTeam
team modify MonikAI seeFriendlyInvisibles false
