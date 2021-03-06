AC_PREREQ(2.68)
LT_PREREQ([2.4.2])
AC_INIT([libsing], m4_esyscmd([tr -d '\n' < VERSION]), [gapsing@mathematik.uni-kl.de])
AC_CONFIG_SRCDIR([src/libsing.h])
AC_CONFIG_HEADER([src/pkgconfig.h:cnf/pkgconfig.h.in])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([cnf])
AM_INIT_AUTOMAKE([foreign])
m4_ifdef([AM_SILENT_RULES],[AM_SILENT_RULES])
AM_MAINTAINER_MODE
LT_INIT([disable-static dlopen win32-dll])

AC_PREFIX_DEFAULT([${PWD}/src])

AC_PROG_CXX
AC_PROG_CC

## Find out what the best compiler flags are
AX_CC_MAXOPT

AC_FIND_GAP

AC_CHECK_SIZEOF([void **])

AC_CYGWIN
AM_CONDITIONAL([SYS_IS_CYGWIN], [test "$CYGWIN" = "yes"])
if test "$CYGWIN" = "yes"; then
  AC_DEFINE(SYS_IS_CYGWIN32, 1, are we on CYGWIN?)
else
  AC_DEFINE(SYS_IS_CYGWIN32, 0, are we on CYGWIN?)
fi



case "$host" in
        *-darwin* )
        AC_DEFINE(SYS_IS_DARWIN, 1, are we on DARWIN?)
        ;;
        * )
        AC_DEFINE(SYS_IS_DARWIN, 0, are we on DARWIN?)
        ;;
esac
     
## 
if test "$ac_test_CXXFLAGS" != "set"; then
  AC_LANG_PUSH([C++])
  CXXFLAGS=$CFLAGS
  AX_CHECK_COMPILER_FLAGS($CXXFLAGS, [], [
  echo ""
  echo "-----------------------------------------------------------------------"
  echo "  WARNING: The guessed best CXXFLAGS were copied from CFLAGS but don't"
  echo "  seem to work with your C++ compiler. Use ./configure CXXFLAGS=...  to"
  echo "  specify your own flags, otherwise the default (slow) compiler"
  echo "  optimisation settings will be used."
  echo "-----------------------------------------------------------------------"
  echo ""
  CXXFLAGS=""
  ])
  AC_LANG_POP([C++])
fi

AC_LIBTOOL_DLOPEN
AC_DISABLE_STATIC
AC_PROG_LIBTOOL

LB_CHECK_LIBSINGULAR
SINGULAR_PATH="$LIBSINGULAR_HOME/bin/Singular"

AC_MSG_CHECKING([for SINGULAR_PATH])
AC_MSG_RESULT($SINGULAR_PATH)

AC_SUBST(SINGULAR_PATH)

AC_CONFIG_FILES([Makefile src/Makefile SINGULARPATH])
AC_OUTPUT
