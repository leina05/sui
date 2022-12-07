
#[test_only]
module sui::types_tests {

    use sui::types::hash_type_tag;
    use sui::bag;
    use sui::tx_context;

    struct Foo<phantom T1, phantom T2> has store {}
    struct Bar {}
    struct Baz {}

    const E_TEST_FAILED: u64 = 1;

    #[test]
    fun test_hash_type_tag() {
        // test hash properties
        let hash1 = hash_type_tag<Foo<Bar, Baz>>();
        let hash2 = hash_type_tag<Foo<Bar, Baz>>();
        let hash3 = hash_type_tag<Foo<Baz, Bar>>();

        assert!(hash1 == hash2, E_TEST_FAILED);
        assert!(hash1 != hash3, E_TEST_FAILED);

        // test using hash for bag key
        let ctx = tx_context::dummy();
        let b = bag::new(&mut ctx);
        let v1 = Foo<Bar, Baz> {};
        bag::add(&mut b, hash1, v1);
        assert!(bag::contains(&b, hash1), E_TEST_FAILED);
        let v1 = bag::remove(&mut b, hash1);
        Foo<Bar, Baz> {} = v1;
        bag::destroy_empty(b);
    }
}
