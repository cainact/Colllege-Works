const fs = require('fs');
const cheerio = require('cheerio');
const http = require('http');


const mask = {
  hostname: 'www.licitacao.pmmc.com.br',
  path: '/Transparencia/vencimentos2',
  headers: { 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36' }
};


http.get(mask, function(res, err) {
  if (err) console.log('Erro: ' + err);
  res.on('data', function(body, err) { 

    if (err) console.log('Erro: ' + err);

    var $ = cheerio.load(body);
    //JSON.parse(body);

    var cont = $('*').text().trim();
   
    console.log(cont);

    
    fs.writeFileSync('conteudo.json', JSON.stringify(cont, null, 2), function(err) {
      if (err) console.log(err);
      console.log('JSON escrito com sucesso!')
  })
    fs.appendFileSync('conteudo.txt',cont, function (err) {
      if (err) console.log(err);
      console.log('Arquivo salvo com sucesso!');
    });

  });
});
