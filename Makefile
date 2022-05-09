TARGET = dbl

CC = g++
CFLAGS = -g

OUTDIR = ./bin
SUBDIR = example_module
OBJDIR = ./obj

INCS = $(wildcard *.h $(foreach fd, $(SUBDIR), $(fd)/*.h))
SRCS = $(wildcard *.cc $(foreach fd, $(SUBDIR), $(fd)/*.cc))
NODIR_SRC = $(notdir $(SRCS))
OBJS = $(addprefix $(OBJDIR)/, $(SRCS:cc=o))
INC_DIRS = -I./ $(addprefix -I, $(SUBDIR))

PHONY := $(TARGET)
$(TARGET): $(OBJS)
	$(CC) -o $(OUTDIR)/$@ $(OBJS)

$(OBJDIR)/%.o: %.cc $(INCS)
	mkdir -p $(@D)
	$(CC) -o $@ $(CFLAGS) -c $< $(INC_DIRS)

PHONY += clean
clean:
	rm -rf $(OUTDIR)/* $(OBJDIR)/*

PHONY += echoes
echoes:
	@echo "INC files: $(INCS)"
	@echo "SRC files: $(SRCS)"
	@echo "OBJ files: $(OBJS)"
	@echo "INC DIR: $(INC_DIRS)"

.PHONY = $(PHONY)

