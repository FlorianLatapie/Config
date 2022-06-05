@ECHO off
echo Apache Maven auto install script for Windows & echo. & echo Downloading the zip file & echo.
curl -o tmp.zip https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.zip  

echo Installation & echo.
powershell -command "Expand-Archive tmp.zip 'C:\Program Files\apache'"
setx /M PATH "%PATH%;C:\Program Files\apache\apache-maven-3.8.5\bin"
del tmp.zip

echo. & echo Installation complete, you can now use Maven from a new shell 
timeout 10