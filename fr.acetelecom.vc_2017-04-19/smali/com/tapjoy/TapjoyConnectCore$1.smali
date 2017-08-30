.class final Lcom/tapjoy/TapjoyConnectCore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectCore;->fetchAdvertisingID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->loadAdvertisingId()V

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayManifestConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->getDeviceGooglePlayServicesVersion()I

    move-result v0

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->b:I

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->getPackagedGooglePlayServicesVersion()I

    move-result v0

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->a:I

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->isAdIdAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->isAdTrackingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->d:Z

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TapjoyConnect"

    const-string v1, "Disabling persistent IDs. Do this only if you are not using Tapjoy to manage currency."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->completeConnectCall()V

    return-void
.end method
