# ------------------------------------------------------------------
#
#	plural_table/views.py
#
#						Feb/09/2019
#
# ------------------------------------------------------------------
import sys

from django.shortcuts import render
from django.shortcuts import redirect

from django.http import HttpResponse
from .models import Author
from .models import Work
from .forms import AuthorForm
from .forms import WorkForm

# ------------------------------------------------------------------
def index(request):
	params = {
			'title': 'Works',
			'message': 'All Works',
			'form': WorkForm(),
			'data': [],
		}
#
	array_aa = Work.objects.all().order_by('id_author').values()
	array_bb = []
	for unit in array_aa:
		unit_bb = dict(unit)
		unit_bb['name_jp'] = ""
		unit_bb['name_en'] = ""
		id_author = unit['id_author']
		try:
			author = Author.objects.get(id_author=id_author)
			print(id_author,author.name_jp,author.name_en)
			unit_bb['name_jp'] = author.name_jp
			unit_bb['name_en'] = author.name_en
		except Exception as ee:
			sys.stderr.write("*** error *** in Author.objects.get ***\n")
			sys.stderr.write(str(ee) + "\n")
#
		array_bb.append(unit_bb)
#
#	params['data'] = array_bb[:10]
	params['data'] = array_bb
#
	return render(request,'plural_table/index.html',params)
#
# ------------------------------------------------------------------
def author(request):
	params = {
			'title': 'Author',
			'message': 'All Author',
			'form': AuthorForm(),
			'data': [],
		}
#
	params['data'] = Author.objects.all()
#
	return render(request,'plural_table/author.html',params)
#
# ------------------------------------------------------------------
def work(request):
	params = {
			'title': 'Work',
			'message': 'All Work',
			'form': WorkForm(),
			'data': [],
		}
#
	params['data'] = Work.objects.all()
#
	return render(request,'plural_table/work.html',params)
#
# ------------------------------------------------------------------
def author_create(request):
	params = {
		'title': 'Author',
		'form': AuthorForm(),
	}

	if(request.method == 'POST'):
		sys.stderr.write("*** create *** POST ***\n")
		obj = Author()
		author = AuthorForm(request.POST, instance=obj)
		author.save()
		return redirect(to='/plural_table/author')
	else:
		sys.stderr.write("*** create *** else ***\n")
#
	return render(request,'plural_table/author_create.html',params)
#
# ------------------------------------------------------------------
def author_edit(request,num):
	obj = Author.objects.get(id=num)

	if(request.method == 'POST'):
		sys.stderr.write("*** edit *** POST ***\n")
		author = AuthorForm(request.POST, instance=obj)
		author.save()
		return redirect(to='/plural_table/author')
	else:
		sys.stderr.write("*** edit *** else ***\n")
#
	params = {
		'title': 'Author',
		'id': num,
		'form': AuthorForm(instance=obj),
	}

	return render(request,'plural_table/author_edit.html',params)
#
# ------------------------------------------------------------------
def author_delete(request,num):
	author = Author.objects.get(id=num)
#
	if(request.method == 'POST'):
		sys.stderr.write("*** delete *** POST ***\n")
		author.delete()
		return redirect(to='/plural_table/author')
	else:
		sys.stderr.write("*** delete *** else ***\n")
#
	params = {
		'title': 'Author',
		'id': num,
		'obj': author,
	}

	return render(request,'plural_table/author_delete.html',params)
#
# ------------------------------------------------------------------
def work_create(request):
	params = {
		'title': 'Work',
		'form': WorkForm(),
	}

	if(request.method == 'POST'):
		sys.stderr.write("*** create *** POST ***\n")
		obj = Work()
		work = WorkForm(request.POST, instance=obj)
		work.save()
		return redirect(to='/plural_table/work')
	else:
		sys.stderr.write("*** create *** else ***\n")
#
	return render(request,'plural_table/work_create.html',params)
#
# ------------------------------------------------------------------
def work_edit(request,num):
	obj = Work.objects.get(id=num)

	if(request.method == 'POST'):
		sys.stderr.write("*** edit *** POST ***\n")
		work = WorkForm(request.POST, instance=obj)
		work.save()
		return redirect(to='/plural_table/work')
	else:
		sys.stderr.write("*** edit *** else ***\n")
#
	params = {
		'title': 'Work',
		'id': num,
		'form': WorkForm(instance=obj),
	}

	return render(request,'plural_table/work_edit.html',params)
#
# ------------------------------------------------------------------
def work_delete(request,num):
	work = Work.objects.get(id=num)
#
	if(request.method == 'POST'):
		sys.stderr.write("*** delete *** POST ***\n")
		work.delete()
		return redirect(to='/plural_table/work')
	else:
		sys.stderr.write("*** delete *** else ***\n")
#
	params = {
		'title': 'Work',
		'id': num,
		'obj': work,
	}

	return render(request,'plural_table/work_delete.html',params)
#
# ------------------------------------------------------------------
