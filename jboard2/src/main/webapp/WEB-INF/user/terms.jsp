<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>약관</title>
    <link rel="stylesheet" href="/jboard2/css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <header>
            <h3>
                <a href="/index.html" class="title">Board Project</a>
            </h3>
        </header>
        <main id="user">
            <section class="terms">
                <h2 class="tit">사이트 이용약관</h2>
                <table border="1">                    
                    <tr>
                        <td>
                            <textarea name="terms">약관내용</textarea>
                            <label><input type="checkbox" class="terms">&nbsp;동의합니다.</label>
                        </td>
                    </tr>
                </table>

                <h2 class="tit">개인정보 취급방침</h2>
                <table border="1">                    
                    <tr>
                        <td>
                            <textarea name="privacy">약관내용</textarea>
                            <label><input type="checkbox" class="privacy">&nbsp;동의합니다.</label>
                        </td>
                    </tr>
                </table>
                
                <div>
                    <a href="./login.html" class="btn btnCancel">취소</a>
                    <a href="./register.html" class="btn btnNext">다음</a>
                </div>

            </section>
        </main>
        <footer>
            <p>
                <span class="copyright">Copyrightⓒ 김철학(개발에반하다.)</span>
                <span class="version">v1.0.1</span>
            </p>
        </footer>
    </div>    
</body>
</html>