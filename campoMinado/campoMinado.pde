//variáveis globais
int [][] M = new int [10][10];

void setup() {
  //sorteia 10 bombas
  for (int l = 0; l<11; l++) { 
    int n = int(random(10));
    int m = int(random(10));
    M[m][n] = 1;
  }
  
  //imprime a matriz
  for (int i = 0; i < M.length; i++) {
    for (int j = 0; j < M[0].length; j++) {
      print(M[i][j], "");
    }
    println();
  }
  println();
  println();
  
  int a = int(random(0, 10)); //randomiza coordenada x (linha)
  int b = int(random(0, 10)); //randomiza coordenada y (coluna)
  println("Você escolheu ");
  println("Linha: "+a+" Coluna: "+b);
  temBomba(a,b);
}

/*
- função verifica se na coordenada escolhida há bombas
- verifica se nos adjecentes há bombas e retorna OK se não houver
*/
void temBomba (int x, int y) { //x == linha, y == colunas
  if (M[x][y] == 1) {
    println("FIM DE JOGO");
  } else {
    if (x > 0 && y > 0 && x < 9 && y < 9) {
      for (int i = -1; i<2; i++) {
        for (int j = -1; j < 2; j++) {
          if (M[x+i][y+j] == 0)
            println("OK! " + "Linha: " + (x+i) + " Coluna: " + (y+j));
        }
      }
    } else if (x == 0 && y == 0) {
      for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
          if (M[x+i][y+j] == 0)
            println("OK! " + "Linha: " + (x+i) + " Coluna: " + (y+j));
        }
      }
    } else if (x == 0 && y == 9) {
      for (int i = 0; i<2; i++) {
        for (int j = -1; j < 1; j++) {
          if (M[x+i][y+j] == 0)
            println("OK! " + "Linha: " + (x+i) + " Coluna: " + (y+j));
        }
      }
    } else if (x == 0 && (y != 0 || y != 9 )) {
      for (int i = 0; i<2; i++) {
        for (int j = -1; j < 2; j++) {
          if (M[x+i][y+j] == 0)
            println("OK! " + "Linha: " + (x+i) + " Coluna: " + (y+j));
        }
      }
    }  else if ((x != 0 || x != 9) && y == 0) {
      for (int i = -1; i<2; i++) {
        for (int j = 0; j < 1; j++) {
          if (M[x+i][y+j] == 0)
            println("OK! " + "Linha: " + (x+i) + " Coluna: " + (y+j));
        }
      }
    } else if (x == 9 && y == 9) {
      for (int i = -1; i < 1; i++) {
        for (int j = -1; j < 1; j++) {
          if (M[x+i][y+j] == 0)
            println("OK! " + "Linha: " + (x+i) + " Coluna: " + (y+j));
        }
      }
    } else if (x == 9 && y == 0) {
      for (int i = -1; i<1; i++) {
        for (int j = 0; j < 2; j++) {
          if (M[x+i][y+j] == 0)
            println("OK! " + "Linha: " + (x+i) + " Coluna: " + (y+j));
        }
      }
    } else if (x == 9 && (y != 0 || y != 9 )) {
      for (int i = -1; i<1; i++) {
        for (int j = -1; j < 2; j++) {
          if (M[x+i][y+j] == 0)
            println("OK! " + "Linha: " + (x+i) + " Coluna: " + (y+j));
        }
      }
    } else if ((x != 0 || x != 9) && y == 9) {
      for (int i = -1; i<2; i++) {
        for (int j = -1; j < 1; j++) {
          if (M[x+i][y+j] == 0)
            println("OK! " + "Linha: " + (x+i) + " Coluna: " + (y+j));
        }
      }
    }
  }
}
