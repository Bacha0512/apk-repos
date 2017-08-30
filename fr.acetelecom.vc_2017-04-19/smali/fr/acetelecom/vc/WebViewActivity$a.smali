.class Lfr/acetelecom/vc/WebViewActivity$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/WebViewActivity;


# direct methods
.method private constructor <init>(Lfr/acetelecom/vc/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfr/acetelecom/vc/WebViewActivity;Lfr/acetelecom/vc/WebViewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/WebViewActivity$a;-><init>(Lfr/acetelecom/vc/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x23

    if-eqz p2, :cond_0

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iput-object p2, v0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    :cond_0
    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "#optin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "fr.acetelecom.vc.WIN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lfr/acetelecom/vc/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/WebViewActivity;->finish()V

    :cond_2
    if-eqz p2, :cond_4

    const-string v0, "#closeme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/WebViewActivity;->finish()V

    :cond_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/16 v3, 0x23

    const/4 v4, 0x1

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "sms:?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v4

    :cond_0
    const-string v0, "whatsapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    const-string v1, "com.whatsapp"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/WebViewActivity;->a(Lfr/acetelecom/vc/WebViewActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->d:Landroid/app/AlertDialog;

    const-string v1, "App is not installed"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->d:Landroid/app/AlertDialog;

    const-string v1, "OK"

    new-instance v2, Lfr/acetelecom/vc/WebViewActivity$a$1;

    invoke-direct {v2, p0}, Lfr/acetelecom/vc/WebViewActivity$a$1;-><init>(Lfr/acetelecom/vc/WebViewActivity$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    const-string v0, "#win"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "fr.acetelecom.vc.WIN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    invoke-virtual {v0, v4, v1}, Lfr/acetelecom/vc/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/WebViewActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "#videovc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    iget-object v0, v0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "fr.acetelecom.vc.WIN"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    invoke-virtual {v1, v4, v0}, Lfr/acetelecom/vc/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity$a;->a:Lfr/acetelecom/vc/WebViewActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/WebViewActivity;->finish()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
