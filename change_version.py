import os
import re

def atualizar_versao_setup(root_path, nova_versao):
    # Regex: 3 grupos:
    #  (1) início: "version  =  '  " ou "version=   " etc.
    #  (2) texto da versão (ex.: 0.0.4)
    #  (3) final: aspas
    padrao = re.compile(r"(version\s*=\s*['\"])([^'\"]+)(['\"])")

    for diretorio, subdirs, arquivos in os.walk(root_path):
        for arquivo in arquivos:
            if arquivo == "setup.py":
                caminho_arquivo = os.path.join(diretorio, arquivo)
                
                with open(caminho_arquivo, 'r', encoding='utf-8') as f:
                    conteudo = f.read()

                # Substituição usando função lambda para evitar problemas de escapes
                def substituir_versao(m):
                    # m.group(1) = parte "version='"
                    # m.group(2) = versão antiga (ex.: 0.0.1)
                    # m.group(3) = aspas finais
                    return f"{m.group(1)}{nova_versao}{m.group(3)}"
                
                conteudo_novo, num_subs = re.subn(padrao, substituir_versao, conteudo)

                if num_subs > 0:
                    with open(caminho_arquivo, 'w', encoding='utf-8') as f:
                        f.write(conteudo_novo)
                    print(f"[OK] Versão atualizada para '{nova_versao}' em {caminho_arquivo}")
                else:
                    print(f"[AVISO] Não foi encontrado padrão de versão em {caminho_arquivo}")

def main():
    print("Script para atualizar a versão de todos os 'setup.py' de forma recursiva.")
    nova_versao = input("Digite a nova versão desejada (ex.: 0.0.3): ")

    # Ajuste se quiser um diretório específico em vez do atual:
    pasta_raiz = os.getcwd()  
    atualizar_versao_setup(pasta_raiz, nova_versao)

if __name__ == "__main__":
    import sys
    import os
    main()
