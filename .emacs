;; -*- mode: elisp -*-
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

;; Weird fix for Linux
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(gnutls-algorithm-priority "normal:-vers-tls1.3")
 '(inhibit-startup-screen t)
 '(org-agenda-files
   (quote
    ("/Users/lucassawade/org/birthdays.org" "/Users/lucassawade/org/archive.org" "/Users/lucassawade/org/GF.org" "/Users/lucassawade/org/agenda.org")))
 '(org-capture-templates
   (quote
    (("t" "timeblock" entry
      (file+function "~/org/timeblock.org" org-reverse-datetree-goto-date-in-file)
      "**** %? 
<%<%Y-%m-%d %a %H:00>>--<%<%Y-%m-%d %a %H:00>>")
     ("T" "full-timeblock" entry
      (file+function "~/org/timeblock.org" org-reverse-datetree-goto-date-in-file)
      "**** Check-in 
<%<%Y-%m-%d %a 8:00>>--<%<%Y-%m-%d %a 8:30>>
- [ ] Fill out time blocks
- [ ] Check emails
**** %? 
<%<%Y-%m-%d %a 8:30>>--<%<%Y-%m-%d %a 10:00>>
**** 
<%<%Y-%m-%d %a 10:00>>--<%<%Y-%m-%d %a 12:00>>
**** Lunch 
<%<%Y-%m-%d %a 12:00>>--<%<%Y-%m-%d %a 13:00>>
**** 
<%<%Y-%m-%d %a 13:00>>--<%<%Y-%m-%d %a 15:00>>
**** 
<%<%Y-%m-%d %a 15:00>>--<%<%Y-%m-%d %a 17:00>>
**** 
<%<%Y-%m-%d %a 17:00>>--<%<%Y-%m-%d %a 19:00>>"))))
 '(org-modules
   (quote
    (ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus ol-info ol-irc ol-mhe ol-rmail ol-w3m org-mac-link)))
 '(org-refile-targets
   (quote
    ((nil :maxlevel . 9)
     (org-agenda-files :maxlevel . 9))))
 '(package-selected-packages (quote (org-modern go-autocomplete)))
 '(transient-mark-mode t))

;; _____________ DONT START SERVER IF already Running __________________________

(require 'server)
(or (server-running-p)
    (server-start))
;; _____________________________________________________________________________

;; _____________ TAB VIEW MODE _________________________________________________
;; (tab-bar-mode nil)
;; (global-set-key [M-left] 'tabbar-backward-tab)
;; (global-set-key [M-right] 'tabbar-forward-tab)
;; _____________________________________________________________________________

;; _____________ AUTO-RELOAD BUFFERS IF ONE BUFFER IS SAVED ____________________
(global-auto-revert-mode t)
;; _____________________________________________________________________________

;; _____________ Package installation repos ____________________________________
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/elisp/")
;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  ;; (package-refresh-contents)		
  )

(add-to-list 'package-archives '("melpa-stable" . "http://www.mirrorservice.org/sites/melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
   

;;________________ WINDOW SIZE & SETUP ________________________________________


;; (when window-system
;;   (set-frame-position (selected-frame) 0 0)
;;   (set-frame-size (selected-frame) 91 63))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 160 :family "Source Code Pro")))))

;; ____________________________________________________________________________


;;________________ ORG MODE ___________________________________________________

;; Set files to be tracked by the agenda
;;; Agenda settings

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(inhibit-startup-screen t)
 '(org-agenda-files
   '("~/org/birthdays.org" "~/org/archive.org" "~/org/GF.org" "~/org/timeblock.org" "~/org/RF.org" "~/org/calendar.org"))
 '(org-capture-templates
   '(("t" "timeblock" entry
      (file+function "~/org/timeblock.org" org-reverse-datetree-goto-date-in-file)
      "**** %? 
<%<%Y-%m-%d %a %H:00>>--<%<%Y-%m-%d %a %H:00>>")
     ("T" "full-timeblock" entry
      (file+function "~/org/timeblock.org" org-reverse-datetree-goto-date-in-file)
      "**** Check-in 
<%<%Y-%m-%d %a 8:00>>--<%<%Y-%m-%d %a 8:30>>
- [ ] Fill out time blocks
- [ ] Check emails
- [ ] Check github notifications
**** %? 
<%<%Y-%m-%d %a 8:30>>--<%<%Y-%m-%d %a 10:00>>
**** 
<%<%Y-%m-%d %a 10:00>>--<%<%Y-%m-%d %a 12:00>>
**** Lunch 
<%<%Y-%m-%d %a 12:00>>--<%<%Y-%m-%d %a 13:00>>
**** 
<%<%Y-%m-%d %a 13:00>>--<%<%Y-%m-%d %a 15:00>>
**** 
<%<%Y-%m-%d %a 15:00>>--<%<%Y-%m-%d %a 17:00>>
**** Check-out
<%<%Y-%m-%d %a 17:00>>--<%<%Y-%m-%d %a 19:00>>
- [ ] Check emails
- [ ] Review hours
- [ ] Check github notifications")))
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus ol-info ol-irc ol-mhe ol-rmail ol-w3m org-mac-link))
 '(org-refile-targets '((nil :maxlevel . 9) (org-agenda-files :maxlevel . 9)))
 '(package-selected-packages '(org-reverse-datetree ## org-contrib org auctex))
 '(transient-mark-mode t))

;; Sorting the Agenda in terms of Timeblocks
(setq org-agenda-sorting-strategy '((agenda habit-down time-up ts-up
     priority-down category-keep)
  (todo priority-down category-keep)
  (tags priority-down category-keep)
  (search category-keep)))

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Set agenda in current window
(setq org-agenda-window-setup 'current-window)

;; Enable transient mark mode
(transient-mark-mode 1)

;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)  

;; Todo keywords. Change these to your liking
  (setq org-todo-keywords
        '((sequence "TODO(t)" "NEXT(n)" "WAITING(w)" "DISTRACTION"  "|" "DONE(d)" "CANCELLED(c)")))


;; Keybindings
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(global-set-key (kbd "C-c t") #'org-todo)

;; Setting Up Capture
(setq org-default-notes-file "~/org/projects.org")

;; Clocking
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
(setq org-log-done t)

;; Grabbing links
;; (require 'org-contrib)
;; (add-hook 'org-mode-hook (lambda () 
;;   (define-key org-mode-map (kbd "C-c g") 'org-mac-grab-link)))


;; (defun timeblock-hook ()
;;   (if (string= (org-capture-get :description)
;;                "timeblock")     ;Must match the description in the template
;;       (org-schedule 0 (format-time-string "%Y-%m-%d"))))

;; (add-hook 'org-capture-before-finalize-hook 'timeblock-hook)


;; Line wrap
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; Make lines always fit into the screen
(add-hook 'org-mode-hook 'visual-line-mode)

;; Visual indent
(add-hook 'org-mode-hook 'org-indent-mode)

;; Enables deeper headers and other files for org-mode-refile

;;; Agenda settings
(setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
(setq org-refile-use-outline-path t)                  ; Show full paths for refiling

;; If no file is selected open the org mode agenda
;; (add-hook 'after-init-hook 'org-agenda-list)
;; (progn
;;   (org-agenda nil "a")
;;   (org-agenda-day-view))

;; ____________________________________________________________________________


;; turn on color code support in shell mode
(ansi-color-for-comint-mode-on)

;; turn off error bell 
(setq ring-bell-function 'ignore)

(setq comint-prompt-read-only t)

;; set variables



;; Set how to switch between windows
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)


;; Toggle autofillMode (hardlinewarp)
(global-set-key (kbd "C-c q") 'auto-fill-mode)


;; YAML FILE support
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))


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

;; Stop creating ~ files or # files
(setq make-backup-files nil) ; stop creating ~ files

;; enable matlab mode

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

