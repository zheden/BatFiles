@Setlocal EnableDelayedExpansion
@SET _tempvar=12


@for /f "tokens=1,2,3 delims= " %%a in ('more test.h') do @(  
	set _tempvar=%%c
	if  "%%b"=="VSUBMINOR" (
		@set /a _tempvar+=1
		)
	@echo %%a %%b !_tempvar! >> test2.h

	)  
del test.h
ren test2.h test.h
