# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


SkillActivity.destroy_all
UserActivity.destroy_all
User.destroy_all
Skill.destroy_all
Activity.destroy_all


user1 = User.create(username: 'Mike', password: 'Mike')
user2 = User.create(username: 'Matt', password: 'Matt')

skill1 = Skill.create(name: 'Archery', skill_type: 'combat', description: 'Archery is the art, sport, practice, or skill of using a bow to shoot arrows. The word comes from the Latin arcus. Historically, archery has been used for hunting and combat. In modern times, it is mainly a competitive sport and recreational activity. A person who participates in archery is typically called an archer or a bowman, and a person who is fond of or an expert at archery is sometimes called a toxophilite.')
skill2 = Skill.create(name: 'Cooking', skill_type: 'survival', description: 'Cooking or cookery is the art, technology, science and craft of preparing food for consumption. Cooking techniques and ingredients vary widely across the world, from grilling food over an open fire to using electric stoves, to baking in various types of ovens, reflecting unique environmental, economic, and cultural traditions and trends. Types of cooking also depend on the skill levels and training of cooks.')
skill3 = Skill.create(name: 'Swordsmanship', skill_type: 'combat', description: 'Swordsmanship or sword fighting refers to the skills of a swordsman, a person versed in the art of the sword. The term is modern, and as such was mainly used to refer to smallsword fencing, but by extension it can also be applied to any martial art involving the use of a sword.')
skill4 = Skill.create(name: 'Dexterity', skill_type: 'combat', description: 'dodge things.')

activity1 = Activity.create(name: 'Bow Crafting video', description: 'how to make cool ass bows for beginners')
activity2 = Activity.create(name: 'Fencing class', description: 'Learn some new fencing techniques with Juan at these intermediate classes')
activity3 = Activity.create(name: 'Tasty BBQ burgers video', description: 'Quick guide to cooking burgers on a barbeque')


# defines the skills (and difficulty of skill) that an activity has
SkillActivity.create(activity: activity2, skill: skill3, level: 2) 
SkillActivity.create(activity: activity3, skill: skill2, level: 1)
SkillActivity.create(activity: activity1, skill: skill1, level: 1) 
SkillActivity.create(activity: activity2, skill: skill4, level: 1) 

# creating user activities 
user2.activities << activity2
user2.activities << activity3
user1.activities << activity1



