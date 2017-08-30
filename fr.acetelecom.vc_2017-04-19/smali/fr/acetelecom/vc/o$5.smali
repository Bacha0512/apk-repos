.class Lfr/acetelecom/vc/o$5;
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

    iput-object p1, p0, Lfr/acetelecom/vc/o$5;->a:Lfr/acetelecom/vc/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/o$5;->a:Lfr/acetelecom/vc/o;

    invoke-static {v0}, Lfr/acetelecom/vc/o;->a(Lfr/acetelecom/vc/o;)Lfr/acetelecom/vc/o$a;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/o$5;->a:Lfr/acetelecom/vc/o;

    iget-object v1, v1, Lfr/acetelecom/vc/o;->j:Lfr/acetelecom/vc/i;

    iget-object v1, v1, Lfr/acetelecom/vc/i;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/o$a;->a(Ljava/lang/String;)V

    return-void
.end method
