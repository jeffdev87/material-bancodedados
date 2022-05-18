$tables = @('aluno', 'curso', 'matricula_aluno', 'disciplina', 'cursa_disc', 'compoe_curso', 'professor', 'departamento', 'pre_req')

for ( $index = 0; $index -lt $tables.count; $index++)
{
	$table = $tables[$index]
	$copy = "COPY $table TO 'C:\Users\Public\projeto-db-data\$table.csv' DELIMITER ',' CSV HEADER;"

	$psql = "psql -U postgres -d escola -c `"$copy`""

	Invoke-Expression $psql
}
