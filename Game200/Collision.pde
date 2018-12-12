boolean collision(int pCenterX, int pCenterY, int halfDimension){
  for (int i = 0; i < walls.size(); i++){
    Wall tempWall = walls.get(i);
    if (abs(tempWall.center.x - pCenterX) > tempWall.halfWidth + halfDimension) {
      continue;
    }
    if (abs(tempWall.center.y - pCenterY) > tempWall.halfHeight + halfDimension){
      continue;
    }
    return true;
  }
  return false;
}
