.class Lfr/acetelecom/vc/MainActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lfr/acetelecom/vc/c/d$a;


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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfr/acetelecom/vc/c/h;Lfr/acetelecom/vc/c/e;)V
    .locals 6

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consumption finished. Purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lfr/acetelecom/vc/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VC"

    const-string v1, "Consumption successful. Provisioning."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->p(Lfr/acetelecom/vc/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lfr/acetelecom/vc/c/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "signature"

    invoke-virtual {p1}, Lfr/acetelecom/vc/c/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "receipt"

    invoke-virtual {p1}, Lfr/acetelecom/vc/c/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lfr/acetelecom/vc/c/a;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->p(Lfr/acetelecom/vc/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "val"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->c(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c;

    move-result-object v2

    const-string v3, "purchaseDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&c="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Z)V

    const-string v0, "VC"

    const-string v1, "End consumption flow."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v2, "AnnulationAchat"

    invoke-static {v1, v2}, Lfr/acetelecom/vc/MainActivity;->b(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->o(Lfr/acetelecom/vc/MainActivity;)Lcom/tapjoy/TJActionRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->o(Lfr/acetelecom/vc/MainActivity;)Lcom/tapjoy/TJActionRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/tapjoy/TJActionRequest;->cancelled()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while consuming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->c(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v1, "AnnulationAchat"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->b(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->o(Lfr/acetelecom/vc/MainActivity;)Lcom/tapjoy/TJActionRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$3;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->o(Lfr/acetelecom/vc/MainActivity;)Lcom/tapjoy/TJActionRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TJActionRequest;->cancelled()V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method
