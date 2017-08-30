.class Lfr/acetelecom/vc/MainActivity$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/MainActivity;->k(Ljava/lang/String;)V
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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$16;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$16;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$16;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v1}, Lfr/acetelecom/vc/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$16;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v1, v0}, Lfr/acetelecom/vc/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$16;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/MainActivity;->finish()V

    return-void
.end method
