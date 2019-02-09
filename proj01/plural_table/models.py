from django.db import models

class Author(models.Model):
    id_author = models.CharField(max_length=10)
    name_jp = models.CharField(max_length=10)
    name_en = models.CharField(max_length=20)
 
    def __str__(self):
        return '&lt;Author:id =' + str(self.id) + ',' + self.name_jp + '(' + str(self.name_en) + ')&gt;'
 
 
class Work(models.Model):
    id_work = models.CharField(max_length=10)
    title_jp = models.CharField(max_length=50)
    title_en = models.CharField(max_length=50)
    id_author = models.CharField(max_length=10)
 
    def __str__(self):
        return '&lt;Work:id=' + str(self.id) + ', ' + self.title_jp + '(' + str(self.title_en) + ')&gt;'
 
    class Meta:
        ordering = ('id_work',)
