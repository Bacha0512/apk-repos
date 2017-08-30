.class Lfr/acetelecom/vc/MainActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$13;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/support/v7/app/a$a;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$13;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a$a;->b(I)Landroid/support/v7/app/a$a;

    move-result-object v1

    const v2, 0x7f07009d

    invoke-virtual {v1, v2}, Landroid/support/v7/app/a$a;->a(I)Landroid/support/v7/app/a$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/a$a;->a(Z)Landroid/support/v7/app/a$a;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$13;->a:Lfr/acetelecom/vc/MainActivity;

    const v3, 0x7f070070

    invoke-virtual {v2, v3}, Lfr/acetelecom/vc/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/acetelecom/vc/MainActivity$13$1;

    invoke-direct {v3, p0}, Lfr/acetelecom/vc/MainActivity$13$1;-><init>(Lfr/acetelecom/vc/MainActivity$13;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/a$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/a$a;

    invoke-virtual {v0}, Landroid/support/v7/app/a$a;->b()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->show()V

    return-void
.end method
