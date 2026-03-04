


void main(){



}


enum PokemonType {
  FIRE('Fire', '🔥'),
  WATER ('Water', '💧'),
  GRASS('Grass', '🌿');

  final String name;
  final String emoji;

  const PokemonType(this.name, this.emoji);

  bool isStrongAgainst(PokemonType other){
    return (this == FIRE && other == GRASS) ||
           (this == WATER && other == FIRE) ||
           (this == GRASS && other == WATER);
  }
}




sealed class AttackResult {}

class Critical extends AttackResult{
  final int damage;
  Critical(this.damage);
}

class Normal extends AttackResult{
  final int damage;
  Normal(this.damage);
}

class Weak extends AttackResult{
  final int damage;
  Weak(this.damage);
}

abstract class Attack{
  int execute();
}

class BasicAttack implements Attack {
  final int damage;
  BasicAttack(this.damage);

  @override
  int execute(){
    return damage;
  }
}

class SpecialAttack implements Attack {
  final int damage;
  final double multiplier;
  SpecialAttack(this.damage, this.multiplier);
  @override
  int execute(){
    return (damage * multiplier).toInt();
  }

}

mixin Healable {
   int potions = 3;

   int heal(int currentHp){
     if(potions > 0) {
       potions --;
       print('Used potions! Potions left: $potions');
       return currentHp + 20;
     }
     else{
       print('No potions left!');
       return currentHp;
     }
   }
}









String describeAttack (AttackResult result){
  return switch(result){
    Critical(damage: var d) => 'CRITICAL HIT!  $d damage',
    Normal(damage: var d) => 'NORMAL HIT! $d damage',
    Weak(damage: var d) => 'WEAK HIT! $d damage'
  };
}


