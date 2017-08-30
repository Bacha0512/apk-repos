.class Lfr/acetelecom/vc/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lfr/acetelecom/vc/o$1;->a:Lfr/acetelecom/vc/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lfr/acetelecom/vc/o$1;->a:Lfr/acetelecom/vc/o;

    invoke-static {v1}, Lfr/acetelecom/vc/o;->a(Lfr/acetelecom/vc/o;)Lfr/acetelecom/vc/o$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/o$1;->a:Lfr/acetelecom/vc/o;

    invoke-static {v1}, Lfr/acetelecom/vc/o;->a(Lfr/acetelecom/vc/o;)Lfr/acetelecom/vc/o$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lfr/acetelecom/vc/o$a;->a(I)V

    :cond_0
    return-void
.end method
