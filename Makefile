
NDATA = my_ndata.zip

DATFILES := $(wildcard dat/**/*)
FILES := AUTHORS VERSION

.PHONY: clean

all: $(NDATA)

$(NDATA): $(FILES) $(DATFILES)
	zip -0r $@ $(FILES) dat/

clean: 
	$(RM) $(NDATA)
