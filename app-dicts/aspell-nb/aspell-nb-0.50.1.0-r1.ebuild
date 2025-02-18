# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ASPELL_LANG="Norwegian Bokmal"

inherit aspell-dict-r1

LICENSE="GPL-2"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ppc64 ~riscv ~s390 sparc x86"

RDEPEND="!app-dicts/aspell-no"

src_prepare() {
	default

	# Fix QA error '[..] not encoded with the UTF-8 encoding' by renaming file.
	sed -e 's/bokm'$'\345''l.alias//g' -i Makefile.pre || die
}
