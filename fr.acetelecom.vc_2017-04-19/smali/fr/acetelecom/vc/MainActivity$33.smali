.class Lfr/acetelecom/vc/MainActivity$33;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/MainActivity;->b(Landroid/view/View;)V
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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$33;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$33;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v1}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lfr/acetelecom/vc/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "fr.acetelecom.vc.MESSAGEURL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity$33;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v3}, Lfr/acetelecom/vc/MainActivity;->h(Lfr/acetelecom/vc/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/terms/?lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity$33;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v3}, Lfr/acetelecom/vc/MainActivity;->i(Lfr/acetelecom/vc/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$33;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v1, v0}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
