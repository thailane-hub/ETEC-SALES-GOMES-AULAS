int sensor = 0;

long readUltrasonicDistance(int triggerPino, int echoPino)
{
  pinMode(triggerPino, OUTPUT);  // Limpa o gatilho
  digitalWrite(triggerPino, LOW);
  delayMicroseconds(2);
  // Define o pino do gatilho para o estado HIGH por 10 microssegundos
  digitalWrite(triggerPino, HIGH);
  delayMicroseconds(10);
  digitalWrite(triggerPino, LOW);
  pinMode(echoPino, INPUT);
  // Lê o pino de eco e retorna o tempo de viagem da onda sonora em microssegundos
  return pulseIn(echoPino, HIGH);
}

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  sensor = 0.01723 * readUltrasonicDistance(5, 6);
  Serial.println(sensor);
  delay(2000);
}