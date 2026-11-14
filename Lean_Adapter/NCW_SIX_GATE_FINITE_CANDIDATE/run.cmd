@echo off
setlocal EnableExtensions
set "HERE=%~dp0"
set "SRC=%HERE%NCWFiniteGateCandidate.lean"
set "BUILD_LOG=%HERE%run-build.log"
set "AUDIT_LOG=%HERE%run-audit.log"

REM Runs ONLY on the user's EXTERNAL native Windows Lean + cached Mathlib checkout.
REM Absolutely no local Lean execution was performed when these files were prepared.
if not defined MATHLIB_ROOT (
    echo NCW_STATUS=CONFIG_ERROR_MATHLIB_ROOT_REQUIRED
    echo Example: set "MATHLIB_ROOT=C:\path\to\mathlib"
    exit /b 2
)
if not exist "%MATHLIB_ROOT%\lakefile.toml" (
    if not exist "%MATHLIB_ROOT%\lakefile.lean" (
        echo NCW_STATUS=CONFIG_ERROR_NOT_A_MATHLIB_LAKE_PROJECT
        exit /b 2
    )
)
if not exist "%SRC%" (
    echo NCW_STATUS=CONFIG_ERROR_SOURCE_MISSING
    exit /b 2
)
pushd "%MATHLIB_ROOT%"
call lake env lean "%SRC%" > "%BUILD_LOG%" 2>&1
set "RESULT=%ERRORLEVEL%"
popd
copy /Y "%BUILD_LOG%" "%AUDIT_LOG%" >nul

if not "%RESULT%"=="0" (
    echo NCW_STATUS=EXTERNAL_BUILD_FAIL
    echo BUILD_LOG=%BUILD_LOG%
    exit /b %RESULT%
)
findstr /I /C:"sorryAx" "%AUDIT_LOG%" >nul
if not errorlevel 1 (
    echo NCW_STATUS=EXTERNAL_AXIOM_AUDIT_FAIL_SORRYAX
    exit /b 3
)
echo NCW_STATUS=EXTERNAL_FINITE_ALGEBRA_COMPILE_CANDIDATE_PASS
echo THEOREM_LEVEL_AXIOM_AUDIT=REQUIRES_INSPECTION_OF_RUN_AUDIT_LOG
echo FULL_NCW_SIX_GATE_ROOT=NOT_FORMALIZED
echo BUILD_LOG=%BUILD_LOG%
echo AUDIT_LOG=%AUDIT_LOG%
exit /b 0
