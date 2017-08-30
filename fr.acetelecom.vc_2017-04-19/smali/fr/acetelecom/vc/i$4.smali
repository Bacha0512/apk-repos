.class Lfr/acetelecom/vc/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/i;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/i;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/i$4;->a:Lfr/acetelecom/vc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/i$4;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->e(Lfr/acetelecom/vc/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i$4;->a:Lfr/acetelecom/vc/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/acetelecom/vc/i;->a(Lfr/acetelecom/vc/i;Landroid/view/View;)V

    const-string v0, "VC"

    const-string v1, "********** stopRec "

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/i$4;->a:Lfr/acetelecom/vc/i;

    invoke-virtual {v0}, Lfr/acetelecom/vc/i;->b()V

    :cond_0
    const-string v0, "VC"

    const-string v1, "********** timer tick run"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
