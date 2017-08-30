.class Lfr/acetelecom/vc/MainActivity$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/MainActivity;->M()V
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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$17;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$17;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->k(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$17;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->k(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/n;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$17;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v1

    const-string v2, "ambpos"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/n;->a(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "VC"

    const-string v1, "setOnDismissListener????????? !fragmentPc"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
