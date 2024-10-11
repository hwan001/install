# 시스템 업데이트
sudo apt update
sudo apt upgrade -y

# Java 설치 (Jenkins에 필요)
sudo apt install openjdk-17-jdk -y

# Jenkins 저장소 키 추가
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Jenkins 저장소 추가
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# 시스템 업데이트 및 Jenkins 설치
sudo apt update
sudo apt install jenkins -y

# Jenkins 시작 및 부팅 시 자동 시작 설정
sudo systemctl start jenkins
sudo systemctl enable jenkins

# 설치 확인
sudo systemctl status jenkins