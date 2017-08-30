.class Lfr/acetelecom/vc/MainActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lfr/acetelecom/vc/c/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/MainActivity;
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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfr/acetelecom/vc/c/e;Lfr/acetelecom/vc/c/h;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lfr/acetelecom/vc/c/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0, v3}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v1, "AnnulationAchat"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->b(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->o(Lfr/acetelecom/vc/MainActivity;)Lcom/tapjoy/TJActionRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->o(Lfr/acetelecom/vc/MainActivity;)Lcom/tapjoy/TJActionRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TJActionRequest;->cancelled()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0, p2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Lfr/acetelecom/vc/c/h;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v1, "Error purchasing. Authenticity verification failed."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->c(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0, v3}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v1, "AnnulationAchat"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->b(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->o(Lfr/acetelecom/vc/MainActivity;)Lcom/tapjoy/TJActionRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->o(Lfr/acetelecom/vc/MainActivity;)Lcom/tapjoy/TJActionRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TJActionRequest;->cancelled()V

    goto :goto_0

    :cond_3
    const-string v0, "VC"

    const-string v1, "Purchase successful."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {p2}, Lfr/acetelecom/vc/c/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/MainActivity;->d(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->p(Lfr/acetelecom/vc/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "VC"

    const-string v1, "Purchase is ok. Starting consumption."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$2;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->q(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d$a;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/h;Lfr/acetelecom/vc/c/d$a;)V

    goto/16 :goto_0
.end method
