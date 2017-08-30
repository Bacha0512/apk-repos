.class Lfr/acetelecom/vc/MainActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$10;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$10;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->c(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c;

    move-result-object v0

    invoke-virtual {v0}, Lfr/acetelecom/vc/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$10;->a:Lfr/acetelecom/vc/MainActivity;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$10;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->d(Lfr/acetelecom/vc/MainActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$10;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/MainActivity;->recreate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$10;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->e(Lfr/acetelecom/vc/MainActivity;)V

    goto :goto_0
.end method
