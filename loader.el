;;; loader.el --- lisp loading tools

;; Copyright (C) 2013  Nic Ferrier

;; Author: Nic Ferrier <nferrier@ferrier.me.uk>
;; Keywords: lisp

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Just a few useful loading tools for loading lisp files

;;; Code:

(defun loader-load (local-file)
  "Load the LOCAL-FILE from the context directory.

The context directory is the directory of the current load file."
  (let ((load-path
         (append load-path (list
                            (file-name-directory
                             (or (buffer-file-name)
                                 load-file-name
                                 default-directory))))))
    (load local-file)))

(provide 'loader)

;;; loader.el ends here
