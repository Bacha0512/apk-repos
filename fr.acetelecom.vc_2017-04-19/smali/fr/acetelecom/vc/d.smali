.class public Lfr/acetelecom/vc/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/ConnectionListener;
.implements Lcom/twilio/client/DeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/d$c;,
        Lfr/acetelecom/vc/d$b;,
        Lfr/acetelecom/vc/d$a;,
        Lfr/acetelecom/vc/d$d;
    }
.end annotation


# static fields
.field private static a:Lfr/acetelecom/vc/d;

.field private static f:Z

.field private static g:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lfr/acetelecom/vc/d$d;

.field private d:Lfr/acetelecom/vc/d$a;

.field private e:Lfr/acetelecom/vc/d$b;

.field private h:Z

.field private i:Lcom/twilio/client/Device;

.field private j:Lcom/twilio/client/Connection;

.field private k:Lcom/twilio/client/Connection;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr/acetelecom/vc/d;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/d;)Lfr/acetelecom/vc/d$d;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)Lfr/acetelecom/vc/d;
    .locals 1

    sget-object v0, Lfr/acetelecom/vc/d;->a:Lfr/acetelecom/vc/d;

    if-nez v0, :cond_0

    new-instance v0, Lfr/acetelecom/vc/d;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lfr/acetelecom/vc/d;->a:Lfr/acetelecom/vc/d;

    :cond_0
    sget-object v0, Lfr/acetelecom/vc/d;->a:Lfr/acetelecom/vc/d;

    return-object v0
.end method

.method static synthetic a(Lfr/acetelecom/vc/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/d;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lfr/acetelecom/vc/d;->b(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Timeout connect from server"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/d$d;->c(Ljava/lang/Exception;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    if-nez v0, :cond_3

    invoke-static {p1, p0}, Lcom/twilio/client/Twilio;->createDevice(Ljava/lang/String;Lcom/twilio/client/DeviceListener;)Lcom/twilio/client/Device;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfr/acetelecom/vc/d;->b:Landroid/content/Context;

    const-class v2, Lfr/acetelecom/vc/CallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lfr/acetelecom/vc/d;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    invoke-virtual {v1, v0}, Lcom/twilio/client/Device;->setIncomingIntent(Landroid/app/PendingIntent;)V

    :goto_0
    iget-object v0, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    invoke-interface {v0}, Lfr/acetelecom/vc/d$d;->h()V

    :cond_1
    iget-boolean v0, p0, Lfr/acetelecom/vc/d;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/d;->a(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/acetelecom/vc/d;->h:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    invoke-virtual {v0, p1}, Lcom/twilio/client/Device;->updateCapabilityToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    invoke-virtual {v1}, Lcom/twilio/client/Device;->release()V

    :cond_4
    iput-object v4, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    iget-object v1, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    invoke-interface {v1, v0}, Lfr/acetelecom/vc/d$d;->c(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;ZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://app1.allogag.com/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?allowOutgoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "&&client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v1, Lfr/acetelecom/vc/d$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfr/acetelecom/vc/d$c;-><init>(Lfr/acetelecom/vc/d;Lfr/acetelecom/vc/d$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lfr/acetelecom/vc/d$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lfr/acetelecom/vc/d;->f:Z

    return p0
.end method

.method static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Lfr/acetelecom/vc/d;->g:Z

    return p0
.end method

.method private g()Z
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    invoke-virtual {v0}, Lcom/twilio/client/Device;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    invoke-virtual {v0}, Lcom/twilio/client/Device;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/twilio/client/Device$Capability;->EXPIRATION:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/d;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-boolean v1, p0, Lfr/acetelecom/vc/d;->l:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method private i()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    invoke-virtual {v0}, Lcom/twilio/client/Device;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/twilio/client/Device$Capability;->OUTGOING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/twilio/client/Device$Capability;->OUTGOING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lfr/acetelecom/vc/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BasicPhone"

    const-string v1, "!!!!!!!Not connected ???"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "BasicPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!Send digits : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    invoke-interface {v0, p1}, Lcom/twilio/client/Connection;->sendDigits(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public a(Lfr/acetelecom/vc/d$d;Lfr/acetelecom/vc/d$a;Lfr/acetelecom/vc/d$b;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    iput-object p2, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    iput-object p3, p0, Lfr/acetelecom/vc/d;->e:Lfr/acetelecom/vc/d$b;

    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->c:Lfr/acetelecom/vc/d$d;

    invoke-interface {v0}, Lfr/acetelecom/vc/d$d;->g()V

    :cond_0
    iput-object p1, p0, Lfr/acetelecom/vc/d;->m:Ljava/lang/String;

    iput-boolean p2, p0, Lfr/acetelecom/vc/d;->n:Z

    iput-boolean p3, p0, Lfr/acetelecom/vc/d;->o:Z

    sget-boolean v0, Lfr/acetelecom/vc/d;->f:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lfr/acetelecom/vc/d;->g:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lfr/acetelecom/vc/d;->g:Z

    iget-object v0, p0, Lfr/acetelecom/vc/d;->b:Landroid/content/Context;

    new-instance v1, Lfr/acetelecom/vc/d$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lfr/acetelecom/vc/d$1;-><init>(Lfr/acetelecom/vc/d;Ljava/lang/String;ZZ)V

    invoke-static {v0, v1}, Lcom/twilio/client/Twilio;->initialize(Landroid/content/Context;Lcom/twilio/client/Twilio$InitListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lfr/acetelecom/vc/d;->b(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lfr/acetelecom/vc/d;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/acetelecom/vc/d;->h:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lfr/acetelecom/vc/d;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/d;->m:Ljava/lang/String;

    iget-boolean v1, p0, Lfr/acetelecom/vc/d;->n:Z

    iget-boolean v2, p0, Lfr/acetelecom/vc/d;->o:Z

    invoke-virtual {p0, v0, v1, v2}, Lfr/acetelecom/vc/d;->a(Ljava/lang/String;ZZ)V

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lfr/acetelecom/vc/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfr/acetelecom/vc/d;->c()V

    iget-object v0, p0, Lfr/acetelecom/vc/d;->i:Lcom/twilio/client/Device;

    invoke-virtual {v0, p1, p0}, Lcom/twilio/client/Device;->connect(Ljava/util/Map;Lcom/twilio/client/ConnectionListener;)Lcom/twilio/client/Connection;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Couldn\'t create new connection"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/d$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lfr/acetelecom/vc/d;->l:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lfr/acetelecom/vc/d;->l:Z

    invoke-direct {p0}, Lfr/acetelecom/vc/d;->h()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v0, "com.twilio.client.Device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Device;

    const-string v1, "com.twilio.client.Connection"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/twilio/client/Connection;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.twilio.client.Device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "com.twilio.client.Connection"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/d;->j:Lcom/twilio/client/Connection;

    if-eqz v0, :cond_1

    const-string v0, "BasicPhone"

    const-string v3, "A pending connection already exists"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/twilio/client/Connection;->ignore()V

    move v0, v2

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lfr/acetelecom/vc/d;->j:Lcom/twilio/client/Connection;

    iget-object v0, p0, Lfr/acetelecom/vc/d;->j:Lcom/twilio/client/Connection;

    invoke-interface {v0, p0}, Lcom/twilio/client/Connection;->setConnectionListener(Lcom/twilio/client/ConnectionListener;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfr/acetelecom/vc/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    invoke-interface {v0}, Lcom/twilio/client/Connection;->disconnect()V

    :goto_0
    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    invoke-interface {v0}, Lfr/acetelecom/vc/d$a;->c_()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "VCPHONE"

    const-string v1, "?????????????????? not connected ????????????????????? "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    invoke-interface {v0}, Lcom/twilio/client/Connection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Connection$State;->CONNECTED:Lcom/twilio/client/Connection$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/twilio/client/Connection$State;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    invoke-interface {v0}, Lcom/twilio/client/Connection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twilio/client/Connection$State;->DISCONNECTED:Lcom/twilio/client/Connection$State;

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/d;->j:Lcom/twilio/client/Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnected(Lcom/twilio/client/Connection;)V
    .locals 1

    invoke-direct {p0}, Lfr/acetelecom/vc/d;->h()V

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    invoke-interface {v0}, Lfr/acetelecom/vc/d$a;->c()V

    :cond_0
    return-void
.end method

.method public onConnecting(Lcom/twilio/client/Connection;)V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    invoke-interface {v0}, Lfr/acetelecom/vc/d$a;->b()V

    :cond_0
    return-void
.end method

.method public onDisconnected(Lcom/twilio/client/Connection;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    invoke-interface {v0}, Lfr/acetelecom/vc/d$a;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/d;->j:Lcom/twilio/client/Connection;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lfr/acetelecom/vc/d;->j:Lcom/twilio/client/Connection;

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    invoke-interface {v0}, Lfr/acetelecom/vc/d$a;->b_()V

    goto :goto_0
.end method

.method public onDisconnected(Lcom/twilio/client/Connection;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/d;->k:Lcom/twilio/client/Connection;

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->d:Lfr/acetelecom/vc/d$a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/d$a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onPresenceChanged(Lcom/twilio/client/Device;Lcom/twilio/client/PresenceEvent;)V
    .locals 0

    return-void
.end method

.method public onStartListening(Lcom/twilio/client/Device;)V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/d;->e:Lfr/acetelecom/vc/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->e:Lfr/acetelecom/vc/d$b;

    invoke-interface {v0}, Lfr/acetelecom/vc/d$b;->f()V

    :cond_0
    return-void
.end method

.method public onStopListening(Lcom/twilio/client/Device;)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/d;->e:Lfr/acetelecom/vc/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->e:Lfr/acetelecom/vc/d$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/d$b;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onStopListening(Lcom/twilio/client/Device;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/d;->e:Lfr/acetelecom/vc/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d;->e:Lfr/acetelecom/vc/d$b;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/d$b;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public receivePresenceEvents(Lcom/twilio/client/Device;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
