from django.db import models

class Person(models.Model):
    name = models.CharField(max_length=128)
    birth_date = models.DateTimeField(blank='true', null='true')
    death_date = models.DateTimeField(blank='true', null='true')
    nationality = models.CharField(max_length=128, blank='true', null='true')
    description = models.TextField()
    
    def __unicode__(self):
        s = self.name;
        if self.birth_date:
            s = s.join(", born on:", self.birth_date)
        if self.nationality:
            s = s.join(" in ", self.nationality)
        if self.death_date:
            s = s.join(", died on:", self.death_date)
        s.join("\n", self.description)
        
        return s;
    
class Relationship(models.Model):
    relationship_subject = models.ForeignKey(Person, related_name='relationship_subject')
    relationship_object = models.ForeignKey(Person, related_name='relationship_object')
    is_bi_directional = models.BooleanField(default='true', blank='true')
    relationship = models.TextField()