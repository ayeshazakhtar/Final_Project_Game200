boolean collision(int pCenterX, int pCenterY){
  for (int i = 0; i < walls.size(); i++){
    Wall tempWall = walls.get(i);
    if (abs(tempWall.center.x - pCenterX) > tempWall.halfWidth + 10) {
      continue;
    }
    if (abs(tempWall.center.y - pCenterY) > tempWall.halfHeight + 10){
      continue;
    }
    return true;
  }
  return false;
}
