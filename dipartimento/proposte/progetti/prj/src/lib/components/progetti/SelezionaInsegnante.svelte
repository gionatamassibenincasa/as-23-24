<script lang="ts">
	export let insegnanti;
</script>

<select required>
	<option selected disabled value=""> Scegli l'insegnante... </option>
	{#each insegnanti as i}
		<option value={i.id}>{i.cognome}</option>
	{/each}
</select>
