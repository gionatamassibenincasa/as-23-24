<script lang="ts">
	import type { PageData } from './$types';
	import {
		Table,
		TableBody,
		TableBodyCell,
		TableBodyRow,
		TableHead,
		TableHeadCell,
		Checkbox,
		TableSearch
	} from 'flowbite-svelte';

	export let data: PageData;
</script>

<!--
<Table striped={true}>
	<TableHead>
		<TableHeadCell>id</TableHeadCell>
		<TableHeadCell>Codice</TableHeadCell>
		<TableHeadCell>Denominazione</TableHeadCell>
		<TableHeadCell>Tipo</TableHeadCell>
		<TableHeadCell>Considerazioni</TableHeadCell>
	</TableHead>
	<TableBody>
		{#each data.progetti.data as p}
			<TableBodyRow>
				<TableBodyCell>{p.id}</TableBodyCell>
				<TableBodyCell>{p.codice}</TableBodyCell>
				<TableBodyCell>{p.denominazione}</TableBodyCell>
				<TableBodyCell>{p.tipo}</TableBodyCell>
				<TableBodyCell
					><p class="break-normal" style="width:33vw">{p.considerazioni}</p></TableBodyCell
				>
			</TableBodyRow>
		{/each}
	</TableBody>
</Table>
-->
<!--
<pre><code>{JSON.stringify(data.progetti.data, null, 2)}</code></pre>
-->

<table>
	<thead>
		<th>id</th>
		<th>Codice</th>
		<th>Denominazione</th>
		<th>Tipo</th>
		<th>Considerazioni</th>
	</thead>
	<tbody>
		{#each data.progetti.data as p}
			<tr>
				<td>{p.id}</td>
				<td>{p.codice}</td>
				<td>{p.denominazione}</td>
				<td>{p.tipo}</td>
				<td>{p.considerazioni}</td>
			</tr>
		{/each}
	</tbody>
</table>
