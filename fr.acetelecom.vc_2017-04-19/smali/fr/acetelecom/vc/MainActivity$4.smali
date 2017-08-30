.class Lfr/acetelecom/vc/MainActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lfr/acetelecom/vc/c/d$e;


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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfr/acetelecom/vc/c/e;Lfr/acetelecom/vc/c/f;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "VC"

    const-string v2, "Query inventory finished."

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

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

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query inventory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->c(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "VC"

    const-string v2, "Query inventory was successful."

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->p(Lfr/acetelecom/vc/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->p(Lfr/acetelecom/vc/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ref"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lfr/acetelecom/vc/c/f;->b(Ljava/lang/String;)Lfr/acetelecom/vc/c/h;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "VC"

    const-string v1, "We have credits. Consuming it."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;

    move-result-object v1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->p(Lfr/acetelecom/vc/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ref"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lfr/acetelecom/vc/c/f;->b(Ljava/lang/String;)Lfr/acetelecom/vc/c/h;

    move-result-object v0

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->q(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/h;Lfr/acetelecom/vc/c/d$a;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Z)V

    const-string v0, "VC"

    const-string v2, "Initial inventory query finished; enabling main UI."

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->r(Lfr/acetelecom/vc/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->r(Lfr/acetelecom/vc/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "ref"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lfr/acetelecom/vc/c/f;->a(Ljava/lang/String;)Lfr/acetelecom/vc/c/j;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity$4;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v2}, Lfr/acetelecom/vc/c/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lfr/acetelecom/vc/c/j;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v4, v5}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got skuDetail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lfr/acetelecom/vc/c/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
