.class Lfr/acetelecom/vc/MainActivity$42;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/digits/sdk/android/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/MainActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/MainActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/digits/sdk/android/at;)V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/digits/sdk/android/at;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/MainActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/aw;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0, p1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Lcom/digits/sdk/android/aw;)Lcom/digits/sdk/android/aw;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v1, "registered_user"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v1

    const-string v2, "userId"

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v3}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v3

    iget-object v3, v3, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v2

    const-string v3, "[^0-9]"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iput-object v3, v0, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    const-string v2, "myphone"

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v3}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v3

    iget-object v3, v3, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    const-string v2, "userId"

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v3}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v3

    iget-object v3, v3, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/digits/sdk/android/aw;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v2

    const-string v3, "authToken.token"

    iget-object v4, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v2

    const-string v3, "authToken.secret"

    iget-object v0, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    const-string v2, "authToken.id"

    invoke-virtual {p1}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0, v2, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->c(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c;

    move-result-object v0

    const-string v2, "updateUserId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/MainActivity;->invalidateOptionsMenu()V

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " *************** authCallback success digitSession : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v2

    iget-object v2, v2, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    const v3, 0x7f070085

    invoke-virtual {v2, v3}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    const-string v1, "email"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v1

    const-string v2, "optin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v2}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lfr/acetelecom/vc/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "fr.acetelecom.vc.MESSAGEURL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v4}, Lfr/acetelecom/vc/MainActivity;->h(Lfr/acetelecom/vc/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/optin/?lang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v4}, Lfr/acetelecom/vc/MainActivity;->i(Lfr/acetelecom/vc/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v4}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v4

    iget-object v4, v4, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&mcc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v3}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v3

    const-string v4, "mcc"

    const-string v5, "?"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    const/16 v2, 0x162e

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$42;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->j(Lfr/acetelecom/vc/MainActivity;)V

    goto :goto_0
.end method
