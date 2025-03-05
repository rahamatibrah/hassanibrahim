# Traitement du formulaire isogramme
post '/verifier_isogramme' do
  mot = params[:mot]
  if est_isogramme?(mot)
    @resultat = "#{mot} est un isogramme."
  else
    @resultat = "#{mot} n'est pas un isogramme."
  end
  erb :isogramme
end
# Fonction pour vérifier un isogramme
def est_isogramme?(mot)
  lettres = mot.downcase.chars
  return lettres.to_set.size == lettres.size
end


post '/calcule_transpose' do
  matrice = params[:matrice].split("\n").map { |ligne| ligne.split(',').map(&:to_i)}
@transpose = calcule_transpose(matrice) 
erb :transpose
  end

def calcule_transpose(matrice)
  return matrice.transpose
  end

# Vues (fichiers ERB)
__END__
@@ exercice2
<h1>Page de l'exercice 2</h1>
<p>Contenu de l'exercice 2...</p>