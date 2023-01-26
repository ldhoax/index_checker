module IndexChecker
  module TaskDefinition
    class GeneralReport << Base
      GET_INFO_QUERY = "SELECT tbls_stat.relname, tbls_stat.seq_scan, tbls_stat.idx_scan, (tbls_stat.seq_tup_read + tbls_stat.idx_tup_fetch) as read_actions, (tbls_stat.n_tup_ins + tbls_stat.n_tup_upd + tbls_stat.n_tup_del) as write_actions,
                          idx_stat.indexrelname, pg_relation_size(idx_stat.indexrelid) AS idx_size
                        FROM pg_stat_all_tables AS tbls_stat INNER JOIN pg_stat_user_indexes AS idx_stat ON tbls_stat.relid = idx_stat.relid
                        WHERE tbls_stat.relname NOT LIKE 'pg_%'
                        ORDER BY tbls_stat.idx_scan ASC, tbls_stat.seq_scan DESC"

      def generate!
        begin
          dbname, user, password = ARGV[0], ARGV[1], ARGV[2]
          connection = PG.connect(dbname: dbname, user: user, password: password)
          return if connection.nil?
    
          @results = connection.exec(GET_INFO_QUERY)
          write_results_to_file
          open_file_in_browser(result_file_path)
        rescue PG::Error => e
          puts e.message
        ensure
          connection.close if connection
        end
      end
    end
  end
end
