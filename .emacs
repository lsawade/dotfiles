;; translate control sequences as text is inserted in shell mode
;; ____________________________________________________________________________
;; Aquamacs custom-file warning:
;; Warning: After loading this .emacs file, Aquamacs will also load
;; customizations from `custom-file' (customizations.el). Any settings there
;; will override those made here.
;; Consider moving your startup settings to the Preferences.el file, which
;; is loaded after `custom-file':
;; ~/Library/Preferences/Aquamacs Emacs/Preferences
;; _____________________________________________________________________________

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)  

;; turn on color code support in shell mode
(ansi-color-for-comint-mode-on)

;; turn off error bell 
(setq ring-bell-function 'ignore)

(setq comint-prompt-read-only t)

;; set variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (auctex)))
 '(transient-mark-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Set how to switch between windows
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)


;; Toggle autofillMode (hardlinewarp)
(global-set-key (kbd "C-c q") 'auto-fill-mode)

;; Turn on auto complete


;; Check whether auctex is installed	


;; AucTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)


(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("lualatex" "lualatex -synctex=1 --interaction=nonstopmode %s" TeX-run-TeX nil t
      :help "Run lualatex on file")
    TeX-command-list)))

(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("xelatex" "xelatex -pdf %s" TeX-run-TeX nil t
      :help "Run xelatex on file")
    TeX-command-list)))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "lualatex")))


;; Use Skim as viewer, enable source <-> PDF sync
;; make latexmk available via C-c C-c
;; Note: SyncTeX is setup via ~/.latexmkrc (see below
(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
      :help "Run latexmk on file")
    TeX-command-list)))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))

;; use Skim as default pdf viewer
;; Skim's displayline is used for forward search (from .tex to .pdf)
;; option -b highlights the current line; option -g opens Skim in the background  
(setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
(setq TeX-view-program-list
     '(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")))

(server-start); start emacs in server mode so that skim can talk to it


;; Stop creating ~ files or # files
(setq make-backup-files nil) ; stop creating ~ files

;; enable matlab mode
(add-to-list 'load-path "~/.emacs.d/lisp")
(autoload 'matlab-mode "matlab" "Enter Matlab mode." t)
  (setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
  (autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)
;;
;; User Level customizations (You need not use them all):
;;   (setq matlab-indent-function t)	; if you want function bodies indented
;;   (setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save
;;   (defun my-matlab-mode-hook ()
;;     (setq fill-column 76))		; where auto-fill should wrap
;;   (add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
;;   (defun my-matlab-shell-mode-hook ()
;;	'())
;;   (add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)
