.class Lfr/acetelecom/vc/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lfr/acetelecom/vc/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/a/a;->a(Lfr/acetelecom/vc/b/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/e;

.field final synthetic b:Lfr/acetelecom/vc/a/a;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/a/a;Lfr/acetelecom/vc/e;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/a/a$1;->b:Lfr/acetelecom/vc/a/a;

    iput-object p2, p0, Lfr/acetelecom/vc/a/a$1;->a:Lfr/acetelecom/vc/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lfr/acetelecom/vc/a/a$1;->b:Lfr/acetelecom/vc/a/a;

    iget-object v0, v0, Lfr/acetelecom/vc/a/a;->d:Lfr/acetelecom/vc/a/a$a;

    iget-object v1, p0, Lfr/acetelecom/vc/a/a$1;->a:Lfr/acetelecom/vc/e;

    invoke-interface {v0, p1, p2, v1}, Lfr/acetelecom/vc/a/a$a;->a(Landroid/view/View;ILfr/acetelecom/vc/e;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e010c
        :pswitch_0
    .end packed-switch
.end method
