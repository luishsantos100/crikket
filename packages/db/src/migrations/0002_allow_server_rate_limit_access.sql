CREATE POLICY "rate_limit_server_only" ON "rate_limit" FOR ALL TO public
USING (current_setting('request.jwt.claim.role', true) IS NULL)
WITH CHECK (current_setting('request.jwt.claim.role', true) IS NULL);
