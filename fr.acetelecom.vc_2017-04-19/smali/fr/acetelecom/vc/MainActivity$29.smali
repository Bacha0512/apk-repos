.class Lfr/acetelecom/vc/MainActivity$29;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "VC"

    const-string v1, "?onItemClick?mHelper"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->r(Lfr/acetelecom/vc/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->r(Lfr/acetelecom/vc/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->p(Lfr/acetelecom/vc/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->p(Lfr/acetelecom/vc/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buy button clicked."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v1, "click_buy_credits"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->e(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    iget-object v5, v0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching purchase flow for credits."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    const-string v1, "BuyProd"

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    const/16 v3, 0x2711

    iget-object v4, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v4}, Lfr/acetelecom/vc/MainActivity;->B(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d$c;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lfr/acetelecom/vc/c/d;->a(Landroid/app/Activity;Ljava/lang/String;ILfr/acetelecom/vc/c/d$c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$29;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->l(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lfr/acetelecom/vc/c/d;->b()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "VC"

    const-string v1, "?onItemClick?sku??"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "VC"

    const-string v1, "?onItemClick?creditMap"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
