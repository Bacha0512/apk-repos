.class Lfr/acetelecom/vc/MainActivity$50;
.super Ljava/lang/Object;

# interfaces
.implements Lfr/acetelecom/vc/c/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/MainActivity;->s()V
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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$50;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfr/acetelecom/vc/c/e;)V
    .locals 4

    const-string v0, "VC"

    const-string v1, "Setup finished. IAB helper"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lfr/acetelecom/vc/c/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$50;->a:Lfr/acetelecom/vc/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up in-app billing IAB helper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->c(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$50;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "VC"

    const-string v1, "Setup successful. Querying inventory IAB helper."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$50;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->m(Lfr/acetelecom/vc/MainActivity;)Ljava/util/List;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$50;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity$50;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v3}, Lfr/acetelecom/vc/MainActivity;->n(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d$e;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lfr/acetelecom/vc/c/d;->a(ZLjava/util/List;Lfr/acetelecom/vc/c/d$e;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VC"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
