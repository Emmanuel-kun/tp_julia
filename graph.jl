
import Base.copy

mutable struct tabgraph
	nv::Int
	ne::Int
	adj::Array{Bool,2}
	pds::Array{Real,2}
	pred::Array{Int,2}
	tabgraph(nbs::Int) = new(nbs,0,zeros(Bool,(nbs,nbs)),Array{Real}(undef,nbs,nbs),Array{Int}(undef,nbs,nbs))
end

function copy(G::tabgraph)
	F=tabgraph(G.nv)
	F.adj=copy(G.adj)
	F.ne=G.ne
	F.pds=copy(G.pds)
	F.pred=copy(G.pred)
	return F
end




function relie!(G,s,d,p)

	if G.adj[s,d] != 1
		G.ne += 1
	end
	G.adj[s,d] = 1
	G.pds[s,d] = p
end

function aff(G)
	println("Nombre de sommets : ", G.nv)
	println("Nombre d'arrêtes  : ", G.ne)

	for  i in 1:G.nv
		for j in 1:G.nv
			if G.adj[i,j]nb_tirage = rand(1:G.nv)
	preds = zeros(nb_tirage)
	suivs = zeros(nb_tirage)

				println("(",i,",",j,",",G.pds[i,j],")")
			end
		end
	end
end

function alea!(G)

	for i in 1:G.nv
		for j in 1:G.nv
			if rand(1:4) == 1
				relie!(G,i,j,rand())
			end
		end
	end
end


function voisins(G,s)
	ret = Array{Integer}()
	for j in 1:
		if G.adj[s,j]
			push!(ret, j)
		end
	end
	return ret
end

function lire!(G,nomf)

	f = open(nomf)
	while l = readline() != EOF
		arette = parse(l," ")
		relie!(G,arette[1],arette[2],arette[3])
	end

end

function ecrire!(G)

end
