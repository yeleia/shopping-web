package org.yelei.lucene;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.*;
import org.apache.lucene.search.highlight.*;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.yelei.Test.StringUtil;
import org.yelei.entity.Goods;

import java.io.StringReader;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by yelei on 16-12-21.
 */
public class GoodsIndex  {
    private Directory dir=null;
    private IndexWriter getWriter()throws Exception{
        dir= FSDirectory.open(Paths.get("/home/yelei/document/web01"));
        SmartChineseAnalyzer analyzer=new SmartChineseAnalyzer();
        IndexWriterConfig iwc=new IndexWriterConfig(analyzer);
        IndexWriter writer=new IndexWriter(dir, iwc);
        return writer;
    }

    public void addIndex(Goods goods)throws Exception{
        System.out.println("test liao:"+goods.getGoodsName());
        IndexWriter writer=getWriter();
        Document doc=new Document();
        doc.add(new StringField("id",String.valueOf(goods.getId()), Field.Store.YES));
        doc.add(new TextField("goodsName", goods.getGoodsName(),Field.Store.YES));
        writer.addDocument(doc);
        writer.close();

    }
    public List<Goods> searchGoods(String q) throws  Exception{
        dir=FSDirectory.open(Paths.get("/home/yelei/document/web01"));
        IndexReader reader= DirectoryReader.open(dir);
        IndexSearcher is=new IndexSearcher(reader);
        BooleanQuery.Builder booleanQuery=new BooleanQuery.Builder();
        SmartChineseAnalyzer analyzer=new SmartChineseAnalyzer();
        QueryParser parser=new QueryParser("goodsName",analyzer);
        Query query=parser.parse(q);
        QueryParser parser2=new QueryParser("goodsImage",analyzer);
        Query query2=parser2.parse(q);
        booleanQuery.add(query, BooleanClause.Occur.SHOULD);
   /*     booleanQuery.add(query1,BooleanClause.Occur.SHOULD);*/
        booleanQuery.add(query2,BooleanClause.Occur.SHOULD);
        TopDocs hits=is.search(booleanQuery.build(),100);
        QueryScorer scorer=new QueryScorer(query);
        Fragmenter fragmenter=new SimpleSpanFragmenter(scorer);
        SimpleHTMLFormatter simpleHTMLFormatter=new SimpleHTMLFormatter("<b><font color='red'>","</font></b>");
        Highlighter highlighter=new Highlighter(simpleHTMLFormatter,scorer);
        highlighter.setTextFragmenter(fragmenter);
        List<Goods> goodsList=new LinkedList<Goods>();
        for (ScoreDoc scoreDoc:hits.scoreDocs){
            Document doc=is.doc(scoreDoc.doc);
            Goods goods=new Goods();
           /* goods.setId(Integer.parseInt(doc.get("id")));*/
            String goodsImage=doc.get("goodsImage");

            String goodsName= StringEscapeUtils.escapeHtml(doc.get("goodsName"));
            if(goodsImage!=null){
                TokenStream tokenStream=analyzer.tokenStream("goodsImage",new StringReader(goodsImage));
                String hgoodsImage=highlighter.getBestFragment(tokenStream,goodsImage);
                if(StringUtil.isEmpty(hgoodsImage)){
                    goods.setGoodsImage(goodsImage);
                }else{
                    goods.setGoodsImage(hgoodsImage);
                }
            }
            if(goodsName!=null){
                TokenStream tokenStream=analyzer.tokenStream("goodsName",new StringReader(goodsName));
                String hgoodsName=highlighter.getBestFragment(tokenStream,goodsName);
                if(StringUtil.isEmpty(hgoodsName)){
                    if(goodsName.length()<100){
                        goods.setGoodsName(goodsName);
                    }else{
                        goods.setGoodsName(goodsName.substring(0,100));
                    }
                }else {
                    goods.setGoodsName(hgoodsName);
                }
            }
            goodsList.add(goods);

        }
        return goodsList;
    }



}
