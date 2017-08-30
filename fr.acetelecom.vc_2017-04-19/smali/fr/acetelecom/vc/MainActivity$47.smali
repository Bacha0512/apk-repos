.class Lfr/acetelecom/vc/MainActivity$47;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$47;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure()V
    .locals 2

    const-string v0, "VC"

    const-string v1, "Tapjoy onConnectFail"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectSuccess()V
    .locals 2

    const-string v0, "VC"

    const-string v1, "Tapjoy onConnectSuccess"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "286591437523"

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->setGcmSender(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$47;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v1, "AppLaunch2"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->b(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;)V

    return-void
.end method
