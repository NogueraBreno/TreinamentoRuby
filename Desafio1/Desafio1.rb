require 'fileutils'

created_at = Time.new.strftime("%d/%m/%Y")
FileUtils.chdir("../../../Documentos"){
FileUtils.rm_rf("Diretorio 1") if File.exist?("Diretorio 1")
FileUtils.rm_rf("Diretorio 2") if File.exist?("Diretorio 2")
}
FileUtils.mkdir("../../../Documentos/Diretorio 1") unless File.exist?("../../../Documentos/Diretorio 1")
FileUtils.mkdir("../../../Documentos/Diretorio 2") unless File.exist?("../../../Documentos/Diretorio 2")
puts "Pastas Criadas..."
sleep (2)
FileUtils.chdir("../../../Documentos/Diretorio 1") {
    File.new("Desafio.txt","w")
    File.write("Desafio.txt","Arquivo criado em #{created_at}")
    puts "Arquivo Criado"
    sleep (2)

}
FileUtils.mv("../../../Documentos/Diretorio 1/Desafio.txt", "../../../Documentos/Diretorio 2")
puts "Arquivo Movido"
sleep (2)
