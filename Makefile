include $(SFTDEVELOPMENT)/library/ext/build/makesft
PROJECTNAME=re2
S=$(SFTDEVELOPMENT)/library/ext/src/$(PROJECTNAME)

CXXSRCS = $(S)/util/rune.cc \
	$(S)/util/strutil.cc \
	$(S)/re2/bitstate.cc \
	$(S)/re2/compile.cc \
	$(S)/re2/filtered_re2.cc \
	$(S)/re2/mimics_pcre.cc \
	$(S)/re2/nfa.cc \
	$(S)/re2/onepass.cc \
	$(S)/re2/parse.cc \
	$(S)/re2/perl_groups.cc \
	$(S)/re2/prefilter.cc \
	$(S)/re2/prefilter_tree.cc \
	$(S)/re2/re2.cc \
	$(S)/re2/regexp.cc \
	$(S)/re2/set.cc \
	$(S)/re2/simplify.cc \
	$(S)/re2/stringpiece.cc \
	$(S)/re2/tostring.cc \
	$(S)/re2/unicode_casefold.cc \
	$(S)/re2/unicode_groups.cc \
	$(S)/re2/prog.cc \
	$(S)/re2/dfa.cc
	
LIBOBJS = util/rune.o \
	util/strutil.o \
	re2/bitstate.o \
	re2/compile.o \
	re2/filtered_re2.o \
	re2/mimics_pcre.o \
	re2/nfa.o \
	re2/onepass.o \
	re2/parse.o \
	re2/perl_groups.o \
	re2/prefilter.o \
	re2/prefilter_tree.o \
	re2/re2.o \
	re2/regexp.o \
	re2/set.o \
	re2/simplify.o \
	re2/stringpiece.o \
	re2/tostring.o \
	re2/unicode_casefold.o \
	re2/unicode_groups.o \
	re2/prog.o \
	re2/dfa.o
	
LIBMODE = static

# STATIC
LIBRARY= $(LIB)/lib$(PROJECTNAME).$(SYS_ARCHIVELIBRARY)

all : $(LIBRARY)
lib : $(LIBRARY)

# STATIC
$(LIBRARY) : $(LIBOBJS)
	ar $(ARCHS) rv $@ $?
	ranlib $(ARCHS) $(LIBRARY)

rebuildlib : $(LIBOBJS)
	rm -f $(LIBRARY)
	ar $(ARCHS) rcv $(LIBRARY) $(LIBOBJS)
	ranlib $(ARCHS) $(LIBRARY)


