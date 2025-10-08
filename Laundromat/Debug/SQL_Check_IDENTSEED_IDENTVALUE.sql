SELECT
    IDENT_SEED('Tenant') AS SeedValue, -- grabs the seed value
    IDENT_INCR('Tenant') AS IncrementValue, -- grabs the increment value
    IDENT_CURRENT('Tenant') AS CurrentIdentity; -- grabs the current identity value