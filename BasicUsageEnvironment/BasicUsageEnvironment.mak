# SlickEdit generated file.  Do not edit this file except in designated areas.

# Make command to use for dependencies
MAKE=make
RM=rm
MKDIR=mkdir

# -----Begin user-editable area-----

# -----End user-editable area-----

# If no configuration is specified, "Debug" will be used
ifndef CFG
CFG=Debug
endif

#
# Configuration: Debug
#
ifeq "$(CFG)" "Debug"
OUTDIR=Debug
OUTFILE=$(OUTDIR)/BasicUsageEnvironment.a
CFG_INC=-Iinclude -I../UsageEnvironment/include \
	-I../groupsock/include 
CFG_LIB=-L/home/andyaoe/Projects/SipClient/UsageEnvironment/Debug/ \
	-lUsageEnvironment 
CFG_OBJ=
COMMON_OBJ=$(OUTDIR)/BasicHashTable.o $(OUTDIR)/BasicTaskScheduler.o \
	$(OUTDIR)/BasicTaskScheduler0.o $(OUTDIR)/BasicUsageEnvironment.o \
	$(OUTDIR)/BasicUsageEnvironment0.o $(OUTDIR)/DelayQueue.o 
OBJ=$(COMMON_OBJ) $(CFG_OBJ)
ALL_OBJ=$(OUTDIR)/BasicHashTable.o $(OUTDIR)/BasicTaskScheduler.o \
	$(OUTDIR)/BasicTaskScheduler0.o $(OUTDIR)/BasicUsageEnvironment.o \
	$(OUTDIR)/BasicUsageEnvironment0.o $(OUTDIR)/DelayQueue.o \
	-L/home/andyaoe/Projects/SipClient/UsageEnvironment/Debug/ \
	-lUsageEnvironment 

COMPILE=g++ -c    -g -o "$(OUTDIR)/$(*F).o" $(CFG_INC) "$<"
LINK=ar -rs  "$(OUTFILE)" $(OBJ)

# Pattern rules
$(OUTDIR)/%.o : %.cpp
	$(COMPILE)

# Build rules
all: $(OUTFILE)

$(OUTFILE): $(OUTDIR)  $(OBJ)
	$(LINK)
	-mv Debug/BasicUsageEnvironment.a Debug/libBasicUsageEnvironment.a

$(OUTDIR):
	$(MKDIR) -p "$(OUTDIR)"

# Rebuild this project
rebuild: cleanall all

# Clean this project
clean:
	$(RM) -f $(OUTFILE)
	$(RM) -f $(OBJ)

# Clean this project and all dependencies
cleanall: clean
endif

#
# Configuration: Release
#
ifeq "$(CFG)" "Release"
OUTDIR=Release
OUTFILE=$(OUTDIR)/BasicUsageEnvironment.a
CFG_INC=-Iinclude -I../UsageEnvironment/include \
	-I../groupsock/include 
CFG_LIB=-L/home/andyaoe/Projects/SipClient/UsageEnvironment/Debug/ \
	-lUsageEnvironment 
CFG_OBJ=
COMMON_OBJ=$(OUTDIR)/BasicHashTable.o $(OUTDIR)/BasicTaskScheduler.o \
	$(OUTDIR)/BasicTaskScheduler0.o $(OUTDIR)/BasicUsageEnvironment.o \
	$(OUTDIR)/BasicUsageEnvironment0.o $(OUTDIR)/DelayQueue.o 
OBJ=$(COMMON_OBJ) $(CFG_OBJ)
ALL_OBJ=$(OUTDIR)/BasicHashTable.o $(OUTDIR)/BasicTaskScheduler.o \
	$(OUTDIR)/BasicTaskScheduler0.o $(OUTDIR)/BasicUsageEnvironment.o \
	$(OUTDIR)/BasicUsageEnvironment0.o $(OUTDIR)/DelayQueue.o \
	-L/home/andyaoe/Projects/SipClient/UsageEnvironment/Debug/ \
	-lUsageEnvironment 

COMPILE=g++ -c   -o "$(OUTDIR)/$(*F).o" $(CFG_INC) "$<"
LINK=ar -rs  "$(OUTFILE)" $(OBJ)

# Pattern rules
$(OUTDIR)/%.o : %.cpp
	$(COMPILE)

# Build rules
all: $(OUTFILE)

$(OUTFILE): $(OUTDIR)  $(OBJ)
	$(LINK)
	-mv Debug/BasicUsageEnvironment.a Debug/libBasicUsageEnvironment.a

$(OUTDIR):
	$(MKDIR) -p "$(OUTDIR)"

# Rebuild this project
rebuild: cleanall all

# Clean this project
clean:
	$(RM) -f $(OUTFILE)
	$(RM) -f $(OBJ)

# Clean this project and all dependencies
cleanall: clean
endif
