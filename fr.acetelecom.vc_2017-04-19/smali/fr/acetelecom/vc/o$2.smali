.class Lfr/acetelecom/vc/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/o;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/o;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/o;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/o$2;->a:Lfr/acetelecom/vc/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lfr/acetelecom/vc/o$2;->a:Lfr/acetelecom/vc/o;

    iget-object v0, v0, Lfr/acetelecom/vc/o;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o$2;->a:Lfr/acetelecom/vc/o;

    invoke-static {v0}, Lfr/acetelecom/vc/o;->a(Lfr/acetelecom/vc/o;)Lfr/acetelecom/vc/o$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/o$a;->a(I)V

    return-void
.end method
