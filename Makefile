EMACS=emacs
ORG_CONFIG_FILE=publish_config.el
EMACS_OPTS=--batch -l ~/.emacs --eval "(load-file \"$(ORG_CONFIG_FILE)\")" -f myweb-publish

DEST_HOST='user@host:public_html/site_root/'
OUTPUT_DIR=output

all: html upload

html:
	@echo "Generating HTML..."
	@mkdir -p $(OUTPUT_DIR)
	@$(EMACS) $(EMACS_OPTS)
	@echo "HTML generation done"

upload: clean_bak
	@echo "Uploading files..."
	@cd $(OUTPUT_DIR) && scp -r . $(DEST_HOST) && cd ..
	@echo "Uploading done"

clean: clean_output clean_bak

clean_output:
	@rm -rf $(OUTPUT_DIR)

clean_bak:
	@find . | grep ~$$ | while read l; do rm $$l; done
