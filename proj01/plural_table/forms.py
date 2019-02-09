from django import forms
from .models import Author
from .models import Work

class AuthorForm(forms.ModelForm):
	class Meta:
		model = Author
		fields = ['id_author','name_jp','name_en','date_birth','date_death']
#
class WorkForm(forms.ModelForm):
	class Meta:
		model = Work
		fields = ['id_work','title_jp','title_en','id_author']
#
