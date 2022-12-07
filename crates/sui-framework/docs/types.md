
<a name="0x2_types"></a>

# Module `0x2::types`

Sui types helpers and utilities


-  [Function `is_one_time_witness`](#0x2_types_is_one_time_witness)
-  [Function `hash_type_tag`](#0x2_types_hash_type_tag)


<pre><code></code></pre>



<a name="0x2_types_is_one_time_witness"></a>

## Function `is_one_time_witness`

Tests if the argument type is a one-time witness, that is a type with only one instantiation
across the entire code base.


<pre><code><b>public</b> <b>fun</b> <a href="types.md#0x2_types_is_one_time_witness">is_one_time_witness</a>&lt;T: drop&gt;(_: &T): bool
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>native</b> <b>fun</b> <a href="types.md#0x2_types_is_one_time_witness">is_one_time_witness</a>&lt;T: drop&gt;(_: &T): bool;
</code></pre>



</details>

<a name="0x2_types_hash_type_tag"></a>

## Function `hash_type_tag`



<pre><code><b>public</b> <b>fun</b> <a href="types.md#0x2_types_hash_type_tag">hash_type_tag</a>&lt;T&gt;(): <b>address</b>
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>native</b> <b>fun</b> <a href="types.md#0x2_types_hash_type_tag">hash_type_tag</a>&lt;T&gt;(): <b>address</b>;
</code></pre>



</details>
