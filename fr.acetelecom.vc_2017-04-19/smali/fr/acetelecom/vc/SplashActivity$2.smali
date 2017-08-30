.class Lfr/acetelecom/vc/SplashActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/SplashActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/SplashActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/SplashActivity$2;->a:Lfr/acetelecom/vc/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity$2;->a:Lfr/acetelecom/vc/SplashActivity;

    iget v1, v0, Lfr/acetelecom/vc/SplashActivity;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lfr/acetelecom/vc/SplashActivity;->f:I

    const/4 v0, 0x5

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity$2;->a:Lfr/acetelecom/vc/SplashActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/SplashActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/SplashActivity$2;->a:Lfr/acetelecom/vc/SplashActivity;

    invoke-static {}, Lfr/acetelecom/vc/SplashActivity;->g()[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
