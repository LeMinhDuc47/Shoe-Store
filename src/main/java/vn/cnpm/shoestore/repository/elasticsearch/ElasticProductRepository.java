package vn.cnpm.shoestore.repository.elasticsearch;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.annotations.Query;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import vn.cnpm.shoestore.domain.elastic.ElasticProduct;

@Repository
public interface ElasticProductRepository extends ElasticsearchRepository<ElasticProduct, Long> {

    @Query("{\"bool\": {\"should\": [" +
            "{\"match\": {\"name\": {\"query\": \"?0\"}}}," +
            "{\"match\": {\"shortDesc\": {\"query\": \"?0\"}}}," +
            "{\"match\": {\"detailDesc\": {\"query\": \"?0\"}}}" +
            "]}}")
    Page<ElasticProduct> searchByKeyword(String keyword, Pageable pageable);

}