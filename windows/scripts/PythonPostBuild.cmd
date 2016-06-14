set SOLUTION_DIR=%~1%
set OUTPUT_DIR=%~2%

echo PythonPostBuild.cmd : copy python generated scripts to output.

copy /y "%SOLUTION_DIR%..\python\caffe\*.py" "%OUTPUT_DIR%pycaffe\caffe"
echo test
copy /y "%SOLUTION_DIR%..\python\*.py" "%OUTPUT_DIR%pycaffe"
echo test
move /y "%OUTPUT_DIR%_caffe.*" "%OUTPUT_DIR%pycaffe\caffe"
echo test
copy /y "%OUTPUT_DIR%\*.dll" "%OUTPUT_DIR%pycaffe\caffe"
echo test