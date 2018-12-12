boolean collisionEnemy(int eCenterX, int eCenterY, int halfDimension){
  for (int i = 0; i < enemies.size(); i++){
    Enemy tempEnemy = enemies.get(i);
    if (abs(tempEnemy.center.x - eCenterX) > tempEnemy.halfWidth + halfDimension) {
      continue;
    }
    if (abs(tempEnemy.center.y - eCenterY) > tempEnemy.halfHeight + halfDimension){
      continue;
    }
    return true;
  }
  return false;
}
