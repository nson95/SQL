SELECT 'balance',
  concat('$', format(sum(balance), 2)) as 'Balance Total',
  concat('$', format(sum(fees), 2)) as 'Fees Total'
  FROM accounts;