.class Lcom/weirdvoice/splash/Splash$2;
.super Ljava/lang/Thread;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/splash/Splash;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/splash/Splash;


# direct methods
.method constructor <init>(Lcom/weirdvoice/splash/Splash;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/splash/Splash$2;->this$0:Lcom/weirdvoice/splash/Splash;

    .line 128
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    const-string v1, "Splash"

    const-string v2, "speedup1"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->gatewaydflt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 135
    iget-object v1, p0, Lcom/weirdvoice/splash/Splash$2;->this$0:Lcom/weirdvoice/splash/Splash;

    iget v1, v1, Lcom/weirdvoice/splash/Splash;->nbLaunches:I

    if-nez v1, :cond_0

    .line 136
    const-string v1, "Splash"

    const-string v2, "creating default values"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/weirdvoice/splash/Splash$2;->this$0:Lcom/weirdvoice/splash/Splash;

    iget-object v1, v1, Lcom/weirdvoice/splash/Splash;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->resetAllDefaultValues()V

    .line 139
    :cond_0
    const-string v1, "Splash"

    const-string v2, "speedup3"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/splash/Splash$2;->this$0:Lcom/weirdvoice/splash/Splash;

    iget-object v1, v1, Lcom/weirdvoice/splash/Splash;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/weirdvoice/splash/Splash$2;->this$0:Lcom/weirdvoice/splash/Splash;

    iget-object v2, v2, Lcom/weirdvoice/splash/Splash;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v1, "Splash"

    const-string v2, "speedup failed"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/weirdvoice/splash/Splash$2;->this$0:Lcom/weirdvoice/splash/Splash;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/splash/Splash;->access$3(Lcom/weirdvoice/splash/Splash;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
